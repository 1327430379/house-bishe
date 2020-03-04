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
	<style>
	table{
	margin-left: auto; 
	margin-right: auto;

	}
	#table1{
	text-align:left;
	}
		
	#idh{
		text-align:center;
	}
    
        input{
            border: none;
        }
        td{
            text-align: center;
        }
        .mydiv{
            width: 60%;
            margin-left: 20%;
            margin-right: 20%;
            margin-top: 5%;
            float: left;
        }
    </style>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="table-responsive mydiv">
    <form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/customer/updateInfo" enctype="multipart/form-data">
        <table class="table table-bordered">
            <tr>
                <!-- <td rowspan="6" colspan="2" class="myimg"> -->
                <td rowspan="6"  colspan="2"  width="30%" >
                    <img src="/head/${sessionScope.user.img }" id="img0" width="300" height="300" >
                </td>
                <td>姓名</td>
                <td><input type="text" name="name" value="${sessionScope.user.name }" readonly></td>
            </tr>
            <tr>
                <td>昵称</td>
                <td><input type="text" name="nickname" value="${sessionScope.user.nickname}" ></td>
            </tr>
            <tr>
                <td>身份证号</td>
                <td><input type="text" name="idcard" value="${sessionScope.user.idcard }" readonly></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><input type="text" name="sex" value="${sessionScope.user.sex }"></td>
            </tr>
            <tr>
                <td>手机</td>
                <td><input type="text" name="mobile" value="${sessionScope.user.mobile }"></td>
            </tr>
            <tr>
                <td>QQ</td>
                <td><input type="text" name="qq" value="${sessionScope.user.qq }"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input type="file" name="headImage" id="headImage"/>
                </td>
                <td>job</td>
                <td><input type="text" name="job" value="${sessionScope.user.job }"></td>
            </tr>
            <tr>
                <td colspan="4" rowspan="3">
                    <h5>个人描述</h5>
                    <textarea name="descpt" style="width: 100%;height: 100%;border:none;overflow:hidden">你好，我是一个非常好的房东，我以我的人格来保证，我绝对不会做出欺诈顾客的行为，希望你能喜欢上我的房屋，记得一定要好评喏</textarea>
                </td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr>
                <td colspan="5">
                    <button type="submit" class="btn btn-primary">确认修改</button>
                </td>
            </tr>
        </table>
    </form>
</div>
<script>
    $("#headImage").change(function(){
        var objUrl = getObjectURL(this.files[0]) ;
        if (objUrl) {
            $("#img0").attr("src", objUrl) ;
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
</html>