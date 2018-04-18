package com.jenius.recommend.car.dataobject;

import com.jenius.recommend.car.enums.UserStatusEnum;
import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

/**
 * Jenius
 * Created in 2018/3/17 下午3:17
 */
@Data
@Entity
@DynamicUpdate
public class UserInfo {
    @Id
    @GeneratedValue
    private Integer userId;

    /** 用户名. */
    private String userName;

    /** 用户密码. */
    private String password;

    /** 手机号. */
    private String phone;

    /** 用户状态. */
    private Integer status = UserStatusEnum.COMMON_USER.getCode();

    /** 创建时间. */
    private Date createTime;

    /** 更新时间. */
    private Date updateTime;

    @Override
    public String toString() {
        return "UserInfo{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", status=" + status +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
