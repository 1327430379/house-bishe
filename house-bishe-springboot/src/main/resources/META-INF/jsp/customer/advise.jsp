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
		action="${pageContext.request.contextPath}/addAdivse">
<input type="hidden" class="form-control" id="qiuzu_id" name="qiuzu_id" value=""></input>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="name">昵称：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name"
					name="name" placeholder="昵称：" 
					value="${sessionScope.user.nickname }" ></input>

			</div>
		</div>
		

		<div class="form-group">
			<label class="col-sm-2 control-label" for="email">联系方式：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="email"
					name="email" placeholder="联系方式：" value="735084770@qq.com"
					></input>
				
			</div>
		</div>
		
		 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "type">建议类型</label>  
            <div class="col-sm-4">  
                <select id = "type" name="type" class = "form-control">  
                      <option>租房咨询</option>
                    <option>平台建议</option>
                  
                    <option>投诉房东</option>
                      <option>合同问题</option>     
                   
                     <option>其它</option>    
                </select>  
            </div>  
        </div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="content">具体内容：</label>
			<div class="col-sm-4">
				 <textarea   class="form-control" id = "content"   name="content"
                        placeholder = "描述："  onblur="" rows="3">能确保房东可靠吗</textarea>
				
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