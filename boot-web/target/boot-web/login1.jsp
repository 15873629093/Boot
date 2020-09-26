<%--
  Created by IntelliJ IDEA.
  User: 王欣欣
  Date: 2020/9/16
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <style>
        .seperator {
            clear: both;
            height: 30px;
        }

        .form-control{
            width:35%;
        }

        label{
            font-size: 20px;
        }

        #zhuce{
            margin-top: -79px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <h1 class="text-center col-md-12">登录</h1>
        <div class="seperator"></div>
        <form action="login1.action" class="form-horizontal col-md-12 col-md-offset-3">
            <div class="form-group">
                <label class="control-label col-md-2"  for="uname">
                    用户名：
                </label>
                <div class="col-md-10">
                    <input type="text" name="uname" id="uname" class="form-control"/>
                </div>
            </div>
            <div class="seperator"></div>
            <div class="form-group">
                <label class="control-label col-md-2" for="upwd">
                    密码：
                </label>
                <div class="col-md-10">
                    <input type="password" name="upwd" id="upwd" class="form-control"/>
                </div>
            </div>
            <div class="row">
                <input type="submit" class="btn btn-info col-md-2 col-md-offset-1" id="login" value="登录">
            </div>
        </form>
        <div class="seperator"></div>
        <div class="row">
            <input type="button" class="btn btn-info col-md-2 col-md-offset-7" id="zhuce" value="注册">
        </div>

        <span class="text-center col-md-12" style="color:red;font-size: 20px">${msg}</span>
    </div>
</div>
<script type="text/javascript">
    $("#zhuce").click(function () {
        window.location="adduser1.jsp"
    })
</script>
</body>
</html>
