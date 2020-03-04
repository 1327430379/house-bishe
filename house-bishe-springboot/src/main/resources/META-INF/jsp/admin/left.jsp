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
<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="<%=basePath %>js/jquery.js"></script>

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
    <span><img src="<%=basePath %>images/leftico01.png" /></span>房屋信息
    </div>
    	<ul class="menuson">
      <!--  class="active" -->
       <li ><cite></cite><a href="<%=basePath %>jsp/admin/housechecklist.jsp" target="rightFrame">审核房屋</a><i></i></li>
        <li ><cite></cite><a href="<%=basePath %>admin_houselist" target="rightFrame">房屋信息</a><i></i></li>
      
      
         <li><cite></cite><a href="<%=basePath %>jsp/admin/Propertylist.jsp"  target="rightFrame">物业信息</a><i></i></li>
           <li><cite></cite><a href="<%=basePath %>jsp/admin/addProperty_index.jsp"  target="rightFrame">添加物业信息</a><i></i></li>
             <li><cite></cite><a href="<%=basePath %>jsp/admin/commentlist.jsp" target="rightFrame">房屋评论信息</a><i></i></li>
        
        </ul>    
    </dd>
        
    
    <dd>
      <div class="title">
    <span><img src="<%=basePath %>images/leftico02.png" /></span>基本信息
    </div>
    <ul class="menuson">
    <li><cite></cite><a href="<%=basePath %>jsp/admin/adviselist.jsp" target="rightFrame">建议信息</a><i></i></li>
        <li><cite></cite><a href="<%=basePath %>jsp/admin/customerlist.jsp" target="rightFrame">顾客信息</a><i></i></li>
		   <li><cite></cite><a href="<%=basePath %>jsp/admin/providerlist.jsp" target="rightFrame">房主信息</a><i></i></li>
        <li><cite></cite><a href="<%=basePath %>jsp/admin/agreelist.jsp"  target="rightFrame">合同信息</a><i></i></li>
           
         <li><cite></cite><a href="<%=basePath %>jsp/admin/stafflist.jsp"  target="rightFrame">员工信息</a><i></i></li>
          
        </ul>     
    </dd> 
    
    
<dd><div class="title"><span><img src="<%=basePath %>images/leftico03.png" /></span>个人信息</div>
    <ul class="menuson">
     
        <li><cite></cite><a href="<%=basePath %>jsp/admin/info.jsp" target="rightFrame">我的信息</a><i></i></li>
        <li><cite></cite><a href="<%=basePath %>jsp/admin/password.jsp" target="rightFrame">修改密码</a><i></i></li>
       
    </ul>    
    </dd>  
    
    
      
    
    </dl>
    
</body>
</html>

