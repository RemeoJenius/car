package com.jenius.recommend.car.enums;

import lombok.Getter;

/**
 * Jenius
 * Created in 2018/3/17 下午3:30
 */
@Getter
public enum UserStatusEnum {

    /** 用户角色0代表普通用户*/
    COMMON_USER(0,"普通用户"),
    /** 用户角色1代表管理员*/
    ADMIN(1,"管理员")
    ;

    private Integer code;

    private String message;

    UserStatusEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
