package com.jenius.recommend.car.controller;

import com.jenius.recommend.car.constant.CookieConstant;
import com.jenius.recommend.car.constant.RedisConstant;
import com.jenius.recommend.car.dataobject.UserInfo;
import com.jenius.recommend.car.exception.CarException;
import com.jenius.recommend.car.exception.CarParameterException;
import com.jenius.recommend.car.form.Form;
import com.jenius.recommend.car.form.UserForm;
import com.jenius.recommend.car.service.impl.UserInfoServiceImpl;
import com.jenius.recommend.car.util.CookieUtil;
import com.jenius.recommend.car.util.ResultVOUtil;
import com.jenius.recommend.car.vo.ResultVO;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * Jenius
 * Created in 2018/3/17 上午10:16
 */
@Api(tags = "后台管理员登录测试接口")
@Controller
@RequestMapping("/api")
@Slf4j
public class AdminUserController {

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private UserInfoServiceImpl userInfoService;

    private final String USER_LOGIN = "用户登录";

    /**
     * 登录信息校验
     * @param userForm
     * @param bindingResult
     * @param response
     * @return
     */
    @ExceptionHandler(CarException.class)
    @PostMapping("/admin/login/check")
    @ResponseBody
    public ResultVO login(@Validated UserForm userForm, BindingResult bindingResult,
                          HttpServletResponse response) {
        checkParameter(bindingResult, userForm, USER_LOGIN);
        UserInfo userInfo = new UserInfo();
        BeanUtils.copyProperties(userForm,userInfo);
        try {
            userInfoService.checkAdmin(userInfo);
            // 设置token至redis
            String token = UUID.randomUUID().toString();
            Integer expire = RedisConstant.EXPIRE;
            redisTemplate.opsForValue().set(String.format(RedisConstant.ADMIN_TOKEN_PREFIX,token),userInfo.getUserName(),expire, TimeUnit.SECONDS);
            // 设置token至cookie
            CookieUtil.set(response, CookieConstant.TOKEN,token,expire);
            return ResultVOUtil.success("admin/index");
        }catch (CarException e) {
            return ResultVOUtil.error(e.getCode(),e.getMessage());
        }
    }

    @GetMapping("/login")
    public ModelAndView login(){
        return new ModelAndView("admin/login");
    }


    private void checkParameter(BindingResult bindingResult, Form form, String message) {
        if (bindingResult.hasErrors()) {
            log.error("【" + message + "】参数不正确 {}",form);
            throw new CarParameterException();
        }

    }

}
