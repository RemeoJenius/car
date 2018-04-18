package com.jenius.recommend.car.repository;

import com.jenius.recommend.car.dataobject.UserInfo;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Jenius
 * Created in 2018/3/17 下午3:17
 */
public interface UserInfoRepository extends JpaRepository<UserInfo,Integer>{

    UserInfo findByUserName(String userName);

    UserInfo findByPhone(String phone);
}
