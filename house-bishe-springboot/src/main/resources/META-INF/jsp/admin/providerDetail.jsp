<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet" type="text/css" id="css" href="${pageContext.request.contextPath}/css/css/bootstrap.css" />
<title>添加信息</title>
<script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>

<script type="text/javascript">
</script>
</head>

<body style="padding: 20px;">
	<form  name="form1" class="form-horizontal" method="post"
		action="BookUpdate">

		<div class="form-group">
			<label class="col-sm-2 control-label" for="provider_id">房主编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="provider_id"
					name="provider_id" placeholder="房主编号" readonly
					value="${p.provider_id }"></input>

			</div>
		</div>
		
			<div class="form-group">
			<label class="col-sm-2 control-label" for="name">房主姓名：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name"
					name="name" placeholder="姓名" 
					value="${p.name }"></input>
				
			</div>
		</div>
	
		 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "sex">性别：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="sex" id="sex" value="男" <c:if test="${p.sex eq '男'}"> checked="checked"</c:if>><span>男</span>
						<input type="radio" name="sex"  id="sex" value="女" <c:if test="${p.sex eq '女'}"> checked="checked"</c:if>><span>女</span>
			</label>					
           </div>  
        </div>  
		
	
		
<div class="form-group">
			<label class="col-sm-2 control-label" for="mobile">手机号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="mobile"
					name="mobile" placeholder="专业" 
					value="${p.mobile }"></input>
				
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="address">地址：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="address"
					name="address" placeholder="地址" 
					value="${p.address }"></input>
				
			</div>
		</div>


	</form>


</body>
<html>