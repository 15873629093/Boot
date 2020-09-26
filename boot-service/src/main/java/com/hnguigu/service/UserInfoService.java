package com.hnguigu.service;

import com.hnguigu.vo.UserInfo;

import java.util.List;

public interface UserInfoService {

    //登录
    public UserInfo login(UserInfo userInfo);

    //注册
    public int addUser(UserInfo userInfo);

    //通过条件查询
    public List<UserInfo> queryUser(UserInfo userInfo);
}
