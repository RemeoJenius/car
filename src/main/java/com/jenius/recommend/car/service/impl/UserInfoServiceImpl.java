package com.jenius.recommend.car.service.impl;

import com.jenius.recommend.car.dataobject.UserInfo;
import com.jenius.recommend.car.enums.ResultEnum;
import com.jenius.recommend.car.exception.CarException;
import com.jenius.recommend.car.repository.UserInfoRepository;
import com.jenius.recommend.car.service.UserInfoService;
import com.jenius.recommend.car.util.ParseMD5Util;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Jenius
 * Created in 2018/3/17 下午3:48
 */
@Service
@Slf4j
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoRepository repository;
    @Override
    public void save(UserInfo userInfo) {
        repository.save(userInfo);
    }

    @Override
    public UserInfo getUserInfoByUserName(String userName) {
        return repository.findByUserName(userName);
    }

    @Override
    public UserInfo getUserInfoByUserId(Integer userId) {
        return repository.findOne(userId);
    }

    @Override
    public UserInfo checkUser(UserInfo userInfo) {
        UserInfo result = getUserInfoByUserName(userInfo.getUserName());
        userInfo.setPassword(ParseMD5Util.parseStrToMd5L32(userInfo.getPassword()));
        boolean userExist =  result != null;
        if (userExist){
            boolean passwordCorrect = (userInfo.getPassword()).equals(result.getPassword());
            if (passwordCorrect) {
                return result;
            }else {
                log.error("【密码校验】密码不正确");
                throw new CarException(ResultEnum.PASSWORD_NOT_CORRECT);
            }
        }
        log.error("【查询用户】用户不存在{}",userInfo.getUserName());
        throw new CarException(ResultEnum.USER_NOT_EXIST);
    }

    @Override
    public UserInfo checkAdmin(UserInfo userInfo) {
        UserInfo result = getUserInfoByUserName(userInfo.getUserName());
        userInfo.setPassword(ParseMD5Util.parseStrToMd5L32(userInfo.getPassword()));
        boolean userExist =  result != null;
        if (userExist){
            boolean passwordCorrect = (userInfo.getPassword()).equals(result.getPassword());
            if (passwordCorrect) {
                boolean isStatus = result.getStatus().equals(1);
                if (isStatus) {
                    return result;
                }
                log.error("【您没有管理员权限】{}",userInfo);
                throw new CarException(ResultEnum.PASSWORD_NOT_CORRECT);
            }else {
                log.error("【密码校验】密码不正确{}",userInfo);
                throw new CarException(ResultEnum.PASSWORD_NOT_CORRECT);
            }
        }
        log.error("【查询用户】用户不存在{}",userInfo.getUserName());
        throw new CarException(ResultEnum.USER_NOT_EXIST);
    }

    @Override
    public UserInfo getUserInfoByPhone(String phone) {
        return repository.findByPhone(phone);
    }
}
