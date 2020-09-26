package com.hnguigu.controller;

import com.hnguigu.service.UserInfoService;
import com.hnguigu.vo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserInfoController {

    @Autowired
    UserInfoService userInfoService;

    //登录（同步）
    @RequestMapping("/login1.action")
    public ModelAndView login1(UserInfo userInfo){
        ModelAndView modelAndView=new ModelAndView();
        //System.out.println(userInfo);
        UserInfo userInfo1=userInfoService.login(userInfo);

        if(userInfo1!=null){
            modelAndView.addObject("msg","登录成功");
            modelAndView.setViewName("queryuser1.action");
        }else{
            modelAndView.addObject("msg","登录失败");
            modelAndView.setViewName("login1.jsp");
        }

        return modelAndView;
    }
    //登录（异步）
    @RequestMapping("/login2.action")
    @ResponseBody
    public Map<String,String> login2(UserInfo userInfo){
        Map<String,String> map=new HashMap<>();
        System.out.println(userInfo);
        UserInfo userInfo1=userInfoService.login(userInfo);

        if(userInfo1!=null){
            map.put("msg","登录成功");
            map.put("code","1");
        }else{
            map.put("msg","登录失败");
            map.put("code","0");
        }

        return map;
    }

    //查询（同步）
    @RequestMapping("/queryuser1.action")
    public ModelAndView queryUser1(UserInfo userInfo){
        ModelAndView modelAndView=new ModelAndView();

        List<UserInfo> list=userInfoService.queryUser(userInfo);
        //System.out.println(list);

        modelAndView.addObject("list",list);
        modelAndView.setViewName("index1.jsp");

        return modelAndView;
    }

    //查询（异步）
    @RequestMapping("/queryuser2.action")
    @ResponseBody
    public List<UserInfo> queryUser2(UserInfo userInfo){

        List<UserInfo> list=userInfoService.queryUser(userInfo);

        return list;
    }

    //注册(同步)
    @RequestMapping("/adduser1.action")
    public ModelAndView addUser1(UserInfo userInfo){
        ModelAndView modelAndView=new ModelAndView();

        int num=userInfoService.addUser(userInfo);

        if(num==1){
            modelAndView.addObject("msg","注册成功");
            modelAndView.setViewName("login1.jsp");
        }else{
            modelAndView.addObject("msg","注册失败");
            modelAndView.setViewName("adduser1.jsp");
        }

        return modelAndView;
    }

    //注册(异步)
    @RequestMapping("/adduser2.action")
    @ResponseBody
    public Map<String,String> addUser2(UserInfo userInfo){
        Map<String,String> map=new HashMap<>();

        int num=userInfoService.addUser(userInfo);

        if(num==1){
            map.put("msg","注册成功");
            map.put("code","1");
        }else{
            map.put("msg","注册失败");
            map.put("code","0");
        }

        return map;
    }
}
