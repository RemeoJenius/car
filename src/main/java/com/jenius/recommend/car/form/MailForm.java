package com.jenius.recommend.car.form;

import lombok.Data;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Jenius
 * Created in 2018/3/18 下午9:43
 */
@Data
public class MailForm extends Form{

    /** 邮箱.*/
    @NotEmpty(message = "邮箱必填")
    @Email(message = "邮箱格式错误")
    private String mail;

    /** 密码.*/
    @NotEmpty(message = "密码必填")
    private String password;

    private Integer verification;


    @Override
    public String toString() {
        return "MailForm{" +
                "mail='" + mail + '\'' +
                ", password='" + password + '\'' +
                ", verification=" + verification +
                '}';
    }
}
