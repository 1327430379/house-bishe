<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

</head>
<body>

				<form  name="form1" class="form-horizontal" method="post"  action="<%=basePath %>admin/updateStaff">
		<div class="form-group">
			<label class="col-sm-2 control-label" for="staff_id">员工姓名：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="staff_id"
					name="staff_id" placeholder="员工姓名" 
					value="${s.staff_id }"  readonly></input>

			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label" for="name">员工姓名：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name"
					name="name" placeholder="员工姓名" 
					value="${s.name }"  ></input>

			</div>
		</div>
		
		
	
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="position">职位：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="position"
					name="position" placeholder="职位：" 
					value="${s.position }"></input>
				
			</div>
		</div>
		
		

		
		
		<div class = "form-group">  
            <label class="col-sm-2 control-label" for = "department">部门：</label>  
            <div class="col-sm-4">  
                <select id = "department" name="department" class = "form-control">  
                    <option value="电力部" <c:if test="${htest.qu=='电力部'}"> selected</c:if>>电力部</option>  
                    <option value="水利部" <c:if test="${htest.qu=='水利部'}"> selected</c:if>>水利部</option> 
                    <option value="物业部" <c:if test="${htest.qu=='物业部'}"> selected</c:if>>物业部</option> 
                    <option value="接待部" <c:if test="${htest.qu=='接待部'}"> selected</c:if>>接待部</option>     
                </select>  
            </div>  
        </div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="mobile">手机号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="mobile"
					name="mobile" placeholder="卫生费：" 
					value="${s.mobile }"></input>
				
			</div>
		</div>
	 
<div class="form-group">
			<label class="col-sm-2 control-label" for="email">邮箱：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="email"
					name="email" placeholder="邮箱" 
					value="${s.email }"></input>
				
			</div>
		</div>
	 

		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="service">任务：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="service"
					name="service" placeholder="任务：" 
					value="${s.service }"></input>
				
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="description">描述·：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="description"
					name="description" placeholder="描述：" 
					value="${s.description }"></input>
				
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
</html>