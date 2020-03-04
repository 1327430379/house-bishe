<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="images/favicon.ico"  />
<link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico"  />


<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
   
    <script src="${pageContext.request.contextPath}/js/lib.js"></script>
    <style type="text/css">
    #searchBar .search-input {
    width: 210px;
    height: 20px;
    line-height: 20px;
    padding: 4px 10px;
    border-width: 1px 0px 1px 1px;
    border-style: solid none solid solid;
    border-color: #C3C3C3 -moz-use-text-color #C3C3C3 #C3C3C3;
    -moz-border-top-colors: none;
    -moz-border-right-colors: none;
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    border-image: none;
	}
    
    </style>
</head>
<body>
<!-- 头部 -->
<div id="header">
    <!-- 顶部工具栏 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer.min.js"></script>
<style>
.city_div{width: 592px; height: 280px; float: left; background: #ccc;}
.encheck{border: 1px dashed #ccc; width: 168px; height: 53px; line-height:55px; margin:5px; float: left; background-color: #fff; text-align: center; color: #515151; font-size: 18px; cursor: pointer;}
.encheck:HOVER{border: 1px solid #ccc;}
.check{width: 170px; height: 55px; line-height:55px; margin: 5px; float: left; background:url("${pageContext.request.contextPath}/images/city_check.jpg") left center no-repeat; text-align: center; color: #fff; font-size: 18px;cursor: pointer;}
</style>
<div class="header-top">
  <div class="header-top-inner">
       <div class="top-nav-r"> 
	         <a href="index/index/yidong.html" style="color:#F00"><img src="${pageContext.request.contextPath}/images/shouji.jpg" style="vertical-align:middle" alt="移动租房网" >&nbsp;移动租房网</a>
        <span class="line">|</span>
    	
    	<c:if test="${user == null }"> <a href="<%=basePath %>jsp/login.jsp">登录</a></c:if>
<c:if test="${user!= null }"><a href="<%=basePath %>myInfo.do">${currentUser }</a><span class="line">|</span>
<a href="<%=basePath %>logout.do">注销</a></c:if>

        <span class="line">|</span>
    	<a href="${pageContext.request.contextPath}/jsp/addCustomer.jsp">房客注册</a>
        <span class="line">|</span>
        <a href="${pageContext.request.contextPath}/jsp/idcard.jsp" target="_blank">房东注册</a>
	    </div>

  </div>
</div>
<!-- /顶部工具栏 -->
<div class="header-main">
  <div class="header-main-inner">
    
    <div class="header-main-l">
      <h1 class="logo"> <a href="/"  title="租房网"> <img src="${pageContext.request.contextPath}/images/logo.png"  alt="租房网Logo" /> </a> </h1>
      <div class="city-wrap" widget="tooltip" data-param='{"hoverClassName":"city-hover"}'> 
        <!-- 当前定位城市 -->
        <div class="city-locate" href="javascript:;">
          <p class="city-name">福建</p>
          <p class="toggle-city">切换城市</p>
        </div>
        <!-- /当前定位城市 --> 
        <!-- 城市列表弹层 -->
        <!-- /城市列表弹层 --> 
      </div>
      <div class="slogan" style="height:28px; overflow:hidden;margin-top: 64px;">
       	<%-- <img src="${pageContext.request.contextPath}/images/slogan.png"  alt=""> --%>
      </div>
      <!--  居联邦-->
      <div class="slogan" style="height:45px; overflow:hidden;margin-top: 46px;">
      	<a href="#"><img src="${pageContext.request.contextPath}/images/yidong.png" width="" height="100"  alt="移动租房网"></a>
      </div>
      
    </div>
    
    <div class="header-main-r" style="height: 50px; padding-top: 39px;">
    	<a href="#" style="font-family: 'Hiragino Sans GB','Microsoft Yahei UI','Microsoft Yahei','微软雅黑','Segoe UI',Tahoma,'宋体b8b\4f53',SimSun,sans-serif; color: #888; text-decoration: none;">
    	<img src="${pageContext.request.contextPath}/images/chengnuo.png">房地产中介诚信服务承诺</a>
    </div>
  </div>
</div>
<!-- 导航栏 -->
<div id="nav">
  <div class="nav-inner" style="overflow:hidden"> 
    <!-- 主菜单 -->
   <ul class="menu-main">
      <li class="menu-item current"> <a class="in" href="<%=basePath %>jsp/login.jsp" >首页</a> </li>   
      
    
           
       <li class="menu-item"> <a class="in" href="<%=basePath %>indexlist.do">租房</a> </li>
   
      
  
  
   
      <li class="menu-item"> <a class="in" href="<%=basePath %>jsp/customer_guide.jsp" target="_blank">房客指南</a>
    <li class="menu-item"> <a class="in" href="<%=basePath %>jsp/provider_guide.jsp" target="_blank">房东指南</a>
      
   
    
      <!-- crz 0612 -->
    
      <li class="menu-item "> <a class="in" target="_blank" href="http://www.zhaikj.com">装修家居</a> </li>
      
	  
	   <li class="menu-item" style="float:right"> <a class="in" style="padding:0 0 0 26px;" target="_blank" href="<%=basePath %>jsp/addProvider.jsp">加入我们</a> </li>
	     <li class="menu-item "> <a class="in" href="javascript:void(0)">房产百科</a> </li>
	      <li class="menu-item " style="float:right"> <a class="in"  target="_blank" href="<%=basePath %>jsp/about_us.jsp">关于我们</a> </li>
    </ul>
    <!-- /主菜单 --> 
    
    
  </div>
</div>
<script type="text/javascript">
	$(function(){
		$(".city-wrap").click(function(){
			$.layer({
			    type: 1,   //0-4的选择,（1代表page层）
			    area: ['592px', '318px'],
			    shade: [0.7,'#000'],  //不显示遮罩
			    border: [0], //不显示边框
			    title: [
			        '请选择城市',
			        //自定义标题风格，如果不需要，直接title: '标题' 即可
			        'border:none; background:#D9261f; color:#fff; font-size:18px;' 
			    ],			   
			    page: {html : '<div style="width: 572px; height: 261px; float: left;padding:10px;"><ul style="width: 572px; height: 261px; float: left;" id="city_ul"><li class="check" area_id=2>福建</li><li class="encheck" area_id=1650>南宁</li></ul></div>'},
			    shift: 'top', //从上动画弹出
			    shadeClose :true,
			    closeBtn:[1,true]
			    
			});  
			});

		$("#city_ul li").live('click',function(){
			
			var flag_city = $(this).attr('area_id');
			var city_name = $(this).html();		
			var ym = 'www';
			if(city_name == '福建'){
				ym = 'gl';
				}else if(city_name == '南宁'){
					ym = 'nn';
					}
				location.href = 'http://'+ym+'.91jlb.com/';			
			
		});
		
		
		});
</script>
<!-- 导航栏 --></div>
<!-- /头部 -->

<!-- 主内容区 -->
<div id="section" class="section clearfix">
    <div class="login">
        <form action="<%=basePath %>login.do" method="post" class="form-login registerform" data-code=""  style="background-color: #fff;">
             
			  
            <p><label for="name">用户名</label><span class="form-tips"></span></p>
            <input type="text" name="name" datatype="s11-11" nullmsg="请填写用户名" errormsg="请填写正确的用户名"
                   class="name inputxt" placeholder="请输入手机号" value="司命">

            <div class="Validform_checktip"></div>

            <p><label for="password">用户密码</label><span class="form-tips">用户名不正确</span></p>
            <input type="password" name="password" datatype="s6-32" unllmsg="请填写密码" errormsg="密码长度至少六位" class="name"
          value="123456"         placeholder="请输入密码">
				   
				   <p><label for="role">用户角色</label></p>
            <select id = "role" name="role" class="name">  
                    
                   
                    <option value="customer">租户</option>  
					 <option value="provider">房主</option>  
					<option value="admin">管理员</option>  
                  
                </select>  
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label><a href="">忘记密码？</a></label>


            <input class="btn-login" type="submit" value='登录' style="height: 40px">
              
        </form>
    </div>
</div>


<script>


    $(function () {
        $('#vcode').click(function () {
//            alert("index/customer/verify.html");
            var timestamp = Date.parse(new Date())
            $(this).attr('src', "#" + '?t=' + timestamp);
        }).css({"cursor": "pointer"});
    });

</script>

<!-- /主内容区 -->

<!-- 页脚 -->
<div id="footer">
      
  <div style="clear:both"></div>
  <!-- 平台保障安全 -->
  <div class="sg-area">
    <ul class="safeguard clearfix" style="width:960px;">
    	<li style="width:25%">
        	<div style="float:left; width:90px; height:75px;">
            	<img src="${pageContext.request.contextPath}/images/p1.jpg" alt="涵盖全市所有真实在售房源"/>
            </div>
            <div style="float:left">
            	<p style="width:120px; color:#000000; font-size:22px;"><b>房源全面</b></p>
                <p style="width:120px; line-height:20px;">涵盖全市所有真实在售房源</p>
            </div>
            <div style="clear:both"></div>
        </li>
        <li style="width:25%">
        	<div style="float:left; width:90px; height:75px;">
            	<img src="${pageContext.request.contextPath}/images/p2.jpg" alt="承诺所有房源绝无虚假保证真实在售"/>
            </div>
            <div style="float:left; ">
            	<p style="width:120px; color:#000000; font-size:22px;"><b>真实可信</b></p>
                <p style="width:120px; line-height:20px;">承诺所有房源绝无虚假保证真实在售</p>
            </div>
            <div style="clear:both"></div>
        </li>
        <li style="width:25%">
        	<div style="float:left; width:90px; height:75px;">
            	<img src="${pageContext.request.contextPath}/images/p3.jpg" alt="最优秀的前20%置业顾问为您服务" />
            </div>
            <div style="float:left;margin-left:10px;">
            	<p style="width:120px; color:#000000; font-size:22px;"><b>专业服务</b></p>
                <p style="width:120px; line-height:20px;">最优秀的前20%置业顾问为您服务</p>
            </div>
            <div style="clear:both"></div>
        </li>
        <li style="width:25%">
        	<div style="float:left; width:90px; height:75px;">
            	<img src="${pageContext.request.contextPath}/images/p4.jpg" alt="诚信经营，为买卖双方公平交易而努力" />
            </div>
            <div style="float:left">
            	<p style="width:120px; color:#000000; font-size:22px;"><b>公平至诚</b></p>
                <p style="width:120px; line-height:20px;">诚信经营，为买卖双方公平交易而努力</p>
            </div>
            <div style="clear:both"></div>
        </li>
       
    </ul>
  </div>
  <div style="clear:both"></div>
  <div class="link" style="width:960px; margin:0 auto; margin-top:30px; margin-bottom:20px;">
        <div style="color: #515151;float: left;font-weight: 700;">友情链接:</div>
        <div style="float:left; width:900px;">
                    <a href="http://gl.ganji.com/fang1/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">赶集租房</a>
                    <a href="http://gl.58.com/chuzu/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">58同城租房</a>
                    <a href="http://www.jiyangfc.com" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">济阳房产网</a>
                    <a href="http://zu.wuxi.fang.com/house-a0775/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">新区租房</a>
                    <a href="http://www.uoko.com/rent/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">成都租房信息</a>
                    <a href="http://shop.xian.fang.com/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">西安商铺</a>
                    <a href="http://zu.sjz.fang.com" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">石家庄租房</a>
                    <a href="http://dandong.58.com/ershoufang" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">丹东二手房网</a>
                    <a href="http://zu.zz.fang.com/house-a0842-b012287/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">祭城租房</a>
                    <a href="http://www.office8008.com/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">北京创意园</a>
                    <a href="http://bj.gerenfangyuanwang.com" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">北京个人房源网 </a>
                    <a href="http://esf.taizhou.fang.com/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">泰州搜房网二手房</a>
                    <a href="http://deyang.loupan.com/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">德阳房产</a>
                    <a href="http://hangzhou.fangtoo.com/es/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">杭州二手房</a>
                    <a href="http://hangzhou.fangtoo.com/cz/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">杭州租房</a>
                  </div>
        <div style="clear:both"></div>
  </div>
  <div style="clear:both"></div>
  <div class="footer-inner "> 
    <!-- 版权及其它 -->
    <div class="copyright">
      <p class="other-links"> 
      	<a href="#"  target="_blank">关于我们</a> <span>|</span> 
        <a href="#"  target="_blank">联系我们</a> <span>|</span> 
        <a  href="#"   target="_blank">用户协议</a> <span>|</span> 
        <a  href="#"   target="_blank">使用帮助</a> <span>|</span> 
        <a  href="#"  target="_blank">答疑解惑</a> <span>|</span>
        <a  href="#"   target="_blank">房产百科</a>
        <!-- <span>|</span>
            <a href="/house/list" target="_blank">深圳楼盘大全</a> --> 
      </p>
      <p>邮箱: 1468566633@qq.com         客服热线: 0773-672000 </p>
      <p>Copyright © 2009-2011 All Rights Reserved</p>
      <p>版权所有 福建</p>
      <p><a href=""  target="_blank">桂ICP备140645603384号</a></p>
    </div>
    <!-- /版权及其它 --> 
  </div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?6774dff22a937592a1059120db15ca07";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>



<script>
$(function(){
	$(".scroll_top").click(function(){
		
		$(window).scrollTop(0);
	});
})

</script></div>


<script src="${pageContext.request.contextPath}/js/lib/require.js"></script>
<!--<script src="--><? //=C("index_tpl")?><!--js/login.js"></script>-->
<script src="${pageContext.request.contextPath}/js/order.js"></script>

<!-- 访问统计-->

<noscript><img src="//stats.ipinyou.com/adv.gif?a=6M..Ros_D0mqCULXHFjwTxg340&e=" style="display:none;"/></noscript>

<!-- /脚本文件 -->
</body>
</html>
