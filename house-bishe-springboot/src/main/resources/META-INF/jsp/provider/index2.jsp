<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	 <script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
	  <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

</head>
<body>

<div data-role="page" id="pageone">
 <!--  <div data-role="header">
    <h1>房客预定房屋信息</h1>
  </div> -->


  <div data-role="main" class="ui-content">
    <div data-role="collapsible">
      <h1>查看房屋预定信息</h1>
  <p>
     <div class="table-responsive">
  <table class="table table-hover">

    <caption>响应式表格布局</caption>
    <thead>
      <tr>
      <th>合同编号</th>
        <th>详细信息</th>
        <th>预定的房间</th>
        <th>已付金额</th>
        <th>创建时间</th>
         <th>预定时间</th>
          <th>同意生成合同</th>
          <th>查看顾客信息</th>
        </tr>
    </thead>
   		<tbody id="tableid"></tbody>
  </table>
</div> 
      
  </p>

      
     
    </div>
  </div>
  
  
  
  
   

  <div data-role="footer">
    <h1></h1>
  </div>
</div> 


</body>
  

</html>
