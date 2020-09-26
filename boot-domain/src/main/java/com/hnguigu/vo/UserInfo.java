package com.hnguigu.vo;


import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class UserInfo {
    private Integer uid;
    private String uname;
    private String upwd;
    private Integer uage;
    private String usex;
    private Float uweight;

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date ubirthday;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public Integer getUage() {
        return uage;
    }

    public void setUage(Integer uage) {
        this.uage = uage;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public Float getUweight() {
        return uweight;
    }

    public void setUweight(Float uweight) {
        this.uweight = uweight;
    }

    public Date getUbirthday() {
        return ubirthday;
    }

    public void setUbirthday(Date ubirthday) {
        this.ubirthday = ubirthday;
    }

    public UserInfo() {
    }

    public UserInfo(Integer uid, String uname, String upwd, Integer uage, String usex, Float uweight, Date ubirthday) {
        this.uid = uid;
        this.uname = uname;
        this.upwd = upwd;
        this.uage = uage;
        this.usex = usex;
        this.uweight = uweight;
        this.ubirthday = ubirthday;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", upwd='" + upwd + '\'' +
                ", uage=" + uage +
                ", usex='" + usex + '\'' +
                ", uweight=" + uweight +
                ", ubirthday=" + ubirthday +
                '}';
    }
}
