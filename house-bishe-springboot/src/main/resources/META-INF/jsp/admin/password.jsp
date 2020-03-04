<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	

  <link href="${pageContext.request.contextPath}/css/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/css/bootstrapValidator.min.css" rel="stylesheet" >
		<title>修改密码</title>
		
		
		<script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/js/bootstrapValidator.min.js"></script>
	

<script type="text/javascript">
		
	 function validate() {
	 
              var pwd1 = $("#p1").val();//
              var pwd2 =$("#p2").val();
		
              if(pwd1 == pwd2) {
                  document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
                 // document.getElementById("submit").disabled = false;
             // alert("1");
			  }
              else {
                  document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
              //  document.getElementById("submit").disabled = true;
            

          }
}
		</script>

		</head>
		
	<body style="padding: 20px;"> 
	
	<div  id="ForgetPassword"  >
         <div class="loginDiv" align="center">
                <form name="Login" id="Login" method="post" >
                    <div class="form-group">
                        <div class="input-group col-sm-4">
                            <span class="input-group-addon">旧密码&nbsp&nbsp&nbsp</span>
                            <input name="oldpassword"  id="old" type="password"    class="form-control" placeholder="旧密码" >
                            <!--<span class="help-block" id="UsernameMessage" /> -->
                        </div><br />
                    </div><!-- /form-group-->
                    <div class="form-group">
                        <div class="input-group col-sm-4">
                            <span class="input-group-addon">新密码&nbsp&nbsp&nbsp</span>
                            <input name="password1" type="password" id="p1"   class="form-control"     placeholder="新密码">
                            <!--<span class="help-block" id="PasswordMessage" /> -->
                        </div>
                    </div>
					
					<div class="form-group">
                        <div class="input-group col-sm-4">
                            <span class="input-group-addon">再次输入</span>
                            <input name="password2" type="password" id="p2" class="form-control"  placeholder="新密码"  onkeyup="validate()">
                        
                        </div>
                    </div><!-- /form-group-->
					
                    <span>请将如下计算结果填入文本框内：</span> <span id="tishi"></span>
					<br /><br/>
                    <div class="form-group">
                        <div class="input-group col-sm-4">
                            <span class="input-group-addon" id="captchaOperation"></span>
                            <input name="captcha" type="text" class="form-control" placeholder="验证码" >
                           
                        </div><br />
                    </div>
                    <br />
                    <div class="form-group" style="margin-bottom: 10%">
                        <div class="col-xs-4 col-xs-offset-4 ">
                            <button type="button" id="submit2"  onclick="chang()" class="btn btn-sm btn-info"  >修改</button>
                       <button type="reset" class="btn btn-sm btn-info">重置</button>
						 
						</div>
                    </div>
                </form>
				
            </div>
		</div>
	
	
	

	
<script type="text/javascript">
    $(document).ready(function() {

        function randomNumber(min, max) {
            return Math.floor(Math.random() * (max - min + 1) + min);
        };
        function generateCaptcha2() {
            $('#captchaOperation').html([randomNumber(1, 50), '+', randomNumber(1, 50), '='].join(' '));
        };
        generateCaptcha2();
        $('#Login')
                .bootstrapValidator({

                    fields: {
                        password1: {
                            message: 'The username is not valid',
                            validators: {
                                notEmpty: {
                                    message: '密码不能为空'
                                },
                                stringLength: {
                                    min: 3,
                                    max: 10,
                                    message: '密码长度在3到10'
                                },
                             
                               
                            }
                        },
                        password2: {
                            validators: {
                                notEmpty: {
                                    message: '密码不能为空'
                                }
                            }
                        },
                        captcha: {
                            validators: {
                                callback: {
                                    message: '验证码错误',
                                    callback: function(value, validator) {
                                        var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
                                        return value == sum;
                                    }
                                }
                            }
                        }
                    }
                })
                .on('error.form.bv', function(e) {
                    var $form = $(e.target),
                            bootstrapValidator = $form.data('bootstrapValidator');
                    if (!bootstrapValidator.isValidField('captcha')) {

                        generateCaptcha2();
                    }
                });
    });
</script>
<script type="text/javascript">


chang=function(){
	alert("22");
  var old=$("#old").val();
  var p1=$("#p1").val();

   $.ajax({
    url:"<%=basePath%>admin/changPass" ,//+baodan_no 
    data:{
   old:old,
   p1:p1
   
    },//提交的数据
    type:"POST",//提交的方式
    ContentType:"application/json; charset=UTF-8",
    dataType:"text", //返回类型 TEXT字符串 JSON XML
    async :false,   //注意：此处是同步，不是异步
    success:function(msg){//msg是servlet返回的
   alert(msg);
						}
					});

		};
	</script>
	</body>
	</html>