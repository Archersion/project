<%--
  Created by IntelliJ IDEA.
  User: a6751
  Date: 2020/12/7
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <%@include file="template/herder_common.jsp"%>
    <title>群玉阁由来</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="template/main_herder.jsp"%>
    <%@include file="template/main_sidebar.jsp"%>

    <div class="content-wrapper" style="min-height: 653px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                项目概况
                <small>群玉阁由来</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content container-fluid">
            <section class="invoice">
                <!-- title row -->
                <div class="row">
                    <div class="col-xs-12">
                        <h2 class="page-header">
                            <i class="fa fa-globe"></i> 群玉阁
                            <small class="pull-right">日期：2020/9/18</small>
                        </h2>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- info row -->
                <div class="row invoice-info">
                    <div class=" invoice-col image">
                        <div class="thumbnail">
                            <img src="<%=basePath%>/static/dist/img/qunyugedetu.jpg" >
                        </div>
                    </div>
                    <div class="col-sm-4 invoice-col">
                        <strong>设定背景</strong>
                        <address>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp盘旋于璃月港上方的空中宫殿——群<br><br>
                            玉阁，也是“璃月七星”中“天权”凝光的私人<br><br>
                            行宫。无论是极尽辉煌的外表，还是那能<br><br>
                            俯瞰璃月的高度，都在不容辩驳地昭示着<br><br>
                            凝光在璃月港商贾中的鳌首之位。<br><br>
                        </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 invoice-col">
                        <strong>掩月天权——凝光</strong>
                        <address>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp凝光是掌管重权的“璃月七星”之一，居天权星之位，<br>
                            识人心，擅话术 。即使在人人经商的璃月港，她也是首<br>屈一指的大商人。<br>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp每个见过凝光的人都被她惊人的洞察力与过人的头脑<br>
                            折服。不仅如此，凝光的作风也极为独特。她斥巨资搜集<br>
                            来大量浮空石制成基盘，又在其上建造出一座空前华美的<br>
                            宫殿。浮空石托起空中幻城，使之终年悬浮在璃月港上空。<br>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp凝光曾言：“群玉阁是我第二重要的东西。第一？第一<br>
                            自然是摩拉。”<br>
                        </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-3 pull-right invoice-col">
                            <img src="<%=basePath%>/static/dist/img/凝光主界面.jpg" style="height: 220px;width: 220px">
                    </div>
                    <!-- /.col -->
                </div>
            </section>
        </section>
        <!-- /.content -->
    </div>


    <%@include file="template/main_footer.jsp"%>
    <%@include file="template/control_sidebar.jsp"%>
    </div>
</body>
</html>
