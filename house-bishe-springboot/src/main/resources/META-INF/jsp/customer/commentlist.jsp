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
		$.post("<%=basePath%>customer/myCommentList",function(data){//获取json数据
		var data = eval("("+data+")");
		tableInit(data);
	});
		
	});
	</script>

</head>
<body>
   
    <div id="toolbar">
        <button id="button" class="btn btn-danger">删除选中</button>
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
                    field: 'comment_id',
                    title: '评论编号'
                },{
                    field: 'house_id',
                    title: '房屋编号'
                }, {
                    field: 'star',
                    title: '星级',
                },{
                    field: 'description',
                    title: '评论'
                } ,{
                    field: 'maketime',
                    title: '生效时间'
                } 
                ],
                data:data
            });
        }

        var $table = $('#table'),
                $button = $('#button');

        $(function () {
            $button.click(function () {//获取删除的多选框里里面的值,将值传给:url:"deleteMembers",
                var comment_ids = $.map($table.bootstrapTable('getSelections'), function (row) {
                    return row.comment_id;
                });
                var comment_idsStr = comment_ids.toString();
                $.ajax({
                	url:"<%=basePath%>customer/commentDeletes",
                	data:{
                		idsStr:comment_idsStr//servlet获取的参数
                	},
                	success:function(result) {//假若批量删除成功
                		alert(result);
                		$table.bootstrapTable('remove', {
                            field: 'comment_id',
                            values: comment_ids
                        });
                	},
                	error:function(result) {//假若批量删除失败
                		alert(result);
                		$.post("<%=basePath%>customer/myCommentList",function(data){
            				var data = eval("("+data+")");
            				tableInit(data);
            			});
                	}
                });
            });
        });
        
       
    </script>
   
</body>
</html>