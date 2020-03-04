<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css/bootstrap-table.css">

    <script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>
</head>
<body>
			<table  class="table table-striped"  >
			<caption>房屋评论</caption>
			<thead>
		<tr >
			    <td>房屋编号</td>
				<td>评论者昵称</td>
				<td>评论等级</td>
				<td>评论</td>
				<td>时间</td>
				
		</tr>
	          </thead>
			 
			   <tbody>
			    	<c:forEach items="${list}" var="c">
			   <tr>
                <td>${c.house_id}</td>
				<td>${c.nickname}</td>
				<td>${c.star}</td>
				<td>${c.description}</td>
				<td>${c.maketime}</td>
				</tr>
			
       </c:forEach>
		
		
		</tbody>
		</table>
</body>
</html>