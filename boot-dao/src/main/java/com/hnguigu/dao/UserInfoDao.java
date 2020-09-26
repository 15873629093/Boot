package com.hnguigu.dao;

import com.hnguigu.vo.UserInfo;

import java.util.List;

public interface UserInfoDao {

    //登录
    public UserInfo login(UserInfo userInfo);

    //注册
    public int addUser(UserInfo userInfo);

    //通过条件查询
    public List<UserInfo> queryUser(UserInfo userInfo);

    //批量删除
    public int deleteUser(int[] uid);
}
