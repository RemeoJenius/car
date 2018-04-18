package com.jenius.recommend.car.service.impl;

import com.jenius.recommend.car.dataobject.UserInfo;
import com.jenius.recommend.car.service.UserInfoService;
import com.jenius.recommend.car.util.ParseMD5Util;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Jenius
 * Created in 2018/3/17 下午4:01
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserInfoServiceImplTest {

    @Autowired
    private UserInfoService userInfoService;
    @Test
    public void save() {
        UserInfo userInfo = new UserInfo();
        userInfo.setUserName("jenius");
        userInfo.setPassword(ParseMD5Util.parseStrToMd5L32("jenius"));
        userInfo.setPhone("13812345678");
        userInfoService.save(userInfo);
    }



    @Test
    public void getUserInfoByUserName() {
        UserInfo userInfo = userInfoService.getUserInfoByUserName("jenius");
        Assert.assertNotNull(userInfo);
    }


}