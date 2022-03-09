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
    <title>重建群玉阁</title>
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
                <small>重建群玉阁</small>
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
                            <i class="fa fa-globe"></i> 璃月
                            <small class="pull-right">日期：2020/12/18</small>
                        </h2>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- info row -->
                <div class="row invoice-info">
                    <div class=" invoice-col image">
                        <div class="thumbnail">
                            <img src="<%=basePath%>/static/dist/img/璃月.jpg" >
                        </div>
                    </div>
                    <div class="col-sm-4 invoice-col">
                        <strong>经济支柱</strong>
                        <address>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp作为“璃月七星”的居住地，当然也是<br><br>
                            主要的经济来源，同时也是作为重建群玉阁的因素。<br><br>
                            尽管岩王帝君已陨落，群玉阁已被漩涡之魔神毁掉，<br><br>
                            但是这依然不影响凝光作为“璃月七星”中“天权”的影<br><br>
                            响力，她依然可能靠着自己的努力和商业头脑来重<br><br>
                            建群玉阁。
                        </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 invoice-col">
                        <strong>尘世闲游——钟离</strong>
                        <address>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp钟离，本为原来已陨落的岩王帝君，但是因一些不可抗力因素<br>
                            他已人类的模样在璃月现身，但是并没有人知道他是原来的岩王帝君。<br>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp韬玉之石，可明八荒;灿若天星，纵横无双 。<br>
                            &nbsp&nbsp&nbsp&nbsp「漫长的岁月中，他已与无数人相遇，还将和无数人相逢。」<br>
                            &nbsp&nbsp&nbsp&nbsp「正所谓：流水易转，山石不移。」<br>
                            作为璃月的岩神，也有摩拉克斯之称。但因神力已经消失，所以<br>
                            早已无法空手出摩拉。但是他依然听最红火的戏，逗最清亮的画眉。吃穿用度<br>
                            样样精细，唯有付钱一事不在心中。<br>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp一手交钱一手交货早已是尘世的规矩。活在现今的人，又怎会不懂得世间真理呢?<br>
                            莫非时光太久，磨去了他心中的人间琐事?亦或是不染凡尘，行走世间亦如踏步云上？<br>
                        </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-3 pull-right invoice-col">
                            <img src="<%=basePath%>/static/dist/img/钟离.JPG" style="height: 250px;width: 220px">
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
