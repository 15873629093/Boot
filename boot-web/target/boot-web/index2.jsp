
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
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <script type="text/javascript" src="js/bootstrap-table.js"></script>
    <script type="text/javascript" src="js/bootstrap-table-zh-CN.js"></script>
    <script type="text/javascript" src="js/bootstrap-table-locale-all.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap-table.css">
    <style>
        .table-hover>tbody>tr:hover{
            background-color:skyblue;
        }
    </style>
</head>
<body>
<%--<div class="container">
    <table id="t1" class="table table-striped table-hover table-bordered">
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
<script type="text/javascript">
    $(function () {
        $.get("queryuser2.action",function (data) {
            for(var i=0;i<data.length;i++){
                $("#t1 tbody").append("<tr><td>"+data[i].uid+"</td><td>"
                                    +data[i].uname+"</td><td>"
                                    +data[i].upwd+"</td><td>"
                                    +data[i].uage+"</td><td>"
                                    +data[i].usex+"</td><td>"
                                    +data[i].uweight+"</td><td>"
                                    +data[i].ubirthday+"</td>"+
                                    "<td><a href='#' class='btn btn-default'>编辑<span class='badge'>1</span></a>"+
                    "<a href='#' class='btn btn-default'>删除<span class='badge'>2</span></a></td><tr>")
            }
        },"json")
    })
</script>--%>
<div class="container">
    <form class="form-inline">
        <div class="form-group">
            <label class="control-label" for="uname">用户名</label>
            <input type="text" class="form-control" id="uname" name="uname">
        </div>
    </form>
    <div>
        <table id="table">
        </table>
    </div>

    <div id="toolbar">
        <input type="button" class="btn-default" value="添加" id="adduser">
        <input type="button" class="btn-default" value="编辑" id="updateuser">
        <input type="button" class="btn-default" value="删除" id="deleteuser">
    </div>
</div>

<script type="text/javascript">
    $(function () {

        //1.初始化Table
        var oTable = new TableInit();
        oTable.Init();

        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();
    });
    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#table').bootstrapTable({
                url: 'queryuser2.action',         //请求后台的URL（*）
                method: 'get',                      //请求方式（*）
                toolbar: '#toolbar',               //工具按钮用哪个容器
                striped: true,                      //是否显示行间隔色
                cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,                   //是否显示分页（*）*/
                sortable: false,                     //是否启用排序
                sortOrder: "asc",                   //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,                       //初始化加载第一页，默认第一页
                pageSize: 5,                       //每页的记录行数（*）
                pageList: [5, 10, 15, 20],        //可供选择的每页的行数（*）
                /*  search: true,    */                   //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
                strictSearch: true,
                showColumns: true,                  //是否显示所有的列
                showRefresh: true,                  //是否显示刷新按钮
                minimumCountColumns: 2,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
                height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "uid",                     //每一行的唯一标识，一般为主键列
                showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
                columns: [{
                    checkbox: true
                }, {
                    field: 'uid',
                    title: '编号'
                }, {
                    field: 'uname',
                    title: '用户名'
                }, {
                    field: 'upwd',
                    title: '密码'
                }, {
                    field: 'uage',
                    title: '年龄'
                }, {
                    field: 'usex',
                    title: '性别'
                }, {
                    field: 'uweight',
                    title: '体重'
                }, {
                    field: 'ubirthday',
                    title: '生日'
                }]
            });
        };
        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: params.limit,   //页面大小
                offset: params.offset,  //页码
                uname: $("#uname").val()
            };
            return temp;
        };
        return oTableInit;
    }

    $("#adduser").click(function () {
        window.location="adduser2.jsp"
    })

    $("#updateuser").click(function () {
        // 获取当前行
        var row=$("#table").bootstrapTable('getSelections');
        console.log(row);

        if(row.length==0){
            alert("至少选择一行");
            return;
        }else if(row.length>1){
            alert("只能选择一行");
            return;
        }
    })

    $("#deleteuser").click(function () {
        // 获取当前行
        var row=$("#table").bootstrapTable('getSelections');

        if(row.length==0){
            alert("至少选择一行");
            return;
        }
    })
</script>

</body>
</html>
