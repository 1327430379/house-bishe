<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>历届成员信息</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap-table.css">

    <script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap-table-zh-CN.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$.post("<%=basePath%>provider/agreeListmap",function(data){//获取json数据
		var data = eval("("+data+")");
		tableInit(data);
	});
		
	});
	</script>

</head>
<body>
    <div id="toolbar">
        <!-- <button id="button" class="btn btn-danger">删除选中</button> -->
    </div>
    <table id="table"></table>
    
     <script>
    
    </script>
    <script>
        function tableInit(data) {
        	$('#table').bootstrapTable({
                toolbar: '#toolbar', //工具按钮用哪个容器
                editable:true,//开启编辑模式
                strictSearch:false,
                pagination: true,
                pageSize: 10,
                pageNumber:1,
                pageList: [5,10,20],
                search: true,
                columns: [{
                    field : 'checked',
                    checkbox : true
                },{
                    field: 'agreement_id',
                    title: '合同编号'
                },{
                    field: 'status',
                    title: '合同状态'
                }, {
                    field: 'house_id',
                    title: '住房编号',
                } ,{
                    field: 'starttime',
                    title: '生效时间'
                },{
                   field: 'deadline',
                    title: '失效时间'
                } ,{//查看详细信息
                	field:'detail',
                	title:'查看详细信息',
                	formatter: function (value, row, index) {
                		return [
                		        '<a class="getDetail" href="javascript:void(0)" title="Detail">',
                		        '查看详细信息',
                		        '</a>'
                		        ].join('');
                	},events: {
                        'click .getDetail': function (e, value, row, index) {
                           detail(row.agreement_id);//调用details(sno)
                        }
                    }
                },{
                	field:'detail2',
                	title:'查看顾客信息',
                	formatter: function (value, row, index) {
                		return [
                		        '<a class="getDetail" href="javascript:void(0)" title="Detail">',
                		        '查看顾客信息',
                		        '</a>'
                		        ].join('');
                	},events: {
                        'click .getDetail': function (e, value, row, index) {
                           LookGuest(row.customer_id);//调用details(sno)
                        }
                    }
                } 
                
                ],
                data:data
            });
        }

        var $table = $('#table'),
                $button = $('#button');

        $(function () {
            $button.click(function () {//获取删除的多选框里里面的值,将值传给:url:"deleteMembers",
                var agreement_ids = $.map($table.bootstrapTable('getSelections'), function (row) {
                    return row.agreement_id;
                });
                var agreement_idsStr = agreement_ids.toString();
                $.ajax({
                	url:"<%=basePath%>provider/agreeDeletes",
                	data:{
                		idsStr:agreement_idsStr//servlet获取的参数
                	},
                	success:function(result) {//假若批量删除成功
                		alert(result);
                		$table.bootstrapTable('remove', {
                            field: 'agreement_id',
                            values: agreement_ids
                        });
                	},
                	error:function(result) {//假若批量删除失败
                		alert(result);
                		$.post("<%=basePath%>provider/agreeListmap",function(data){
            				var data = eval("("+data+")");
            				tableInit(data);
            			});
                	}
                });
            });
        });
        
        detail= function(agreement_id) {
        	window.location.href ="<%=basePath%>provider/getOneAgree/"+agreement_id+"/";
        };
       LookGuest= function(customer_id){
        window.location.href ="<%=basePath%>provider/getOneGuest/"+customer_id+"/";
        }; 
        
    </script>
   
</body>
</html>