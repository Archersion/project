<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String basePath = request.getContextPath(); %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登录界面</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<%=basePath%>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=basePath%>/static/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<%=basePath%>/static/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<%=basePath%>/static/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <%--    颜色--%>
    <link rel="stylesheet" href="<%=basePath%>/static/plugins/iCheck/square/blue.css">
    <style>
        .test {
            background-image: url(<%=basePath%>/static/dist/img/blackground/背景.jpg);
            /*width: 100%;
            height: 100%;*/
            background-repeat: no-repeat;
            background-size:100% 100%;
        }
    </style>

</head>
<body class="hold-transition login-page test">
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="col-sm-2"></div>
<%--按钮--%>
<div class="col-sm-2">
    <button class="btn btn-primary" type="button" data-toggle="collapse"
            data-target="#collapseExample" aria-expanded="false"
            aria-controls="collapseExample" style="width: 200px">
        登录
    </button>
    <div class="collapse" id="collapseExample">
        <div class="login-box well">
            <div class="login-logo">
                <b>群玉阁重建项目</b><br>

            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">来点摩拉！救救群玉阁！</p>
                <form action="login" method="post" id="formLogin">
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" name="username" id="inputUsername" placeholder="用户名">
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" name="password" id="inputPassword" placeholder="密码">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <div class="checkbox icheck">
                                <label>
                                    <div class="icheckbox_square-blue" aria-checked="false" aria-disabled="false"
                                         style="position: relative;">
                                        <input type="checkbox"
                                               style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
                                        <ins class="iCheck-helper"
                                             style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                                    </div>
                                    记住我
                                </label>
                            </div>
                        </div>
                    </div>
                    <%
                        String errorMsg1 =(String) request.getAttribute("errorMsg");
                        if (errorMsg1 !=null){%>
                    <font color="red"><%=errorMsg1%></font>
                    <%}%><br>
                    <div class="row">
                        <!-- /.col -->
                        <div class="col-xs-12">
                            <button type="submit" class="btn btn-primary btn-block btn-flat" id="btnLogin">登录</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>
            </div>
            <!-- /.login-box-body -->
        </div>
    </div>
</div>
<div class="col-sm-8"></div>


<!-- jQuery 3 -->
<script src="<%=basePath%>/static/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<%=basePath%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<%=basePath%>/static/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
    $("#btnLogin").click(function (){
        const username = $("#inputUsername").val();
        const password =$("#inputPassword").val();
        let errorMsg ="";
        if (!username){
            errorMsg += "用户名不能为空;"
        }
        if(!password){
            errorMsg += "密码不能为空;"
        }
        if(!errorMsg){
            $("#formLogin").submit();
        }else {
            alert(errorMsg);
        }

    })
</script>
</body>
</html>
