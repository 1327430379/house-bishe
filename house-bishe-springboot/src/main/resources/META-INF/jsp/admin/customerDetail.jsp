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
		action="${pageContext.request.contextPath}/provider/update">


<input type="hidden" class="form-control" id="customer_id"
					name="customer_id" placeholder="客户" value="${c.customer_id }" readonly="readonly"></input>
					
					
		
		

		<div class="form-group">
			<label class="col-sm-2 control-label" for="name">顾客姓名：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name"
					name="name" placeholder="地址" value="${c.name}" readonly="readonly"></input>
				
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="idcard">顾客身份证：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="idcard"
					name="idcard" placeholder="地址" value="${c.idcard}" readonly="readonly"></input>
					</div>
		</div>
				
			
		
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="fee">mobile：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="mobile"
					name="mobile" placeholder="电话" value="${c.mobile}"  readonly="readonly"
					></input>
				
			</div>
		</div>
		
			<div class="form-group">
			<label class="col-sm-2 control-label" for="job">职业：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="job"
					name="job" placeholder="职业"   value="${c.job}" readonly="readonly" ></input>		
				
			</div>
		</div>
		

		
		
	</form>


</body>
<html>