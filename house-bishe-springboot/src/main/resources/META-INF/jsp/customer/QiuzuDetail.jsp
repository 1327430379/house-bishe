<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" 
 href="${pageContext.request.contextPath}/css/css/bootstrap.css" />
<title>Insert title here</title>
</head>
<body>

<form  name="form1" class="form-horizontal" method="post"
		action="${pageContext.request.contextPath}/customer/updateQiuzu">
		
		<input type="hidden" class="form-control" id="qiuzu_id" name="qiuzu_id" value="${q.qiuzu_id }"></input>
					
					

		<div class="form-group">
			<label class="col-sm-2 control-label" for="name">昵称：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name"
					name="name" placeholder="住房编号"  value="${q.name }"
					value="昵称" ></input>

			</div>
		</div>
		

		<div class="form-group">
			<label class="col-sm-2 control-label" for="contact">联系方式：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="contact"  value="${q.email}"
					name="contact" placeholder="顾客姓名：" value="1076930378@qq.com"
					></input>
				
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="house_type">房屋类型：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="house_type"
					name="house_type" placeholder="房子的户型："  value="${q.house_type }"
					></input>
				
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="area">面积：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="area"
					name="area" placeholder="面积"  value="${q.area }"
					></input>
				
			</div>
		</div>
		
			<div class="form-group">
			<label class="col-sm-2 control-label" for="price">价格：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="price"
					name="price" placeholder="价格"  value="${q.price }"
					></input>
				
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="description">描述：</label>
			<div class="col-sm-4">
				 <textarea   class="form-control" id = "description"   name="description"
                        placeholder = "描述："  onblur="" rows="3">${q.description }</textarea>
				
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