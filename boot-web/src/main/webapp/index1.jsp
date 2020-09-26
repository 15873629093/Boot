<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 王欣欣
  Date: 2020/9/16
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户表格</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <style>
        .table-hover>tbody>tr:hover{
            background-color:skyblue
        }
    </style>
</head>
<body>
<div class="container">
    <table class="table table-striped table-hover table-bordered">
        <thead>
        <tr>
            <th>编号</th>
            <th>用户名</th>
            <th>密码</th>
            <th>年龄</th>
            <th>性别</th>
            <th>体重</th>
            <th>生日</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="user">
                <tr>
                    <td>${user.uid }</td>
                    <td>${user.uname }</td>
                    <td>${user.upwd }</td>
                    <td>${user.uage }</td>
                    <td>${user.usex }</td>
                    <td>${user.uweight }</td>
                    <td>${user.ubirthday }</td>
                    <td>
                        <a href="#" class="btn btn-default">编辑<span class="badge">1</span></a>
                        <a href="#" class="btn btn-default" onclick="return confirm('确实要删除该会员资料吗？');">删除<span class="badge">2</span></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- 分页 -->
    <nav>
        <ul class="pagination">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
</div>

</body>
</html>
