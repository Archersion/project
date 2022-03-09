<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"  %>
<% String basePath = request.getContextPath(); %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<%=basePath%>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<%=basePath%>/static/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=basePath%>/static/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<%=basePath%>/static/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect. -->
    <link rel="stylesheet" href="<%=basePath%>/static/dist/css/skins/skin-blue.min.css">
    <link rel="stylesheet" href="<%=basePath%>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="<%=basePath%>/static/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">



    <script src="<%=basePath%>/static/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="<%=basePath%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<%=basePath%>/static/dist/js/adminlte.min.js"></script>
    <!-- DataTables -->
    <script src="<%=basePath%>/static/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<%=basePath%>/static/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="<%=basePath%>/static/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="<%=basePath%>/static/bower_components/fastclick/lib/fastclick.js"></script>

<script type="text/javascript">
    $(function (){
        //选择带有menu-open样式的dom，去除样式menu-open
        $(".sidebar-menu").filter(".menu-open").removeClass("menu-open");
        //选择带有active样式的dom，去除样式active
        $(".sidebar-menu").filter(".active").removeClass("active");

        let a;
        //获取浏览器的访问url
        let location=window.location;

        $(".treeview-menu a").each(function (i){
            let href = $(this).attr("href");
            if(href == location.pathname){
                a = $(this);
            }
        });

        if (a){//a存在
            a.parent().addClass("active");
            a.parent().parent().parent().addClass("active");
            a.parent().parent().parent().addClass("menu-open");
            //去除样式
            a.parent().parent().attr("style","");
        }
        //console.info(location);




    });
</script>