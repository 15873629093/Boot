package com.hnguigu.service.impl;

import com.hnguigu.dao.UserInfoDao;
import com.hnguigu.service.UserInfoService;
import com.hnguigu.vo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    UserInfoDao userInfoDao;

    @Override
    public UserInfo login(UserInfo userInfo) {
        return userInfoDao.login(userInfo);
    }

    @Override
    public int addUser(UserInfo userInfo) {
        return userInfoDao.addUser(userInfo);
    }

    @Override
    public List<UserInfo> queryUser(UserInfo userInfo) {
        return userInfoDao.queryUser(userInfo);
    }
}
