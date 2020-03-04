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
	<title>员工信息</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap-table.css">

    <script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap-table-zh-CN.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$.post("<%=basePath%>admin/stafflist",function(data){//获取json数据
		var data = eval("("+data+")");
		tableInit(data);
	});
		
	});
	</script>

</head>
<body>
    <div id="toolbar">
     <!--    <button id="button" class="btn btn-danger">删除选中</button> -->
 
       <img src="<%=basePath%>images/s/t01.png" id="add"  data-toggle="modal" data-target="#myModal2" /></span>添加
       <span><img src="<%=basePath%>images/s/t02.png" id="update"/></span>修改
        <span><img src="<%=basePath%>images/s/t03.png" id="delete" /></span>删除
       <span><img src="<%=basePath%>images/s/t04.png" id="" /></span>统计
       
        
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
                    field: 'staff_id',
                    title: '员工编号'
                }, {
                    field: 'name',
                    title: '员工姓名',
                }, {
                    field: 'position',
                    title: '职位',
                },{
                    field: 'department',
                    title: '部门'
                },{
                   field: 'email',
                    title: '邮箱'
                },{
                   field: 'service',
                    title: '任务'
                },{//查看详细信息
                	field:'detail',
                	title:'查看详细信息并修改',
                	formatter: function (value, row, index) {
                		return [
                		        '<a class="getDetail" href="javascript:void(0)" title="Detail">',
                		        '查看详细信息',
                		        '</a>'
                		        ].join('');
                	},events: {
                        'click .getDetail': function (e, value, row, index) {
                           detail(row.staff_id);//调用details(sno)
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
            $('#delete').click(function () {//获取删除的多选框里里面的值,将值传给:url:"deleteMembers",
                var staff_ids = $.map($table.bootstrapTable('getSelections'), function (row) {
                    return row.staff_id;
                });
                var staff_idsStr = staff_ids.toString();
                $.ajax({
                	url:"<%=basePath%>admin/staffDeletes",
                	data:{
                		idsStr:staff_idsStr//servlet获取的参数
                	},
                	success:function(result) {//假若批量删除成功
                		alert(result);
                		$table.bootstrapTable('remove', {
                            field: 'staff_id',
                            values: staff_ids
                        });
                	},
                	error:function(result) {//假若批量删除失败
                		alert(result);
                		$.post("<%=basePath%>admin/customerlist",function(data){
            				var data = eval("("+data+")");
            				tableInit(data);
            			});
                	}
                });
            });
        });
        
        detail= function(staff_id) {
        	window.location.href ="<%=basePath%>admin/getOneStaff/"+staff_id+"/";
        };
        
        
    </script>
    
    
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h8 class="modal-title" id="myModalLabel">
				添加员工
				</h8>
			</div>
			
			<div class="modal-footer">
			
			
				<form  name="form1" class="form-horizontal" method="post"  action="<%=basePath %>admin/addStaff">
		

		<div class="form-group">
			<label class="col-sm-2 control-label" for="name">员工姓名：</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="name"
					name="name" placeholder="员工姓名" 
					value="员工100"  ></input>

			</div>
		</div>
		
		
	
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="position">职位：</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="position"
					name="position" placeholder="职位：" 
					value="员工"></input>
				
			</div>
		</div>
		
		

		
		
		<div class = "form-group">  
            <label class="col-sm-2 control-label" for = "department">部门：</label>  
            <div class="col-sm-8">  
                <select id = "department" name="department" class = "form-control">  
                    <option>电力部</option>  
                    <option>水利部</option>  
                    <option>物业部</option>  
                    <option>接待部</option>  
                </select>  
            </div>  
        </div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="mobile">手机号：</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="mobile"
					name="mobile" placeholder="卫生费：" 
					value="12345678901"></input>
				
			</div>
		</div>
	 
<div class="form-group">
			<label class="col-sm-2 control-label" for="email">邮箱：</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="email"
					name="email" placeholder="邮箱" 
					value="567894531@qq.com"></input>
				
			</div>
		</div>
	 

		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="service">任务：</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="service"
					name="service" placeholder="任务：" 
					value="客服接待"></input>
				
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="description">描述·：</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="description"
					name="description" placeholder="描述：" 
					value="一个非常好的员工"></input>
				
			</div>
		</div>
        
       
        
		
		<div class = "form-group">  
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary" onclick="add()">
					提交更改
				</button>
			</div>
			</div>
		
		
	</form>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
				<!-- <button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
					<button type="submit" class="btn btn-primary" onclick="add()">
					提交更改
				</button> -->
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
   
</body>
</html>