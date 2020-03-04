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
		action="BookUpdate">

		<div class="form-group">
			<label class="col-sm-2 control-label" for="house_id">住房编号：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="house_id"
					name="house_id" placeholder="住房编号" readonly
					value="${h.house_id }"></input>

			</div>
		</div>
		
		
		<%-- <div class="form-group">
			<label class="col-sm-2 control-label" for="provider_id">房主:</label>
			<div class="col-sm-4">
				<select id="provider_id" name="provider_id" class="form-control">
					<c:forEach var="p" items="${plist}">
						<option value="${h.provider_id}"
							<c:if test="${h.provider_id==h.provider_id}"> selected</c:if>><c:out
								value="${h.name}" />
						</option>
					</c:forEach>

				</select>
			</div>
		</div> --%>
		
		

		<div class="form-group">
			<label class="col-sm-2 control-label" for="address">地址：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="address"
					name="address" placeholder="地址" 
					value="${h.address }"></input>
				
			</div>
		</div>
		
	<div class="form-group">
			<label class="col-sm-2 control-label" for="type">住房类型</label>
			<div class="col-sm-4">
				<select id="type" name="type" class="form-control">
					<option value="一室"
						<c:if test="${h.type=='一室'}"> selected</c:if>>一室</option>
					<option value="一室一厅"
						<c:if test="${h.type=='一室一厅'}"> selected</c:if>>一室一厅</option>
					<option value="一室一厨"
						<c:if test="${h.type=='一室一厨'}"> selected</c:if>>一室一厨</option>
					<option value="一室一厅一厨"
						<c:if test="${h.type=='一室一厅一厨'}"> selected</c:if>>一室一厅一厨</option>
						<option value="两室一厅"
						<c:if test="${h.type=='两室一厅'}"> selected</c:if>>两室一厅</option>
						<option value="两室一厅一厨"
						<c:if test="${h.type=='两室一厅一厨'}"> selected</c:if>>两室一厅一厨</option>
						<option value="三室一厅一厨"
						<c:if test="${h.type=='三室一厅一厨'}"> selected</c:if>>三室一厅一厨</option>
				</select>
				
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="area">面积（平米）：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="area"
					name="area" placeholder="面积（平米）：" 
					value="${h.area }"></input>
				
			</div>
		</div>
		
		
<div class="form-group">
			<label class="col-sm-2 control-label" for="price">单价：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="price"
					name="price" placeholder="专业" 
					value="${h.price }"></input>
				
			</div>
		</div>
		
	 
<div class="form-group">
            <label class="col-sm-2 control-label" for = "status">房子状态：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="status" id="status" value="空闲" <c:if test="${h.status eq '空闲'}"> checked="checked"</c:if>><span>空闲</span>
						<input type="radio" name="status"  id="status" value="入住" <c:if test="${h.status eq '入住'}"> checked="checked"</c:if>><span>入住</span>
			</label>					
           </div>  
        </div>  

<div class="form-group">
            <label class="col-sm-2 control-label" for = "kitchen_ware">厨具：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="kitchen_ware" id="kitchen_ware" value="yes" <c:if test="${s.kitchen_ware eq 'yes'}"> checked="checked"</c:if>><span>yes</span>
						<input type="radio" name="kitchen_ware"  id="kitchen_ware" value="no" <c:if test="${s.kitchen_ware eq 'no'}"> checked="checked"</c:if>><span>no</span>
			</label>					
           </div>  
        </div>  
		
	<div class="form-group"> 
            <label class="col-sm-2 control-label" for = "Hot_shower">热水器：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="hot_shower" id="hot_shower" value="yes" <c:if test="${s.hot_shower eq 'yes'}"> checked="checked"</c:if>><span>yes</span>
						<input type="radio" name="hot_shower"  id="hot_shower" value="no" <c:if test="${s.hot_shower eq 'no'}"> checked="checked"</c:if>><span>no</span>
			</label>					
           </div>  
        </div>  
		
		<div class="form-group">
            <label class="col-sm-2 control-label" for = "wifi">wifi或有线网：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="wifi" id="wifi" value="yes" <c:if test="${s.wifi eq 'yes'}"> checked="checked"</c:if>><span>yes</span>
						<input type="radio" name="wifi"  id=wifi" value="no" <c:if test="${s.wifi eq 'no'}"> checked="checked"</c:if>><span>no</span>
			</label>					
           </div>  
        </div>  
		
	<div class="form-group">
            <label class="col-sm-2 control-label" for = "lift">电梯：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="lift" id="lift" value="yes" <c:if test="${s.lift eq 'yes'}"> checked="checked"</c:if>><span>yes</span>
						<input type="radio" name="lift"  id="lift" value="no" <c:if test="${s.lift eq 'no'}"> checked="checked"</c:if>><span>no</span>
			</label>					
           </div>  
        </div>  
	<div class="form-group">
            <label class="col-sm-2 control-label" for = "fridge">冰箱：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="fridge" id="fridge" value="yes" <c:if test="${s.fridge eq 'yes'}"> checked="checked"</c:if>><span>yes</span>
						<input type="radio" name="fridge"  id="fridge" value="no" <c:if test="${s.fridge eq 'no'}"> checked="checked"</c:if>><span>no</span>
			</label>					
           </div>  
        </div>  
        
     <div class="form-group">
            <label class="col-sm-2 control-label" for = "washing_machine">洗衣机：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="washing_machine" id="washing_machine" value="yes" <c:if test="${s.washing_machine eq 'yes'}"> checked="checked"</c:if>><span>yes</span>
						<input type="radio" name="washing_machine"  id="washing_machine" value="no" <c:if test="${s.washing_machine eq 'no'}"> checked="checked"</c:if>><span>no</span>
			</label>					
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