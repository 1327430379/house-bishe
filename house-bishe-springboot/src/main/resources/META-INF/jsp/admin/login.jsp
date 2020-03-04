<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" href="css/css/bootstrap.css"/>
<link rel="stylesheet" href="css/css/bootstrapValidator.min.css"/>
<link rel="stylesheet" href="css/css/style.css"/>

<script type="text/javascript" src="js/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="js/js/check.js"></script>
<style>
        .loginDiv{            margin-top: 10%;
        }
   </style>
</head>

<body style="background-image:url(img/background.jpg)">



	<div class="box">
		<div class="login-box">
		<center>
		<h3>商品进销存管理系统</h3></center>
			<div class="login-title text-center">
			
				<h1><small>登录</small></h1>
			</div>
			<div class="login-content ">
			
			<div class="form">
		 <form name="Login" id="Login" action="loginServlet" method="post" >
				<div class="form-group">
					<div class="col-xs-12  ">
						<div class="input-group">
							<span class="input-group-addon"><span >账号：</span></span>
							<input type="text" id="name" name="name" class="form-control"  placeholder="用户名" value="业务员1">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12  ">
						<div class="input-group">
							<span class="input-group-addon"><span>密码：</span></span>
							<input type="password" id="password" name="password" class="form-control"  placeholder="密码" value="123456">
						</div>
					</div>
				</div>
				
				     <span>请将如下计算结果填入文本框内：</span> <span id="tishi"></span>
					<br /><br/>
                    <div class="form-group">
                        <div class="input-group col-sm-11">
                            <span class="input-group-addon" id="captchaOperation"></span>
                            <input name="captcha" type="text" class="form-control" placeholder="验证码" width="100px" >
                            <!--<span class="help-block" id="UsernameMessage" /> -->
                        </div><br />
                    </div>
                    <br />
				
				
				
				 <div class="form-group">
		
		<div class="col-sm-offset-4 col-sm-10">
			<button type="submit" class="btn btn-primary" onclick="saveBill()">保存</button>
			<button type="reset" class="btn btn-primary">reset</button>
		</div>
		</div>
				
						
					
				<div class="form-group">
					<div class="col-xs-6 link">
						<p class="text-center remove-margin"><small>忘记密码？</small> <a href="register.jsp" ><small>注册</small></a>
						</p>
					</div>
					<div class="col-xs-6 link">
						<%-- <p class="text-center remove-margin"><font color="red">${message }</font> --%>
						</p>
					</div>
				</div>
			</form>
			</div>
		</div>
	</div>
</div>




	 <script>
    var swiper = new Swiper('.swiper-container', {
        loop: true,
        pagination: '.swiper-pagination',
        paginationClickable: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev'
    });
    </script>
	
	<script>
    $(function () { $('#myModal').modal({
        keyboard: true,
        show:false
    })});
</script>
<script type="text/javascript">
    $(document).ready(function() {
// Generate a simple captcha
        function randomNumber(min, max) {
            return Math.floor(Math.random() * (max - min + 1) + min);
        };
        function generateCaptcha() {
            $('#captchaOperation').html([randomNumber(1, 50), '+', randomNumber(1, 50), '='].join(' '));
        };
        generateCaptcha();
        $('#Login')
                .bootstrapValidator({
//message: 'This value is not valid',

                    fields: {
                        username: {
                            message: 'The username is not valid',
                            validators: {
                                notEmpty: {
                                    message: '账户不能为空'
                                },
                                stringLength: {
                                    min: 5,
                                    max: 10,
                                    message: '账号长度 11'
                                },
                                /*remote: {
                                 url: 'remote.php',
                                 message: 'The username is not available'
                                 },*/
                                regexp: {
                                    regexp: /^[0-9_\.]+$/,
                                    message: '只接受数字和字母 '
                                }
                            }
                        },
                        password: {
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
// The captcha is not valid
// Regenerate the captcha
                        generateCaptcha();
                    }
                });
    });
</script>

</body>
</html>
