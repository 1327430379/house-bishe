<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet" type="text/css" id="css" href="${pageContext.request.contextPath}/css/css/bootstrap.css" />
<title>添加信息</title>
<script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>
<!-- ${pageContext.request.contextPath}/ -->
<script type="text/javascript">
</script>
</head>

<body style="padding: 20px;">
	<form  name="form1" class="form-horizontal" method="post"
		action="${pageContext.request.contextPath}/admin/update">

	<div class="form-group">
			<label class="col-sm-2 control-label" for="name">姓名：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name"
					name="name" readonly
					value="${sessionScope.user.admin_name }"></input>

			</div>
		</div>

		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="mobile">电话：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="mobile"
					name="mobile" value="${sessionScope.user.mobile}"  readonly></input>

			</div>
		</div>

	<div class="form-group">
			<label class="col-sm-2 control-label" for="email">email：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="email"
					name="email" value="${sessionScope.user.email}"  readonly></input>

			</div>
		</div>
		
	</form>


</body>
<html>