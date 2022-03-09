<%@ page import="java.util.List" %>
<%@ page import="com.qunyuge.capital.entity.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="template/herder_common.jsp"%>

    <title>用户信息</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="template/main_herder.jsp"%>
    <%@include file="template/main_sidebar.jsp"%>
    <div class="content-wrapper" style="min-height: 653px;">
        <section class="content-header">
            <h1>
                用户信息
                <small>用户列表</small>
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
                                <%
                                    Long companyId = (Long) session.getAttribute("companyId");
                                    if(companyId == 0){%>
                                <button type="button" class="btn btn-info btn-linkedin" id="btnadd" style="width:100px">
                                    <b>新增</b>
                                </button>
                                <%}%>

                            </div>
                            <div class="col-sm-6">
                                <div class="pull-right">
                                    <div class="box-tools">
                                        <div class="input-group input-group-sm hidden-xs" style="width: 300px;">
                                            <input type="text" name="table_search" class="form-control pull-right" id="inputSearchUsername" placeholder="用户名">
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
                                        <th>人物名称</th>
                                        <th>所属阵营</th>
                                        <th>创建时间</th>
                                        <th>操作</th>
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
                            <h4 class="modal-title">公司信息</h4>
                        </div>
                        <div class="modal-body">
                            <div class="box-body form-horizontal">
                                <input type="hidden" id="inputCompanyId" value="0">
                                <div class="form-group">
                                    <label for="inputUsername" class="col-sm-3 control-label">用户名</label>

                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputUsername" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword" class="col-sm-3 control-label">密码</label>

                                    <div class="col-sm-9">
                                        <input type="password" class="form-control" id="inputPassword" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputPassword" class="col-sm-3 control-label">公司</label>
                                    <div class="col-sm-9">
                                        <select class="form-control" id="selectCompany">
                                            <%
                                                List<Company> companies =(List<Company>) request.getAttribute("companies");
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
            url: "<%=basePath%>/permission/admin-page",
            type: 'POST',
            // 传给服务器的数据，可以添加我们自己的查询参数
            data: function (param) {
                const dataParam = {};
                dataParam.username = $("#inputSearchUsername").val();
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
            { data: 'id',defaultContent:""},
            { data: 'username',defaultContent:""},
            { data: 'companyName',defaultContent:""},
            { data: 'createTime',defaultContent:""},
            { data : function (result){
                    return '<button type="button" class="btn btn-info btn-linkedin" onclick="resetPassword('+ result.id +')" style="height: 30px"><b>重置密码</b></button>'

                }
            }
        ]
    });
    $("#btnsearch").click(function () {
        table.ajax.reload();
    });
    function resetPassword(id){
        //todo 利用ajax请求后台根据id查询company信息
        $.ajax({
            url:"<%=basePath%>/permission/admin-reset-password",
            data:{ id : id },
            type: "POST",
            dataType:"json",
            success:function (result) {
                if(result.state==0){//表示后台查询到数据或处理成功
                    alert(result.message);
                }else {
                    alert(result.message);
                }
            },
            error:function (e) {
                alert(e);
            }
        });
    }
    $("#btnadd").click(function () {
        $("#inputUsername").val("");
        $("#inputPassword").val("");
        $("#modal-info").modal();
    });
    $("#btnSave").click(function () {
        const username = $("#inputUsername").val();
        const password = $("#inputPassword").val();
        const selectCompanyId = $("#selectCompany").val();
        //todo 判断公司名称是否为空
        let errorMsg = "";
        if(!username){
            errorMsg += "用户名不能为空；"
        }
        if(!password){
            errorMsg +="密码不能为空；"
        }
        if (!errorMsg){
            $.ajax({
                //请求服务器网址
                url:"<%=basePath%>/permission/admin-add",
                //请求类型
                type:"POST",
                //返回值类型
                dataType: "json",
                //请求参数
                data:{
                    username:username,
                    password:password,
                    companyId:selectCompanyId
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
        } else {
            alert(errorMsg);
        }
    })
</script>
<!-- page script -->
</body>
</html>
