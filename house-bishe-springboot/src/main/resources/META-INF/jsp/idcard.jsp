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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/idcard/basic.css"/>

	
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/idcard/form.css"/>
		
	
<link rel="stylesheet" type="text/css" id="css" href="${pageContext.request.contextPath}/css/css/bootstrap.css" />
<title>添加信息</title>
<script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>


</head>
<body>
<p><h4>尊敬的用户，本平台是必须实名认证个人信息，请你务必上传个人真实个人身份证照片。</h4><p>
<p><h4>为了防止出现欺骗客户的行为，房东必须上传个人身份证</h4><p>
<br>
<br>
	<form action="${pageContext.request.contextPath}/uploadIdcard" method="post" action="${pageContext.request.contextPath}/uploadIdcard" enctype="multipart/form-data">
<div class="clearfix idcard">

    								<div class="fl">
    									<p class="title g-title">身份证正面照</p>
    									<div class="file">
    									    <input type="hidden" name="identityCertificateFrontImage" data-imgurl="" showcropbox="" title="身份证正面照" width="381" height="225" require="">
		    								<img src="${pageContext.request.contextPath}/css/idcard/idcard-1.jpg" id="img0">
											<div class="file-selecter">
												<div class="selecter">
													<img src="${pageContext.request.contextPath}/css/idcard/file_selecter.png" >
													<p>点击上传 <input class="file_input" type="file" id="qian" name="qian"></p>
												</div>
											</div>
											<!--<input type="file" accept="image/*" data-pass = "no" data-file="yes"/>-->
		    							</div>
		    							<div class="err-box">
		    								<div class="msg-box"></div>
		    							</div>
    								</div>
    								<div class="fl">
    									<p class="title g-title">身份证反面照</p>
    									<div class="file">
    									    <input type="hidden" name="identityCertificateBackImage" data-imgurl="" showcropbox="" title="身份证反面照" width="381" height="225" require="">
		    								<img src="${pageContext.request.contextPath}/css/idcard/idcard-2.jpg" id="img1">
											<div class="file-selecter">
												<div class="selecter">
													<img src="${pageContext.request.contextPath}/css/idcard/file_selecter.png">
													<p>点击上传 <input class="file_input" type="file" id="hou" name="hou"></p>
												</div>
											</div>
										
		    							</div>
		    							<div class="err-box">
		    								<div class="msg-box"></div>
		    							</div>
    								</div>
    							</div>
			
		
		<p class="line mt30"></p>
    	<button class="btn-green sub" type="submit"  style="width:100px;height:50px;">提交审核</button>
		
			</form>
					   <script src="js/jquery.min.js"></script>
								<script>
    $("#qian").change(function(){
        var objUrl = getObjectURL(this.files[0]) ;
        if (objUrl) {
            $("#img0").attr("src", objUrl) ;
        }
    }) ;
	
	$("#hou").change(function(){
        var objUrl = getObjectURL(this.files[0]) ;
        if (objUrl) {
            $("#img1").attr("src", objUrl) ;
        }
    }) ;
	
    function getObjectURL(file) {
        var url = null ;
        if (window.createObjectURL!=undefined) { // basic
            url = window.createObjectURL(file) ;
        } else if (window.URL!=undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file) ;
        } else if (window.webkitURL!=undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file) ;
        }
        return url ;
    }
</script>
								</body>












<%-- <body style="padding: 20px;">
	<p><h4>尊敬的用户，本平台是必须实名认证个人信息，请你务必上传个人真实个人身份证照片。租房过程中，房东房客都必须出示自己的身份证</h4><p>
	<form  name="form1" class="form-horizontal" method="post"
		action="${pageContext.request.contextPath}/uploadIdcard" enctype="multipart/form-data">
		
<div class="form-group">
			<label class="col-sm-2 control-label" for="qian">身份证前：</label>
			<div class="col-sm-4">
				<input type="file" id="qian" name="qian"  class="form-control"accept="image/png,image/jpeg" class="upload" />

			</div>
		</div>
		

		<div class="form-group">
			<label class="col-sm-2 control-label" for="hou">身份证后：</label>
			<div class="col-sm-4">
				<input type="file" id="hou" name="hou"  class="form-control"accept="image/png,image/jpeg" class="upload" />
				
			</div>
		</div>
		<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary" onclick="">提交</button>
			<button type="reset" class="btn btn-primary">重置</button>
		</div>
		</div>
		
		
	</form>


</body> --%>
</html>