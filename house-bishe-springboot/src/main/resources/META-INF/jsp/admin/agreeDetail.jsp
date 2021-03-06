<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 合同详情，这里管理好像有点问题 ,就是这个update,-->
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
		action="${pageContext.request.contextPath}/admin/updateAgree">


<input type="hidden" class="form-control" id="house_id"
					name="agreement_id" placeholder="合同编号" value="${a.agreement_id }" readonly="readonly"></input>
					
					
			<div class="form-group">
			<label class="col-sm-2 control-label" for="house_id">租房编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="house_id"
					name="house_id" placeholder="地址" value="${a.house_id}" ></input>
				
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="provider_id">顾客编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="provider_id"
					name="provider_id" placeholder="顾客id" value="${a.customer_id}" ></input>
				
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="provider_id">房东编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="provider_id"
					name="provider_id" placeholder="顾客id" value="${a.provider_id}" ></input>
				
			</div>
		</div>

	

			
		
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="fee">租金：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="fee"
					name="fee" placeholder="租金" value="${a.fee}"
					></input>
				
			</div>
		</div>
		
			<div class="form-group">
			<label class="col-sm-2 control-label" for="paid_rent">已付金额：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="paid_rent"
					name="paid_rent" placeholder="已付金额"   value="${a.paid_rent}"></input>		
				
			</div>
		</div>
		
		
<div class="form-group">
            <label class="col-sm-2 control-label" for = "status">合同状态：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="status" id="status" value="生效" <c:if test="${a.status eq '生效'}"> checked="checked"</c:if>><span>生效</span>
						<input type="radio" name="status"  id="status" value="失效" <c:if test="${a.status eq '失效'}"> checked="checked"</c:if>><span>失效</span>
			<input type="radio" name="status"  id="status" value="已支付" <c:if test="${a.status eq '已支付'}"> checked="checked"</c:if>><span>已支付定金</span>
			</label>					
           </div>  
        </div>  
		
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="creatime">创建日期：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="creatime"
					name="creatime" placeholder="生效日期：" value="${a.creatime}" readonly="readonly"></input>
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="starttime">生效日期：</label>
			<div class="col-sm-4">
				<input type="date" class="form-control" id="starttime"
					name="starttime" placeholder="生效日期：" value="${a.starttime}"></input>
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="deadline">失效日期：</label>
			<div class="col-sm-4">
				<input type="date" class="form-control" id="deadline"
					name="deadline" placeholder="生效日期："  value="${a.deadline}"></input>
			</div>
		</div>
		
		
		
 		<div class="form-group">
			<label class="col-sm-2 control-label" for="description">备注：</label>
			<div class="col-sm-4">
				 <textarea id="description"  name="description"  class="form-control" rows="3">${a.description}</textarea>
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