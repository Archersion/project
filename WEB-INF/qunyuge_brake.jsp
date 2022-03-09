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
    <title>群玉阁破灭</title>
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
                <small>群玉阁破灭</small>
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
                            <i class="fa fa-globe"></i> 漩涡之魔神
                            <small class="pull-right">日期：2020/11/12</small>
                        </h2>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- info row -->
                <div class="row invoice-info">
                    <div class=" invoice-col image">
                        <div class="thumbnail">
                            <img src="<%=basePath%>/static/dist/img/moshen.jpg" style="width: 1000px;height: 500px">
                        </div>
                    </div>
                    <div class="col-sm-4 invoice-col">
                        <strong>来源事件</strong>
                        <address>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp在岩王帝君陨落以后，璃月就发生了一系列的事<br><br>
                            情，当然，那些蠢蠢欲动的愚人众们也在准备搞事<br><br>
                            情。因为岩王的陨落，璃月的仙人们已经来找七星的<br><br>
                            麻烦了，在混乱的时候 ，公子偷偷来到岩王遗体藏身<br><br>
                            神之心的地方。但是被旅行者阻止，而公子使用复制<br><br>
                            的“百无禁忌录”的地方准备偷走将“漩涡之魔神”给放<br><br>
                            了出来，从而群玉阁遭到了危机。
                        </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 invoice-col">
                        <strong>公子——达达利亚</strong>
                        <address>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp秘密，自极冬而来。<br>
                            你大可信任他，但不必钟情于他，他向往的那种战斗并非常<br>
                            人所想，而是极致又高危的体验。温暖的朋友、无情的杀手<br>
                            ...因为其身份立场变化莫测，人们很难找到一个精准的名字<br>
                            来称呼他。 但在某些私密时刻，他会卸去所有头衔，卸去沾<br>
                            满阴谋的外壳，成为自己。他虽然是愚人众执行官第十一位,<br>
                            但是他私下是个爱护弟弟的好哥哥。<br>
                            他成为执行官只是为了自己可以变得更强，他只是在接受至<br>
                            冬国女王的任务而办事。他没有反派和正派可言，对他来说,<br>
                            战斗才是本身目的。<br>
                        </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-3 invoice-col">
                            <img src="<%=basePath%>/static/dist/img/huimie.jpg" style="height: 220px;width: 300px">
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
