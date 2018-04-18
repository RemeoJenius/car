package com.jenius.recommend.car.service;

import com.jenius.recommend.car.dataobject.UserInfo;
import org.springframework.stereotype.Service;

/**
 * Jenius
 * Created in 2018/3/17 下午3:47
 */
public interface UserInfoService {

    void save(UserInfo userInfo);

    UserInfo getUserInfoByUserName(String userName);

    UserInfo getUserInfoByUserId(Integer userId);

    UserInfo checkUser(UserInfo userInfo);

    UserInfo getUserInfoByPhone(String phone);

    UserInfo checkAdmin(UserInfo userInfo);
}
