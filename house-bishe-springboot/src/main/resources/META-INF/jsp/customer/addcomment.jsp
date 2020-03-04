<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>历届成员信息</title>
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="${pageContext.request.contextPath}/css/star/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
	
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap-table.css">

    <script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/star/star-rating.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap-table-zh-CN.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$.post("<%=basePath%>customer/houselist",function(data){//获取json数据
		var data = eval("("+data+")");
		tableInit(data);
	});
		
	});
	</script>

</head>
<body>
    <div id="toolbar">
        
    </div>
    <table id="table"></table>
    
    
    
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
			 <form role = "form"  name="form1" class="form-horizontal" method="post" >  
			<div class="modal-body">
			
  
  <input type = "hidden" class = "form-control" id = "house_id"   name="house_id"   >
  
  
		
		  
              <input id="star" value="4" type="text" name="star" class="rating" data-min=0 data-max=5 data-step=0.2 data-size="lg"
               required title="">
           
		
                    
					   <textarea placeholder="添加评论"  id = "description"  name="description"  class="form-control" rows="3">
房子是不错，就是有点贵
      </textarea>
           
		   
		
		<div class = "form-group">  
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="add()">
					提交更改
				</button>
			</div>
			</div>
			
			</div>
			</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
    
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
                    field: 'house_id',
                    title: '住房编号'
                }, {
                    field: 'address',
                    title: '住房位置',
                },{
                    field: 'area',
                    title: '面积'
                },{
                   field: 'type',
                    title: '类型'
                },{
                   field: 'price',
                    title: '月租'
                },{//查看详细信息
                	field:'detail',
                	title:'添加评论',
                	formatter: function (value, row, index) {
                		return [
                		        '<a class="getDetail" href="#myModal" data-toggle="modal" title="Detail">',
                		        '添加评论',
                		        '</a>'
                		        ].join('');
                	},events: {
                        'click .getDetail': function (e, value, row, index) {
                           detail(row.house_id);//调用details(sno)
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
                var house_ids = $.map($table.bootstrapTable('getSelections'), function (row) {
                    return row.house_id;
                });
                var house_idsStr = house_ids.toString();
                $.ajax({
                	url:"HouseDeletes",
                	data:{
                		house_idsStr:house_idsStr//servlet获取的参数
                	},
                	success:function(result) {//假若批量删除成功
                		alert(result);
                		$table.bootstrapTable('remove', {
                            field: 'house_id',
                            values: house_ids
                        });
                	},
                	error:function(result) {//假若批量删除失败
                		alert(result);
                		$.post("HouseListmap",function(data){
            				var data = eval("("+data+")");
            				tableInit(data);
            			});
                	}
                });
            });
        });
        
        detail= function(house_id) {
        	var xuehao = document.getElementById("house_id");
			xuehao.value = house_id;
        };
        	
        	

      
        
        add=function(){
        	 var house_id=$("#house_id").val();
        	 var star=$("#star").val();
        	 var description=$("#description").val();
        	$.ajax({
        	    url:"<%=basePath%>customer/addcomment" ,//+baodan_no 
        	    data:{
        	    	house_id:house_id,
        	    	star:star,
        	    	description:description
        	  
        	
        	    },//提交的数据
        	    type:"POST",//提交的方式
        	    ContentType:"application/json; charset=UTF-8",
        	    dataType:"text", //返回类型 TEXT字符串 JSON XML
        	    async :false,   //注意：此处是同步，不是异步
        	    success:function(msg){//msg是servlet返回的
        	  alert(msg);
        							}
        						});

        			
        };
       // }
    </script>
   
</body>
</html>