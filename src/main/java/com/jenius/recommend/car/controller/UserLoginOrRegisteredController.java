package com.jenius.recommend.car.controller;

import com.jenius.recommend.car.constant.CookieConstant;
import com.jenius.recommend.car.constant.RedisConstant;
import com.jenius.recommend.car.exception.CarParameterException;
import com.jenius.recommend.car.form.Form;
import com.jenius.recommend.car.form.UserForm;
import com.jenius.recommend.car.util.CookieUtil;
import com.jenius.recommend.car.vo.ResultVO;
import com.jenius.recommend.car.form.MailForm;
import com.jenius.recommend.car.dataobject.UserInfo;
import com.jenius.recommend.car.enums.ResultEnum;
import com.jenius.recommend.car.exception.CarException;
import com.jenius.recommend.car.service.impl.MailServiceImpl;
import com.jenius.recommend.car.service.impl.UserInfoServiceImpl;
import com.jenius.recommend.car.util.KeyUtil;
import com.jenius.recommend.car.util.ParseMD5Util;
import com.jenius.recommend.car.util.ResultVOUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * Jenius
 * Created in 2018/3/17 上午10:49
 */
@Api(tags = "用户登录功能操作测试接口")
@Controller
@RequestMapping("/user")
@Slf4j
public class UserLoginOrRegisteredController {

    @Autowired
    private UserInfoServiceImpl userInfoService;

    @Autowired
    private MailServiceImpl mailService;

    private final String USER_LOGIN = "用户登录";

    private final String USER_REGISTERED = "用户注册";

    @Autowired
    private StringRedisTemplate redisTemplate;

    private Map<String,Object> map = new HashMap<>();

    /**
     * 登录页面
     * @return
     */
    @GetMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("user/login");
    }



    /**
     * 登录信息校验
     * @param userForm
     * @param bindingResult
     * @param response
     * @return
     */
    @ApiOperation(value="用户登录信息校验")
    @ExceptionHandler(CarException.class)
    @PostMapping("/login/check")
    @ResponseBody
    public ResultVO login(@Validated UserForm userForm, BindingResult bindingResult,
                          HttpServletResponse response) {
        checkParameter(bindingResult, userForm, USER_REGISTERED);
        UserInfo userInfo = new UserInfo();
        BeanUtils.copyProperties(userForm,userInfo);
        try {
            userInfoService.checkUser(userInfo);
            // 设置token至redis
            String token = UUID.randomUUID().toString();
            Integer expire = RedisConstant.EXPIRE;
            redisTemplate.opsForValue().set(String.format(RedisConstant.TOKEN_PREFIX,token),userInfo.getUserName(),expire, TimeUnit.SECONDS);
            // 设置token至cookie
            CookieUtil.set(response, CookieConstant.TOKEN,token,expire);
            return ResultVOUtil.success("/car");
        }catch (CarException e) {
            return ResultVOUtil.error(e.getCode(),e.getMessage());
        }
    }

    /**
     * 登出操作
     * @param request
     * @param response
     * @return
     */
    @ApiOperation(value="用户登出接口")
    @GetMapping("/logout")
    @ResponseBody
    public ResultVO logout(HttpServletRequest request,
                           HttpServletResponse response) {
        // 从cookie里查询
        Cookie cookie = CookieUtil.get(request,CookieConstant.TOKEN);
        if (cookie != null) {
            // 清除redis
            redisTemplate.opsForValue().getOperations().delete(String.format(RedisConstant.TOKEN_PREFIX,cookie.getValue()));
            // 清除cookie
            CookieUtil.set(response, CookieConstant.TOKEN, null, 0);
            ResultVO resultVO = new ResultVO();
            resultVO.setCode(ResultEnum.LOGOUT_SUCCESS.getCode());
            resultVO.setMsg(ResultEnum.LOGOUT_SUCCESS.getMassage());
            return resultVO;
        }


        return ResultVOUtil.error(ResultEnum.LOGOUT_FAILURE.getCode(),ResultEnum.LOGOUT_FAILURE.getMassage());
    }

    /**
     * 邮箱注册
     * @param mailForm
     * @param bindingResult
     * @return
     */
    @ApiOperation(value="用户注册接口")
    @PostMapping("/registered/mail")
    @ResponseBody
    public ResultVO registeredByMail(@Validated MailForm mailForm,
                                 BindingResult bindingResult) {

        checkParameter(bindingResult, mailForm, USER_REGISTERED);
        boolean nameIsExist = userInfoService.getUserInfoByUserName(mailForm.getMail()) != null;
        if (nameIsExist) {
            return ResultVOUtil.error(ResultEnum.USER_IS_EXIST.getCode(),ResultEnum.USER_IS_EXIST.getMassage());
        }
        if (map.get(mailForm.getMail()) != null && mailForm.getVerification() != null) {
            try {
                boolean mailVerificationCheck = map.get(mailForm.getMail()).equals((mailForm.getVerification()).toString());
                if (mailVerificationCheck) {
                    UserInfo userInfo = new UserInfo();
                    userInfo.setUserName(mailForm.getMail());
                    userInfo.setPassword(ParseMD5Util.parseStrToMd5L32(mailForm.getPassword()));
                    userInfoService.save(userInfo);
                    return ResultVOUtil.success(null);
                }
                return ResultVOUtil.error(ResultEnum.MAIL_CODE_INCORRECT.getCode(),ResultEnum.MAIL_CODE_INCORRECT.getMassage());
            } catch (CarException e) {
                return ResultVOUtil.error(e.getCode(), e.getMessage());
            }
        }
        if (mailForm.getVerification() == null) {
            String subject = "验证码";
            String content = ""+ KeyUtil.genUniqueKey();
            try {
                mailService.sendSimpleMail(mailForm.getMail(),subject,content);
                map.put(mailForm.getMail(),content);
                return ResultVOUtil.success(null);
            } catch (MessagingException e) {
                return ResultVOUtil.error(ResultEnum.MAIL_SEND_FAILURE.getCode(),e.getMessage());
            }
        }
        return ResultVOUtil.error(ResultEnum.MAIL_CODE_INCORRECT.getCode(),ResultEnum.MAIL_CODE_INCORRECT.getMassage());
    }


    /**
     * 将参数验证抽象出来
     * @param bindingResult
     * @param form
     * @param message
     */
    private void checkParameter(BindingResult bindingResult, Form form, String message) {
        if (bindingResult.hasErrors()) {
            log.error("【" + message + "】参数不正确 {}",form);
            throw new CarParameterException();
        }

    }
}
