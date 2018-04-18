package com.jenius.recommend.car.enums;

import lombok.Data;
import lombok.Getter;

/**
 * Jenius
 * Created in 2018/3/17 下午10:18
 */
@Getter
public enum ResultEnum {
    SUCCESS(0,"成功"),
    USER_NOT_EXIST(1,"用户不存在"),
    PASSWORD_NOT_CORRECT(2,"密码不正确"),
    MAIL_SEND_FAILURE(3,"邮件发送失败"),
    MAIL_CODE_INCORRECT(4,"邮箱验证码不正确"),
    USER_IS_EXIST(5,"用户已存在"),
    PARAM_ERROR(6,"参数不正确"),
    LOGOUT_SUCCESS(7,"登出成功"),
    LOGOUT_FAILURE(8,"登出失败"),
    LOGIN_EXCEPTION(9,"登录异常，请重新登录"),
    /** 不是管理员*/
    AUTHORITY_EXCEPTION(10,"权限异常"),
    /** 返回数据库结果不正确*/
    DATABASE_RESULT_ERROR(11,"数据库返回结果错误"),
    DELETE_CAR_FAILURE(12,"汽车删除失败"),
    UPDATE_CAR_FAILURE(13,"汽车更新失败"),
    ADD_CAR_FAILURE(13,"汽车添加失败"),
    FILE_NOT_EMPTY(14,"文件不能为空"),
    FILE_UPLOAD_FAILED(15,"文件上传失败")
    ;

    private Integer code;

    private String massage;

    ResultEnum(Integer code, String massage) {
        this.code = code;
        this.massage = massage;
    }
}
