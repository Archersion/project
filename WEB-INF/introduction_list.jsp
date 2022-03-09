<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String basePath = request.getContextPath(); %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>小组介绍</title>
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
        .test{
            background-image:url(<%=basePath%>/static/dist/img/88119e1b679223902167cea8e9ece38cd5e32b67.jpg);
        }
    </style>

</head>
<body class="hold-transition login-page ">
<div class="login-box">
    <div class="login-logo">
        <b>群玉阁重建项目</b><br>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body" >
            <p class="login-box-msg"><b>小组成员介绍</b></p>
        <form action="login" method="post">
            <div class="form-group has-feedback">
                <div class="col-sm-3">
                <b>组长：</b>
                </div>
                <div class="col-sm-3">陈蒙</div>
                <div class="col-sm-3">
                    16622134939
                </div>
            </div><br>
            <div class="form-group has-feedback">
                <div class="col-sm-3">
                <b>组员：</b>
                </div>
                <div class="col-sm-3">
                    蔡双泉
                </div>
                <div class="col-sm-3">
                    18522162788
                </div>
                <br>
                <div class="col-sm-3">
                </div>
                <div class="col-sm-3">陈少聪</div>
                <div class="col-sm-3">
                    13672152050
                </div><br>
                <div class="col-sm-3">
                </div>
                <div class="col-sm-3">东海强</div>
                <div class="col-sm-3">
                    18522532439
                </div><br><br>
                <div class="row">
                    <!-- /.col -->
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4 pull-left" >
                        <a href="zhujiemian" class="btn btn-default btn-flat">返回主界面</a>
                    </div>
                    <div class="col-sm-4"></div>
                    <!-- /.col -->
                </div>
            </div>
        </form>
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="<%=basePath%>/static/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<%=basePath%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<%=basePath%>/static/plugins/iCheck/icheck.min.js"></script>
<script>
    $("#btn").click(function (){

    })
</script>
</body>
</html>
