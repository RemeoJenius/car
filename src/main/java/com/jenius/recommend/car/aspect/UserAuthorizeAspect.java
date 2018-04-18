package com.jenius.recommend.car.aspect;

import com.jenius.recommend.car.constant.CookieConstant;
import com.jenius.recommend.car.constant.RedisConstant;
import com.jenius.recommend.car.exception.CarAuthorizeException;
import com.jenius.recommend.car.util.CookieUtil;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 * Jenius
 * Created in 2018/3/25 上午7:54
 */
@Aspect
@Component
@Slf4j
public class UserAuthorizeAspect {

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Pointcut("execution(public * com.jenius.recommend.car.controller.UserComment*.*(..))")
    public void userVerify() {}

    @Pointcut("execution(public * com.jenius.recommend.car.controller.AdminLoginController.*(..))")
    public void adminVerify() {}

    @Before("userVerify()")
    public void doVerify() {
        ServletRequestAttributes attributes = (ServletRequestAttributes)RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        // 查询cookie
        Cookie cookie = CookieUtil.get(request, CookieConstant.TOKEN);
        if (cookie == null) {
            log.warn("【登录校验】cookie中查不到token");
            throw new CarAuthorizeException();
        }

        // 去redis里查询
        String tokenValue = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX,cookie.getValue()));
        if (StringUtils.isEmpty(tokenValue)) {
            log.warn("【登录校验】Redis中查不到token");
            throw new CarAuthorizeException();
        }
    }

    @Before("adminVerify()")
    public void doAdminVerify() {
        ServletRequestAttributes attributes = (ServletRequestAttributes)RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        // 查询cookie
        Cookie cookie = CookieUtil.get(request, CookieConstant.TOKEN);
        if (cookie == null) {
            log.warn("【登录校验】cookie中查不到token");
            throw new CarAuthorizeException();
        }

        // 去redis里查询
        String tokenValue = redisTemplate.opsForValue().get(String.format(RedisConstant.ADMIN_TOKEN_PREFIX,cookie.getValue()));
        if (StringUtils.isEmpty(tokenValue)) {
            log.warn("【登录校验】Redis中查不到token");
            throw new CarAuthorizeException();
        }
    }
}
