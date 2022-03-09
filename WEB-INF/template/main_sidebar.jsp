
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<%=basePath%>/static/dist/img/凝光.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p><%=session.getAttribute("username")%></p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>

        <!-- search form (Optional) -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="查询...">
                <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
            </div>
        </form>
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview">
                <a><i class="fa fa-link"></i> <span>项目概况</span>
                    <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<%=basePath%>/permission/zhujiemian">群玉阁由来</a></li>
                    <li><a href="<%=basePath%>/permission/qunyuge-brake">群玉阁破灭</a></li>
                    <li><a href="<%=basePath%>/permission/qunyuge-remake">重建群玉阁</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a><i class="fa fa-link"></i> <span>用户信息界面</span>
                    <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<%=basePath%>/permission/admin">用户信息</a></li>
                </ul>
            </li>
            <li class="treeview">
            <a><i class="fa fa-link"></i> <span>阵营信息页面</span>
                <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
                <li><a href="<%=basePath%>/permission/company">阵营信息</a></li>
            </ul>
        </li>
            <li class="treeview">
                <a><i class="fa fa-link"></i> <span>业务收支界面</span>
                    <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<%=basePath%>/permission/income-record">收款</a></li>
                    <li><a href="<%=basePath%>/permission/payment-record">付款</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a><i class="fa fa-link"></i> <span>商品买卖界面</span>
                    <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<%=basePath%>/permission/buy-record">买入清单</a></li>
                    <li><a href="<%=basePath%>/permission/sale-record">销售清单</a></li>
                </ul>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
