<%@ page import="java.util.List" %>
<%@ page import="com.qunyuge.capital.entity.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="template/herder_common.jsp"%>
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="<%=basePath%>/static/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <script src="<%=basePath%>/static/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="<%=basePath%>/static/bower_components/bootstrap-datepicker/dist/locals/bootstrap-datepicker.zh-CN.min.js"></script>
    <title>购入信息</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="template/main_herder.jsp"%>
    <%@include file="template/main_sidebar.jsp"%>
    <div class="content-wrapper" style="min-height: 653px;">
        <section class="content-header">
            <h1>
                购入信息
                <small>购入列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>
        <section class="content container-fluid">
            <div class="box">

                <!-- /.box-header -->
                <div class="box-body">
                    <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                        <div class="row">
                            <div class="col-sm-6">
                                <button type="button" class="btn btn-info btn-linkedin" id="btnadd" style="width:100px">
                                    <b>新增</b>
                                </button>
                            </div>
                            <div class="col-sm-6">
                                <div class="pull-right">
                                    <div class="box-tools">
                                        <div class="input-group input-group-sm hidden-xs">
                                            <select class="form-control pull-right" id="selectCompanyForSearch">
                                        <%
                                            long companyId =(Long) request.getSession().getAttribute("companyId");
                                            List<Company> companies =(List<Company>) request.getAttribute("companies");
                                                if(companies ==null || companies.size() ==0 || companyId == 0) {%>
                                                <option value="0">全部</option>
                                                <%}
                                                    if(companies !=null && companies.size()>0){
                                                    for (Company company:companies){%>
                                                <option value="<%=company.getId()%>"><%=company.getCompanyName()%></option>
                                               <%}}%>
                                            </select>
                                        </div>
                                        <div class="input-group input-group-sm hidden-xs" style="width: 300px;">
                                            <input type="text" name="table_search" class="form-control pull-right"
                                                   id="inputSearchSubject" placeholder="购入物品名">
                                            <div class="input-group-btn">
                                                <button type="button" class="btn btn-default" id="btnsearch"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <table id="example1" class="table table-bordered table-striped dataTable"
                                       role="grid" aria-describedby="example1_info">
                                    <%--表内数据--%>
                                    <thead>
                                    <tr role="row">
                                        <th>编号</th>
                                        <th>购入方</th>
                                        <th>购入物品名</th>
                                        <th>付款金额(单位：摩拉)</th>
                                        <th>付款日期</th>
                                        <th>备注</th>
                                        <th>操作用户名</th>
                                        <th>创建时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
            <%
                if (companyId <= 0)
                {%>
            <div class="modal fade in" id="modal-info" style="display: none;padding-right: 16px;">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span></button>
                            <h4 class="modal-title">购入信息</h4>
                        </div>
                        <div class="modal-body">
                            <div class="box-body form-horizontal">
                                <input type="hidden" id="inputCompanyId" value="0">
                                <div class="form-group">
                                    <label for="inputPassword" class="col-sm-3 control-label">购入</label>
                                    <div class="col-sm-9">
                                        <select class="form-control" id="selectCompany">
                                            <%
                                                if(companies !=null && companies.size() >0){
                                                    for (Company company:companies){%>
                                            <option value="<%=company.getId()%>">
                                                <%=company.getCompanyName()%>
                                            </option><%
                                                }
                                            }
                                        %>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputSubject" class="col-sm-3 control-label">购入物品名</label>

                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputSubject" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputAmount" class="col-sm-3 control-label">付款金额</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputAmount" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputbuyDate" class="col-sm-3 control-label">付款日期</label>
                                    <div class="col-sm-9">
                                        <div class="input-group date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="inputbuyDate">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputRemark" class="col-sm-3 control-label">备注</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputRemark" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">关闭</button>

                            <button type="button" class="btn btn-primary" id="btnSave"
                                    <%
                                        if(companies==null || companies.size()<=0){%>
                                            disabled
                                        <%}
                                    %>
                            >保存</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <%}%>


        </section>

    </div>

    <%@include file="template/main_footer.jsp"%>
    <%@include file="template/control_sidebar.jsp"%>

</div>

