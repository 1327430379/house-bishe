<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
  <%
	// 权限验证
	if(session.getAttribute("user")==null){
		response.sendRedirect(basePath+"indexlist.do");
		return;
	}
%>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
		action="${pageContext.request.contextPath}/provider/addOneAgree">

		<div class="form-group">
			<label class="col-sm-2 control-label" for="house_id">住房编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="house_id"
					name="house_id" placeholder="住房编号" 
					value="${ house_id}" readonly="readonly"></input>

			</div>
		</div>
		

		<div class="form-group">
			<label class="col-sm-2 control-label" for="cname">顾客姓名：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="cname"
					name="cname" placeholder="顾客姓名：" value="租户1"
					></input>
				
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="idcard">顾客身份证：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="idcard"
					name="idcard" placeholder="顾客身份证" value="450330199611070001"
					></input>
				
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="type">类型：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="type"
					name="type" placeholder="租金" value="${type }"
					></input>
				
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="fee">租金：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="fee" value="${fee }"
					name="fee" placeholder="租金" 
					></input>
				
			</div>
		</div>
		
			<div class="form-group">
			<label class="col-sm-2 control-label" for="paid_rent">已付金额：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="paid_rent"  value="${paid_rent }"
					name="paid_rent" placeholder="已付金额：" ></input>	
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="starttime">生效日期：</label>
			<div class="col-sm-4">
				<input type="date" class="form-control" id="starttime"
					name="starttime" placeholder="生效日期：" ></input>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="deadline">失效日期：</label>
			<div class="col-sm-4">
				<input type="date" class="form-control" id="deadline"
					name="deadline" placeholder="生效日期：" ></input>

			</div>
		</div>
		
 		<div class="form-group">
			<label class="col-sm-2 control-label" for="describe">备注：</label>
			<div class="col-sm-4">
				 <textarea id="describe"  name="describe"  class="form-control" rows="3"></textarea>
					
				
			</div>
		</div>
		
 
		<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary" onclick="">提交</button>
			<button type="reset" class="btn btn-primary">重置</button>
		</div>
		</div>
		
		
	</form>


</body>
<html>