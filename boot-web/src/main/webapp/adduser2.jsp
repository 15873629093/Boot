<%--
  Created by IntelliJ IDEA.
  User: 王欣欣
  Date: 2020/9/17
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <style>
        .seperator {
            clear: both;
            height: 10px;
        }

        .form-control{
            width:35%;
        }

        label{
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <h1 class="text-center">注册</h1>
            <div class="seperator"></div>
            <form method="post" class="form-horizontal col-md-12 col-md-offset-3">
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
                <div class="form-group">
                    <label class="control-label col-md-2" for="uage">
                        年龄：
                    </label>
                    <div class="col-md-10">
                        <input type="number" name="uage" id="uage"
                               max="60" min="18" step="3" value="18" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2">
                        性别：
                    </label>
                    <div class="col-md-4">
                        <div class="radio">
                            <label class="col-md-2">
                                <input type="radio" name="usex" value="男"/><span style="font-size: 15px">男</span>
                            </label>
                            <label class="col-md-2">
                                <input type="radio" name="usex" value="女"/><span style="font-size: 15px">女</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2" for="uweight">
                        体重：
                    </label>
                    <div class="col-md-10">
                        <input type="text" name="uweight" id="uweight" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2" for="ubirthday">
                        生日：
                    </label>
                    <div class="col-md-10">
                        <input type="date" name="ubirthday" id="ubirthday" class="form-control"/>
                    </div>
                </div>
                <div class="seperator"></div>
                <div class="row">
                    <input type="button" class="btn btn-info col-md-2 col-md-offset-2" id="zhuce" value="注册">
                </div>
            </form>
        </div>
    </div>
<script type="text/javascript">
    $("#zhuce").click(function () {
        var param={
            url:"adduser2.action",
            dataType:"json",
            success:function (data) {

                if(data.code=="1"){
                    alert(data.msg);
                    window.location="login2.jsp";
                }else if(data.code=="0"){
                    alert(data.msg);
                }
            }
        }
        $("form").ajaxSubmit(param);
    })
</script>
</body>
</html>