<script type="text/javascript">

    const table = $("#example1").DataTable({
        // 是否允许检索
        "searching": false,
        // 是否允许排序
        "ordering": false,
        // 初期排序列
        //"order": [[0,'asc'],[1,'desc']],
        // 是否显示情报 就是"当前显示1/100记录"这个信息
        "info": true,
        // 是否允许翻页，设成false，翻页按钮不显示
        "paging": true,
        // 水平滚动条
        "scrollX": false,
        // 垂直滚动条
        "scrollY": false,
        // 件数选择功能 默认true
        "lengthChange": false,
        // 件数选择下拉框内容
        "lengthMenu": [10, 25, 50, 75, 100],
        // 每页的初期件数 用户可以操作lengthMenu上的值覆盖
        "pageLength": 10,
        //翻页按钮样式
        // numbers:数字
        // simple:前一页，后一页
        // simple_numbers:前一页，后一页，数字
        // full:第一页，前一页，后一页，最后页
        //full_numbers:第一页，前一页，后一页，最后页，数字
        //first_last_numbers:第一页，最后页，数字
        "pagingType": "full_numbers",
        // 行样式应用 指定多个的话，第一行tr的class为strip1，第二行为strip2，第三行为strip3.
        // 第四行以后又开始从strip1循环。。。 如果想指定成斑马条状，这里的class必须指定为2个。
        "stripeClasses": ['strip1', 'strip2', 'strip3'],
        // 自动列宽
        "autoWidth": true,
        // 是否表示 "processing" 加载中的信息，这个信息可以修改
        "processing": true,
        // 每次创建是否销毁以前的DataTable,默认false
        "destroy": false,
        // 控制表格各种信息的表示位置（比较复杂） 默认:lfrtip
        // 具体参考：https://datatables.net/reference/option/dom
        //"dom": 'lrtip',
        "language": {
            "processing": "处理中...",
            // 当前页显示多少条
            "lengthMenu": "每页显示 _MENU_ 条",
            // _START_（当前页的第一条的序号） ,_END_（当前页的最后一条的序号）,_TOTAL_（筛选后的总件数）,
            // _MAX_(总件数),_PAGE_(当前页号),_PAGES_（总页数）
            "info": " 当前显示第_PAGE_页，总共_PAGES_页",
            // 没有数据的显示（可选），如果没指定，会用zeroRecords的内容
            "emptyTable": "没有数据",
            // 筛选后，没有数据的表示信息，注意emptyTable优先级更高
            "zeroRecords": "没有数据",
            // 千分位的符号，只对显示有效，默认就是","  一般不要改写
            //"thousands": "'",
            // 小数点位的符号，对输入解析有影响，默认就是"." 一般不要改写
            //"decimal": "-",
            // 翻页按钮文字控制
            "paginate": {
                "first": "第一页",
                "last": "最后一页",
                "next": "下一页",
                "previous": "上一页"
            },
            // Client-Side用，Server-Side不用这个属性
            "loadingRecords": "Please wait - loading..."
        },
        // 默认是false
        // 如果设为true，将只渲染当前也的html，速度会很快，但是通过API就访问不到所有页的数据，有利有弊
        //"deferRender": false,
        // 服务器端处理方式
        "serverSide": true,

        // ajax选项 可以直接简单指定成请求的文件
        //"ajax": "data.json",
        // 也可以用对象来配置，更加灵活
        "ajax": {
            // url可以直接指定远程的json文件，或是MVC的请求地址 /Controller/Action
            url: "<%=basePath%>/permission/buy-record-page",
            type: 'POST',
            // 传给服务器的数据，可以添加我们自己的查询参数
            data: function (param) {
                const dataParam = {};
                dataParam.companyId = $("#selectCompanyForSearch").val();
                dataParam.subject = $("#inputSearchSubject").val();
                dataParam.draw = param.draw;
                dataParam.start = param.start;
                dataParam.length = param.length;
                return dataParam;
            },
            //用于处理服务器端返回的数据。 dataSrc是DataTable特有的
            dataSrc: function (result) {
                return result.data;
            }
        },
        "columns": [
            { data: 'id'},
            { data: 'companyName'},
            { data: 'subject'},
            { data:'amount'},
            { data:'buyDate'},
            { data:'remark',defaultContent:""},
            { data:'operator'},
            { data: 'createTime'},

        ]
    });
    $("#btnsearch").click(function () {
        table.ajax.reload();
    });
    $("#btnadd").click(function () {
        $("#inputSubject").val("");
        $("#inputAmount").val("");
        $("#inputRemark").val("");
        $("#modal-info").modal();
    });
    //Date picker
    $('#inputbuyDate').datepicker({
        autoclose: true,//日期选择后自动关闭
        format : "yyyy-mm-dd",
        language: "zh-CN",
    });
    $("#btnSave").click(function () {
        const companyId = $("#selectCompany").val();
        const subject = $("#inputSubject").val();
        const amount =$("#inputAmount").val();
        const buyDate =$("#inputbuyDate").val();
        const remark =$("#inputRemark").val();
        let errorMsg = "";
        if(!subject){
            errorMsg += "购入物品名不能为空;"
        }
        if(!amount){
            errorMsg +="购入金额不能为空;"
        }
        if(!buyDate){
            errorMsg +="购入日期不能为空;"
        }
        if(!errorMsg){
            $.ajax({
                //请求服务器网址
                url:"<%=basePath%>/permission/buy-record-add",
                //请求类型
                type:"POST",
                //返回值类型
                dataType: "json",
                //请求参数
                data:{
                    companyId:companyId,
                    subject:subject,
                    amount:amount,
                    buyDate:buyDate,
                    remark:remark,
                },
                //请求成功或的处理
                success:function (result) {
                    if(result.state == 0){
                        //关闭modal
                        $("#modal-info").modal("hide");
                        //重新加载数据
                        table.ajax.reload();
                    }else {
                        alert(result.message);
                    }
                },
                //请求错误的处理
                error:function (e) {
                    alert(e);
                }
            })
        }else {
            alert(errorMsg);
        }
    })
</script>
<!-- page script -->
</body>
</html>
