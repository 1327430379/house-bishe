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
	<form  name="form1" class="form-horizontal" method="post">
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="property_id">物业编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="property_id"
					name="property_id" placeholder="住房编号" 
					value="${p.property_id}"  readonly></input>

			</div>
		</div>
		

		<div class="form-group">
			<label class="col-sm-2 control-label" for="house_id">住房编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="house_id"
					name="house_id" placeholder="住房编号" 
					value="${p.house_id} "  readonly></input>

			</div>
		</div>
		
		
		

	<%-- 	<div class="form-group">
			<label class="col-sm-2 control-label" for="customer_id ">地址：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="customer_id "
					name="customer_id " placeholder="地址" 
					value="${customer_id }"></input>
				
			</div>
		</div> --%>
		
	
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="pro_fee">物业费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="pro_fee"
					name="pro_fee" placeholder="物业费：" 
					value="${p.pro_fee }"></input>
				
			</div>
		</div>
		
		
<div class="form-group">
			<label class="col-sm-2 control-label" for="water_rent">水费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="water_rent"
					name="water_rent" placeholder="水费：" 
					value="${p.water_rent }"></input>
				
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="sanitary_fee">卫生费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="sanitary_fee"
					name="sanitary_fee" placeholder="卫生费：" 
					value="${p.sanitary_fee }"></input>
				
			</div>
		</div>
	 
<div class="form-group">
			<label class="col-sm-2 control-label" for="elevator">电梯费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="elevator"
					name="elevator" placeholder="电梯费：" 
					value="${p.elevator }"></input>
				
			</div>
		</div>
	 

		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="power">电费：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="power"
					name="power" placeholder="电费：" 
					value="${p.power }"></input>
				
			</div>
		</div>
		
		
		<div class="form-group">
            <label class="col-sm-2 control-label" for = "status">物业状态：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="status" id="status" value="未缴费" <c:if test="${p.status eq '未缴费'}"> checked="checked"</c:if>><span>已缴</span>
						<input type="radio" name="status"  id="status" value="已缴费" <c:if test="${p.status eq '已缴费'}"> checked="checked"</c:if>><span>未缴</span>
			</label>					
           </div>  
        </div>  
        
        <div class="form-group">
			<label class="col-sm-2 control-label" for="deadline">截至日期：</label>
			<div class="col-sm-4">
				<input type="date" class="form-control" id="deadline"
					name="deadline" 
					value="${str }"></input>
				
			</div>
		</div>
        
		
		<!-- <div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary" onclick="">提交</button>
			<button type="reset" class="btn btn-primary">重置</button>
		</div>
		</div>
		 -->
		
	</form>


</body>
<html>