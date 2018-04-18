package com.jenius.recommend.car.form;

import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

/**
 * Jenius
 * Created in 2018/3/20 下午9:00
 */
@Data
public class UserForm extends Form{

    @NotEmpty(message = "用户名不能为空")
    private String userName;

    @Length(min=6,message = "密码不能少于6位数")
    private String password;

    @Override
    public String toString() {
        return "UserForm{" +
                "userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
