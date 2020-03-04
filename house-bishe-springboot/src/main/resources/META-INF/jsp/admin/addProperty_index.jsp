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
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap-table.css">

    <script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap-table-zh-CN.js"></script>
    <!-- 页面说明：jsp/admin/addProperty_index.jsp:显示房屋列表，点击添加便可添加
    接口controller位置：PropertyController
    property/HouseListmap：房屋列表
    excel_pro:ExcelController,在com.house.controller.echarts
 property/gethouse_id/"+house_id+"?house_id="+house_id;
    -->
	<script type="text/javascript">
	$(document).ready(function(){
		$.post("<%=basePath%>property/HouseListmap",function(data){//获取json数据
		var data = eval("("+data+")");
		tableInit(data);
	});
		
	});
	 function checkData(){  
         var fileDir = $("#upfile").val();  
         var suffix = fileDir.substr(fileDir.lastIndexOf("."));  
         if("" == fileDir){  
             alert("选择需要导入的Excel文件！");  
             return false;  
         }  
         if(".xls" != suffix && ".xlsx" != suffix ){  
             alert("选择Excel格式的文件导入！");  
             return false;  
         }  
         return true;  
      }  
	</script>

</head>
<body>
    <div id="toolbar">
        
             <form method="POST"  enctype="multipart/form-data" id="form1" action="<%=basePath %>excel_pro">  
             
                <!-- <input id="upfile" type="file" name="upfile"> -->
            <table><tr>
            <td><input id="upfile" type="file" name="upfile"> </td>
            <td>  <button type="submit"  value="提交" onclick="return checkData()" class="btn btn-primary" >提交</button></td>
            </tr>
            </table>
             
       </form>
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
                    field: 'house_id',
                    title: '住房编号'
                }, {
                    field: 'address',
                    title: '住房位置',
                }, {
                    field: 'area',
                    title: '面积(平米)',
                },{
                    field: 'status',
                    title: '状态'
                },{
                   field: 'provider_id',
                    title: '房主id'
                },{//查看详细信息
                	field:'detail',
                	title:'添加物业信息',
                	formatter: function (value, row, index) {
                		return [
                		        '<a class="getDetail" href="javascript:void(0)" title="Detail">',
                		        '添加',
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

       
        detail= function(house_id) {
        	window.location.href ="<%=basePath%>property/gethouse_id/"+house_id+"?house_id="+house_id;
        };
        
        
    </script>
   
</body>
</html>