package com.jenius.recommend.car.constant;

/**
 * redis常量
 * Jenius
 * Created in 2018/3/22 下午10:30
 */
public interface RedisConstant {

    String TOKEN_PREFIX = "token_%s";
    /** 过期时间为2小时*/
    Integer EXPIRE = 7200;

    String ADMIN_TOKEN_PREFIX = "admin_token_%s";
}
