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
		$.post("<%=basePath%>property/propertylist",function(data){//获取json数据
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
                    field: 'property_id',
                    title: '物业号'
                }, {
                    field: 'house_id',
                    title: '住房编号',
                },{
                    field: 'status',
                    title: '状态'
                },{
                    field: 'total',
                    title: '物业总费用'
                },{
                   field: 'deadline',
                    title: '截至日期',
                    sorttable:true   //,
                    /* formatter:function(value, row, index){
                    	//return changeDateFormat(value);
                    	return changeDateFormat(value);
                    } */
                },{//查看详细信息
                	field:'detail',
                	title:'查看详细信息并修改',
                	// '<a class="getDetail" href="#myModal" title="Detail"  data-toggle="modal" >',
                	formatter: function (value, row, index) {
                		return [
                		        '<a class="getDetail" href="javascript:void(0)" title="Detail"  >',
                		        '查看详细信息',
                		        '</a>'
                		        ].join('');
                	},events: {
                        'click .getDetail': function (e, value, row, index) {
                           detail(row.property_id);//调用details(sno)
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
                var property_ids = $.map($table.bootstrapTable('getSelections'), function (row) {
                    return row.property_id;
                });
                var property_idsStr = property_ids.toString();
                $.ajax({
                	url:"<%=basePath%>property/propertyDeletes",
                	data:{
                		property_idsStr:property_idsStr//servlet获取的参数
                	},
                	success:function(result) {//假若批量删除成功
                		alert(result);
                		$table.bootstrapTable('remove', {
                            field: 'property_id',
                            values: property_ids
                        });
                	},
                	error:function(result) {//假若批量删除失败
                		//alert(result);
                		$.post("<%=basePath%>customer/qiuzulist",function(data){
            				var data = eval("("+data+")");
            				tableInit(data);
            			});
                	}
                });
            });
        });
        
        
        detail= function(property_id) {
        	
        	<%--  $.ajax({ //ajax方式向后台发送请求
					type : "GET",
					url : '<%=basePath%>property/getOneproperty/'+property_id,
					dataType : "json",
					success : function(data) {
				
						//$("#myModal #baodan_no").attr("value",data.baodan_no);
						
						$("#myModal #property_id").attr("value",data.property_id);
						$("#myModal #house_id").attr("value",data.house_id);
						$("#myModal #elevator").attr("value",data.elevator);
						$("#myModal #power").attr("value",data.power);
						$("#myModal #water_rent").attr("value",data.water_rent);
						$("#myModal #pro_fee").attr("value",data.pro_fee);
						$("#myModal #total").attr("value",data.total);
					//	$("#myModal #deadline").val(data.deadline);
				
						 $("input[name=status][value="+data.status+"]").attr("checked",true);  
						//	$("#myModal #deadline").attr("value",(new Date(data.deadline)).Format("yyyy/MM/dd"));
						 $("#myModal #deadline").attr("value",data.deadline);
					},
					error : function() {
					      alert("服务器繁忙，请稍后重试");
										}
				});
	  
	   //$('#myModal').modal('show');  
        	 --%>
        	
        	 window.location.href ="<%=basePath%>property/getOneproperty/"+property_id+"/";
        	
        };
        
        
    </script>
 <%--  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">
				</button>
				<h4 class="modal-title" id="myModalLabel">
					填写预定信息
				</h4>
			</div>
			 <form   name="form1" class="form-horizontal" method="post" action="<%=basePath %>" >  
			<div class="modal-body">
			
   <div class="form-group">
			<label class="col-sm-2 control-label" for="property_id">物业编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="property_id"
					name="property_id" placeholder="物业编号" 
					  readonly></input>

			</div>
		</div>
  <div class="form-group">
			<label class="col-sm-2 control-label" for="house_id">住房编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="house_id"
					name="house_id" placeholder="住房编号" 
					value=""  readonly></input>

			</div>
		</div>
  
  <div class="form-group">
			<label class="col-sm-2 control-label" for="pro_fee">物业费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="pro_fee"
					name="pro_fee" placeholder="物业费：" 
					value=""></input>
				
			</div>
		</div>
		
		
<div class="form-group">
			<label class="col-sm-2 control-label" for="water_rent">水费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="water_rent"
					name="water_rent" placeholder="水费：" 
					value=""></input>
				
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="sanitary_fee">卫生费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="sanitary_fee"
					name="sanitary_fee" placeholder="卫生费：" 
					value=""></input>
				
			</div>
		</div>
	 
<div class="form-group">
			<label class="col-sm-2 control-label" for="elevator">电梯费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="elevator"
					name="selevator" placeholder="电梯费：" 
					value=""></input>
				
			</div>
		</div>
	 

		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="power">电费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="power"
					name="power" placeholder="电费：" 
					value=""></input>
				
			</div>
		</div>
		
		
		<div class="form-group">
            <label class="col-sm-2 control-label" for = "status">物业状态：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="status" id="status" value="已缴费" ><span>已缴</span>
						<input type="radio" name="status"  id="status" value="未缴费" ><span>未缴</span>
			</label>					
           </div>  
        </div>  
        
        <div class="form-group">
			<label class="col-sm-2 control-label" for="deadline">截至日期：</label>
			<div class="col-sm-4">
				<input type="date" class="form-control" id="deadline"
					name="deadline" 
					value="${date }"></input>
				
			</div>
		</div>
                    
					
            </div>  
        </div> 
        </div>
        </form>
        </div>
        </div>
        </div>  --%>
        
         

</body>
</html>