<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 折叠面板</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap-table.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  <script src="${pageContext.request.contextPath}/js/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.post("<%=basePath%>provider/reservelist",function(data){//获取json数据
		var data = eval("("+data+")");
		tableInit(data);
	});
		
	});
	
	getOneGuest2=function(customer_id){
		var customer_id = customer_id;
		 
	      $.ajax({ //ajax方式向后台发送请求
					type : "GET",
					url : '<%=basePath%>provider/getOneGuest2/'+customer_id,
					dataType : "json",
					success : function(data) {
				
						$("#name").attr("value",data.name);
						$("#idcard").attr("value",data.idcard);
						$("#mobile").attr("value",data.mobile);
						$("#job").attr("value",data.job);
					},
					error : function() {
					      alert("服务器繁忙，请稍后重试");
										}
				});
	 
		
	}
	
	</script>
</head>
<body>

<div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
			<button type="button" class="btn btn-success btn-block" data-toggle="collapse" data-parent="#accordion" 
			href="#collapseOne" id="submitBTN">
			  <span class="glyphicon glyphicon-send">
			</span> 查看房屋预定信息</button>
				
				 
			</h4>
		</div>
		<div id="collapseOne" class="panel-collapse collapse in">
			<div class="panel-body">
			<table id="table"></table>
			</div>
		</div>
	</div>
	
</div>
<script type="text/javascript">
	$(function () { $('#collapseFour').collapse({
		toggle: false
	})});
	
	$(function () { $('#collapseOne').collapse('hide')});
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
                    field: 'paid_rent',
                    title: '已付金额'
                } , {
                    field: 'house_id',
                    title: '住房编号',
                } ,{
                    field: 'creatime',
                    title: '创建时间'
                },{
                   field: 'starttime',
                    title: '预定时间'
                } ,{
                	field:'detail',
                	title:'查看顾客信息',
                	formatter: function (value, row, index) {
                		return [
                		        '<a class="getDetail"  href="#myModal" data-toggle="modal"   href="javascript:void(0)" title="Detail">',
                		        '查看顾客信息',
                		        '</a>'
                		        ].join('');
                	},events: {
                        'click .getDetail': function (e, value, row, index) {
                        	getOneGuest2(row.customer_id);//调用details(sno)
                        }
                    }
                } ,{
                	field:'detail2',
                	title:'同意生成合同',
                	formatter: function (value, row, index) {
                		return [
                		        '<a class="getDetail" href="javascript:void(0)" title="Detail">',
                		        '同意生成合同',
                		        '</a>'
                		        ].join('');
                	},events: {
                        'click .getDetail': function (e, value, row, index) {
                           makeAgree(row.agreement_id);//调用details(sno)
                        }
                    }
                } 
                ,{
                	field:'detail3',
                	title:'不同意生成合同',
                	formatter: function (value, row, index) {
                		return [
                		        '<a class="getDetail" href="javascript:void(0)" title="Detail">',
                		        '不同意',
                		        '</a>'
                		        ].join('');
                	},events: {
                        'click .getDetail': function (e, value, row, index) {
                           disAgree(row.agreement_id);//调用details(sno)
                        }
                    }
                } 
                ],
                data:data
            });
        }

        var $table = $('#table'),
                $button = $('#button');

       
        makeAgree= function(agreement_id) {
        	window.location.href ="<%=basePath%>provider/makeAgree/"+agreement_id+"/";
        };
       LookGuest= function(customer_id){
        window.location.href ="<%=basePath%>provider/getOneGuest/"+customer_id+"/";
        }; 
        disAgree=function(agreement_id){
        
        	window.location.href ="<%=basePath%>provider/disAgree/"+agreement_id+"/";
        };
        
    </script>
</body>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加评论
				</h4>
			</div>
			 <form role = "form"  name="form1" class="form-horizontal"  >  
			<div class="modal-body">
			
<div class="form-group">
			<label class="col-sm-2 control-label" for="name">顾客姓名：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name"
					name="name" placeholder="地址"  readonly="readonly"></input>
				
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="idcard">顾客身份证：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="idcard"
					name="idcard" placeholder="地址"  readonly="readonly"></input>
					</div>
		</div>
				
			
		
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="fee">mobile：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="mobile"
					name="mobile" placeholder="电话"   readonly="readonly"
					></input>
				
			</div>
		</div>
		
			<div class="form-group">
			<label class="col-sm-2 control-label" for="job">职业：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="job"
					name="job" placeholder="职业"    readonly="readonly" ></input>		
				
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
			
			</div>
			</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->



</html>