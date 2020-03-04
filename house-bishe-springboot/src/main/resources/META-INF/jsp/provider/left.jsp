<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active");
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
});	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>房屋租赁网</div>
    
    <dl class="leftmenu">
        
    <dd>
   <div class="title">
    <span><img src="images/leftico01.png" /></span>房屋信息
    </div>
    	<ul class="menuson">
       
        <li class="active"><cite></cite><a href="<%=basePath %>jsp/provider/houselist.jsp" target="rightFrame">房屋信息</a><i></i></li>
        <li><cite></cite><a href="<%=basePath %>jsp/provider/addHouse.jsp" target="rightFrame">添加房屋</a><i></i></li>
        <li><cite></cite><a href="<%=basePath %>jsp/provider/agreelist.jsp" target="rightFrame">合同信息</a><i></i></li>
        <%--  <li><cite></cite><a href="<%=basePath %>jsp/provider/house_freelist.jsp"  target="rightFrame">添加合同</a><i></i></li>
          <li><cite></cite><a href="<%=basePath %>jsp/provider/addImg.jsp"  target="rightFrame">添加图片</a><i></i></li> --%>
         
        </ul>    
    </dd>
        
    
    <dd>
      <div class="title">
    <span><img src="images/leftico02.png" /></span>基本信息
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="<%=basePath %>jsp/provider/customerlist.jsp" target="rightFrame">我的顾客信息</a><i></i></li>
		  
        <li><cite></cite><a href="<%=basePath %>jsp/provider/proplist.jsp"  target="rightFrame">房屋物业信息</a><i></i></li>
        <li><cite></cite><a href="<%=basePath %>jsp/provider/Comment.jsp"  target="rightFrame">房屋评论信息</a><i></i></li>
        <li><cite></cite><a href="<%=basePath %>jsp/provider/qiuzulist.jsp" target="rightFrame">求租信息</a><i></i></li>
          
        </ul>     
    </dd> 
    
    
<dd><div class="title"><span><img src="images/leftico03.png" /></span>个人信息</div>
    <ul class="menuson">
     
        <li><cite></cite><a href="<%=basePath %>jsp/provider/info.jsp" target="rightFrame">我的信息</a><i></i></li>

        <li><cite></cite><a href="<%=basePath %>jsp/provider/password.jsp" target="rightFrame">修改密码</a><i></i></li>
       
    </ul>    
    </dd>  
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>聊天列表</div>
    <ul class="menuson">
     
        <li><cite></cite><a href="<%=basePath %>jsp/provider/contact.jsp" target="rightFrame">聊天</a><i></i></li>
       
<li><cite></cite><a href="<%=basePath %>notice/myRece" target="rightFrame">收件箱</a><i></i></li>
   <li><cite></cite><a href="<%=basePath %>notice/mySend" target="rightFrame">发件箱</a><i></i></li> 
    <li><cite></cite><a href="<%=basePath %>provider/frendlist_p" target="rightFrame">发送讯息</a><i></i></li> 
    </ul>    
    </dd>  
      
    
    </dl>
    
</body>
</html>

