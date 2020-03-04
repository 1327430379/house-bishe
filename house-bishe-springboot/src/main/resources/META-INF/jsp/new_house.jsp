<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPEW>
<html>
  <head>

<meta charset="utf-8" />
<title>
桂林二手房，视频看房，桂林二手房出售，桂林居联邦，桂林二手房网，找放心二手房上桂林居联邦</title>
<meta name="keywords" content="桂林二手房，视频看房，桂林二手房买卖，桂林居联邦，低价二手房" />
<meta name="description" content="桂林居联邦二手房网帮助您以最低的购房成本购买到最佳住宅。" />
<link rel="shortcut icon" href="/Application/Index/View/images/favicon.ico"  />
<link rel="icon" href="/Application/Index/View/images/favicon.ico"  />

<title>【桂林房产网__桂林房地产__桂林房地产交易平台】_居联邦</title>
<meta name="keywords" content="桂林二手房 桂林二手房买卖 桂林二手房交易" />
<meta name="description" content="桂林二手房带看,预约经纪人看房" />
<script type="text/javascript" src="js/jquery.min.js"></script><link rel="stylesheet" href="css/global.css" >
<link rel="stylesheet" href="css/page.css"/>
<script src="js/layer.min.js" type="text/javascript"></script><!--弹窗-->
<link href="css/layer.css" rel="stylesheet" type="text/css" />
<script src="/js/highcharts.js" type="text/javascript"></script>
<!--弹窗 css-->
<style>

.pointer{
	cursor:pointer;
}
.main2 {
	width:1190px;
	margin:0px auto 20px auto;
}
.fl{
	float:left;
}
.fr{
	float:right;
}
.cb{
	clear:both;
}
.sousuo2{
	width:750px;
	margin:15px auto;
}
.sousuo2 img{
	vertical-align:middle;
}
.sousuo2 .kuang{
	border:#d9261f solid 2px;
	border-left-width:3px;
	border-right:none;
	height:47px;
	text-indent:10px;
	width:510px;
}
.sousuo2 .db{
	margin-left:5px;
	height:47px;
	line-height:47px;
	font-weight:bold;
	font-size:14px;
}
.sousuo3{
	border:1px solid #a8a8a8;
}
.sousuo3 .labelDiv{
	border-bottom:2px solid #d9261f;
	margin-bottom:20px;
	background:#fafafa;
}
.sousuo3 .label{
	color:#333333;
	font-size:16px;
	font-weight:bold;
	padding:10px 25px 10px 20px;
	
}
.sousuo3 .current{
	color:#FFFFFF;
	background:#d9261f;
	
}
.sousuo3 .conditions{
	margin-left:20px;
	font-size:14px;
}
.sousuo3 .conditions .conditionsDiv{
	margin-bottom:20px;
}
.sousuo3 .conditions .title{
	color:#999999;
}
.sousuo3 .conditions .item{
	color:#404040;
	margin:0 10px;
}
.sousuo3 .conditions .current2{
	color:#ff6600;
}
.sousuo3 .allNum{
	border-top:1px solid #CCC;
	padding:10px 0 10px 30px;
}
.main3 {
	width:1190px;
	margin:0px auto 75px auto;
}
.m3Left{
	width:932px;
	
}
.m3Left .item3{
	width:900px;
	border:1px solid #cecece;
	border-top-color:#FFFFFF;
	padding:15px;
}
.m3Left .item3:first-child {
	border-top-color:#cecece;
}
.m3Left .item3 .item3Left{
	width:180px; 
	height:140px;
}
.m3Left .item3 .item3Left img {
	width:100%;
	height:100%;
}
.m3Left .item3 .item3Right {
	margin-left:20px;
}
.m3Left .item3 .item3Right h1 {
	color:#06c;
	font-weight:normal;
}
.i3d1{
	width:550px;
	height:30px;
	overflow:hidden;
}
.i3d2{
	margin-top:13px;
	font-size:12px; 
	font-weight:bold;
}
.i3d3{
	margin-top:13px;
	font-size:12px; 
	font-weight:bold;
}
.i3d4{
	margin-top:15px;
	font-size:12px; 
	font-weight:bold;
}
.m3Right{
	width:250px;
	margin-left:8px;
}
.m3Right .m3rd2{
	margin-top:10px;
	border:1px solid #CCC;
}
.title2{
	padding:10px;
	border-bottom:1px solid #CCC;
}
.title2 .li{
	margin-top:5px;
}
.title2 .text{
	margin-left:5px;
	font-size:16px;
	font-weight:bold;
	letter-spacing:1px;
}
.content{
	padding:15px;
}
.content .cItem0 .cItem0Left{
	width:85px; 
	height:60;
}
.cItem0Right{
	margin-left:10px;
}
.cItem0RightTitle{
	width:120px;
	font-size:14px;
	font-weight:bold;
	height:17px;
	overflow:hidden;
}
.cItem{
	padding:5px 0px;
}
.cItem .cItemd1{
	font-size:14px;
	font-weight:bold;
	width:100px;
	height:17px;
	overflow:hidden;
}
.cItem .cItemd2{
	margin-left:15px;
	font-size:14px;
	font-weight:bold;
	width:40px;
	height:17px;
	overflow:hidden;
}
.cItem .cItemd3{
	margin-left:15px;
	font-size:14px;
	font-weight:bold;
	width:40px;
	height:17px;
	overflow:hidden;
	color:#f25336;
}
.m3Right .m3rd3{
	margin-top:10px;
	border:1px solid #CCC;
}
.m3Right .m3rd3 .content2{
	width:200px;
	margin:10px auto 10px auto;
	
}
.m3Right .m3rd3 .content2Img{
	width:200px;
	height:150px;
}
.m3Right .m3rd4{
	margin-top:10px;
	border:1px solid #CCC;
}
a:visited{
	color:purple
}

.main3>.labelDiv{
	border-bottom:2px solid #d9261f;
	margin-bottom:20px;
	background:#fafafa;
}
.main3>.labelDiv .label{
	color:#333333;
	font-size:16px;
	font-weight:bold;
	padding:10px 25px 10px 20px;
	
}
.main3>.labelDiv .current{
	color:#FFFFFF;
	background:#d9261f;
	
}
.info_tag{
	background: #f2f3f7;
	padding: 5px;
	margin-right: 5px;
	text-align: center;
}
</style>
</head>
<body>
<div id="header">
    <!-- 顶部工具栏 -->
<script type="text/javascript" src="js/layer.min.js"></script>
<style>
.city_div{width: 592px; height: 280px; float: left; background: #ccc;}
.encheck{border: 1px dashed #ccc; width: 168px; height: 53px; line-height:55px; margin:5px; float: left; background-color: #fff; text-align: center; color: #515151; font-size: 18px; cursor: pointer;}
.encheck:HOVER{border: 1px solid #ccc;}
.check{width: 170px; height: 55px; line-height:55px; margin: 5px; float: left; background:url("/Application/Index/View/images/city_check.jpg") left center no-repeat; text-align: center; color: #fff; font-size: 18px;cursor: pointer;}
</style>
<div class="header-top">
  <div class="header-top-inner">
      <div class="top-nav-r"> 
	         <a href="index/index/yidong.html" style="color:#F00"><img src="images/shouji.jpg" style="vertical-align:middle" alt="移动租房网" >&nbsp;移动租房网</a>
        <span class="line">|</span>
    	
    	<c:if test="${user == null }"> <a href="<%=basePath %>jsp/login.jsp">登录</a></c:if>
<c:if test="${user!= null }"><a href="<%=basePath %>myInfo.do">${currentUser }</a><span class="line">|</span>
<a href="<%=basePath %>logout.do">注销</a></c:if>

        <span class="line">|</span>
    	<a href="${pageContext.request.contextPath}/jsp/addCustomer.jsp">房客注册</a>
        <span class="line">|</span>
        <a href="${pageContext.request.contextPath}/jsp/addProvider.jsp" target="_blank">房主注册</a>
	    </div>



  </div>
</div>
<!-- /顶部工具栏 -->
<div class="header-main">
  <div class="header-main-inner">
    
    <div class="header-main-l">
      <h1 class="logo"> <a href="/"  title="居联邦"> <img src="images/Logo.png"  alt="居联邦Logo" /> </a> </h1>
      <div class="city-wrap" widget="tooltip" data-param='{"hoverClassName":"city-hover"}'> 
        <!-- 当前定位城市 -->
        <div class="city-locate" href="javascript:;">
          <p class="city-name">桂林</p>
          <p class="toggle-city">切换城市</p>
        </div>
        <!-- /当前定位城市 --> 
        <!-- 城市列表弹层 -->
        <!-- /城市列表弹层 --> 
      </div>
      <div class="slogan" style="height:28px; overflow:hidden;margin-top: 64px;">
       	<img src="/Application/Index/View//images/slogan.png"  alt="">
      </div>
      
      <div class="slogan" style="height:45px; overflow:hidden;margin-top: 46px;">
      	<a href="index/index/yidong.html"><img src="images/yidong.png" width="" height="100"  alt="移动居联邦"></a>
      </div>
      
    </div>
    
    <div class="header-main-r" style="height: 50px; padding-top: 39px;">
    	<a href="index/page/chengnuo.html" style="font-family: 'Hiragino Sans GB','Microsoft Yahei UI','Microsoft Yahei','微软雅黑','Segoe UI',Tahoma,'宋体b8b\4f53',SimSun,sans-serif; color: #888; text-decoration: none;"><img src="images/chengnuo.png">房地产中介诚信服务承诺</a>
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
   
      
  
      <li class="menu-item"> <a class="in" href="index/area.html">小区找房</a> </li>
   
      <li class="menu-item"> <a class="in" href="<%=basePath %>jsp/customer_guide.jsp" target="_blank">房客指南</a>
    <li class="menu-item"> <a class="in" href="<%=basePath %>jsp/provider_guide.jsp" target="_blank">房东指南</a>
      
   
    
      <!-- crz 0612 -->
      <li class="menu-item "> <a class="in" href="index/info.html">房产百科</a> </li>
      <li class="menu-item "> <a class="in" target="_blank" href="http://www.zhaikj.com">装修家居</a> </li>
	  
	   <li class="menu-item" style="float:right"> <a class="in" style="padding:0 0 0 26px;" target="_blank" href="index/page/zhaopin.html">加入我们</a> </li>
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
			    page: {html : '<div style="width: 572px; height: 261px; float: left;padding:10px;"><ul style="width: 572px; height: 261px; float: left;" id="city_ul"><li class="check" area_id=2>桂林</li><li class="encheck" area_id=1650>南宁</li></ul></div>'},
			    shift: 'top', //从上动画弹出
			    shadeClose :true,
			    closeBtn:[1,true]
			    
			});  
			});

		$("#city_ul li").live('click',function(){
			
			var flag_city = $(this).attr('area_id');
			var city_name = $(this).html();		
			var ym = 'www';
			if(city_name == '桂林'){
				ym = 'gl';
				}else if(city_name == '南宁'){
					ym = 'nn';
					}
				location.href = 'http://'+ym+'.91jlb.com/';			
			
		});
		
		
		});
</script>
<!-- 导航栏 --></div>
<div class="main2"> 
	<div class="sousuo2">
    	<form method="get">
            <div class="fl">
                <input class="kuang" name="key" value="" placeholder="请输入房源特征，地址或小区名。">
            </div>
            <div class="fl">
            	<input type="hidden" name="type" value="1">
                <input type="image" src="images/ss.png">
            </div>
            <div class="fl db pointer" onClick="href('index/map.html?nav=4&price=0&area=0&room_type=0')">
                <img src="images/db.png">
                地图找房
            </div>
            <div class="cb"></div>
        </form>
    </div>
    <div class="sousuo3">
    	<div class="labelDiv">
        	<div class="current label fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&type=1')">区域找房</div>
            <div class=" label fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&type=2')">优质学区房</div>
            <div class="label fl pointer" onClick="href('index/map.html?nav=4&price=0&area=0&room_type=0')">地图找房</div>
            <div class="cb"></div>
        </div>
        <div class="conditions">
        	<div class="conditionsDiv">
            	<div class="title fl">区域:</div>
                <div class="current2 item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">不限</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=3&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">七星区</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=4&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">象山区</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=5&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">秀峰区</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=6&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">西城区</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=7&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">八里街</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=8&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">叠彩区</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=10&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">阳朔</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=11&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">雁山区</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=1668&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">兴安</div>
                                <div class="cb"></div>
            </div>
            <div class="conditionsDiv">
            	<div class="title fl">价格:</div>
                <div class="current2 item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">不限</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=0,20&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">20万以下</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=20,30&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">20万-30万</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=30,40&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">30万-40万</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=40,50&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">40万-50万</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=50,60&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">50万-60万</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=60,80&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">60万-80万</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=80,100&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">80万-100万</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=100,120&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">100万-120万</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=last&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">120万以上</div>
                                <div class="cb"></div>
            </div>
                        <div class="conditionsDiv">
            	<div class="title fl">面积:</div>
                <div class="current2 item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">不限</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=0,50&house=&type=1&ty=&xuequ=&video=1&yt=')">50平米以下</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=50,70&house=&type=1&ty=&xuequ=&video=1&yt=')">50-70平</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=70,90&house=&type=1&ty=&xuequ=&video=1&yt=')">70-90平</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=90,110&house=&type=1&ty=&xuequ=&video=1&yt=')">90-110平</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=110,130&house=&type=1&ty=&xuequ=&video=1&yt=')">110-130平</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=130,150&house=&type=1&ty=&xuequ=&video=1&yt=')">130-150平</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=150,200&house=&type=1&ty=&xuequ=&video=1&yt=')">150-200平</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=200,300&house=&type=1&ty=&xuequ=&video=1&yt=')">200-300平</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=last&house=&type=1&ty=&xuequ=&video=1&yt=')">300平以上</div>
                                <div class="cb"></div>
            </div>
            <div class="conditionsDiv">
            	<div class="title fl">房型:</div>
                <div class="current2 item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">不限</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=1&type=1&ty=&xuequ=&video=1&yt=')">一室</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=2&type=1&ty=&xuequ=&video=1&yt=')">二室</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=3&type=1&ty=&xuequ=&video=1&yt=')">三室</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=4&type=1&ty=&xuequ=&video=1&yt=')">四室</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=last&type=1&ty=&xuequ=&video=1&yt=')">五室</div>
                                <div class="cb"></div>
            </div>
            
            <div class="conditionsDiv">
            	<div class="title fl">用途:</div>
                <div class="current2 item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=')">不限</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=1')">普通住宅</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=2')">别墅</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=3')">商住两用</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=4')">门面</div>
                                <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=&house=&type=1&ty=&xuequ=&video=1&yt=5')">写字楼</div>
                                <div class="cb"></div>
            </div>
            
                                </div>
                <div class="allNum">
        	<!--<font color="#FF0000"></font>共有<font color="#FF0000">56980</font>套,-->为您找到以下房源
        </div>
            </div>
</div>
<div class="main3">
		<div class="labelDiv">
			<div class=" label fl pointer" onClick="href('index.html')">全部房源</div>
        	<div class="current label fl pointer" onClick="href('xing.html')">最新房源</div>
       
           
            <div class="cb"></div>
        </div>
		
		
		<div class="m3Left fl">
    			        <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60458&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60458&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60458&nav=2" target="_blank">
                    	西城区 西城 都市丽景 1室1厅1卫1台 3/F 40平米                    </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60458);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	1房
                    1厅
                    |
                    40平米普通装修                    |
                    3层/3层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					20                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60457&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60457&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60457&nav=2" target="_blank">
                    	 西城区 西城 麒麟湾别墅 6室3厅5卫3台 3/F 299 平米                     </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60457);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	6房
                    3厅
                    |
                    299平米毛坯                    |
                    3层/3层
                    |
                    2006                </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					300                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60456&nav=2')">
            	<img src="images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60456&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60456&nav=2" target="_blank">
                    	 秀峰区 丽君路 丽君路 1室2厅1卫 1/6F 23 平米                    </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60456);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	1房
                    2厅
                    |
                    23平米普通装修                    |
                    1层/6层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					18                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60455&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60455&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60455&nav=2" target="_blank">
                    	 七星区 屏风花鸟市场 东漓江花园 2室1厅1卫 3/6F 59.5 平米                     </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60455);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	2房
                    1厅
                    |
                    59.5平米精装修                    |
                    3层/6层
                    |
                    2000                </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					40                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60454&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60454&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60454&nav=2" target="_blank">
                    	 叠彩区 北门 天龙居 3室2厅2卫 3/6F 133 平米                     </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60454);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	3房
                    2厅
                    |
                    133平米精装修                    |
                    3层/6层
                    |
                    2011                </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					73                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60453&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60453&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60453&nav=2" target="_blank">
                    	七星区 体育馆 鸾西三区 2室1厅1卫 5/6F 65 平米                     </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60453);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	2房
                    1厅
                    |
                    65平米普通装修                    |
                    5层/6层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					35                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60452&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60452&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60452&nav=2" target="_blank">
                    	 七星区 会展中心 中软现代城 2室2厅1卫 3/F 97平米                    </a></h1>
                </div>
                <div class="i3d2">
                						七星区                                        &nbsp;&nbsp;&nbsp;
                    中软现代城                </div>
                <div class="i3d3">
                	七星区南城百货北侧，甲天下广场西侧                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60452);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	2房
                    2厅
                    |
                    97平米毛坯                    |
                    3层/3层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					88                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60451&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60451&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60451&nav=2" target="_blank">
                    	 象山区 同心路 同心园 2室1厅1卫 4/F 60 平米                     </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60451);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	2房
                    1厅
                    |
                    60平米普通装修                    |
                    4层/4层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					35                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60450&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60450&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60450&nav=2" target="_blank">
                    	象山区 象山 文明路 1室1厅1卫 7/F 47平米                    </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60450);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	1房
                    1厅
                    |
                    47平米普通装修                    |
                    7层/7层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					33                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60449&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60449&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60449&nav=2" target="_blank">
                    	 象山区 铁西 兴进曦镇 3室1厅1卫 12/F 97 平米                    </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60449);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	3房
                    1厅
                    |
                    97平米普通装修                    |
                    12层/12层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					68                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60448&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60448&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60448&nav=2" target="_blank">
                    	 七星区 奇峰小筑 奇峰小筑 2室1厅1卫1台 5/7F 78平米                    </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60448);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	2房
                    1厅
                    |
                    78平米精装修                    |
                    5层/7层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					46                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60447&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60447&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60447&nav=2" target="_blank">
                    	 西城区 西城 麒麟湾别墅 6室2厅4卫3台 3/F 299 平米                     </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60447);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	6房
                    2厅
                    |
                    299平米毛坯                    |
                    3层/3层
                    |
                    2006                </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					300                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60446&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60446&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60446&nav=2" target="_blank">
                    	 秀峰区 九岗岭 九岗岭 2室1厅1卫 2/6F 50 平米                    </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60446);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	2房
                    1厅
                    |
                    50平米普通装修                    |
                    2层/6层
                    |
                    1988                </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					50                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60445&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60445&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60445&nav=2" target="_blank">
                    	 七星区 会仙路 冠泰城国 3室2厅2卫 8/13F 132 平米                     </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60445);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	3房
                    2厅
                    |
                    132平米中等装修                    |
                    8层/13层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					150                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.open('index/secondhand/houseinfo.html?id=60444&nav=2')">
            	<img src="/Application/Index/View/images/no_img.jpg" >
                            </div>
            <div class="item3Right fl">
            	<div class="i3d1 pointer" onClick="return;window.open('index/secondhand/houseinfo.html?id=60444&nav=2')">
                	<h1><a href="index/secondhand/houseinfo.html?id=60444&nav=2" target="_blank">
                    	 秀峰区 甲山 甲山小区 2室2厅1卫 5/7F 78 平米                     </a></h1>
                </div>
                <div class="i3d2">
                	                    &nbsp;&nbsp;&nbsp;
                                    </div>
                <div class="i3d3">
                	                    &nbsp;&nbsp;&nbsp;
					<label style="color:#009de8" onClick="map(60444);return false;">查看地图</label>
                </div>
                <div class="i3d4">
                	2房
                    2厅
                    |
                    78平米中等装修                    |
                    5层/7层
                    |
                                    </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					46                </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					万
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
                        <div class="page_list_think" style="margin-top:35px;"> 
			<div>  <span class="current">1</span><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/2.html">2</a><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/3.html">3</a><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/4.html">4</a><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/5.html">5</a><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/6.html">6</a><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/7.html">7</a><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/8.html">8</a><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/9.html">9</a><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/10.html">10</a><a class="num" href="index/secondhand/rsf/nav/2/video/1/type/1/p/11.html">11</a> <a class="next" href="index/secondhand/rsf/nav/2/video/1/type/1/p/2.html">>></a> <a class="end" href="index/secondhand/rsf/nav/2/video/1/type/1/p/3799.html">3799</a></div> 
        </div>
    </div>
    <div class="m3Right fl">
    	<div class="pointer" onClick="href('index/sell.html')">
        	<img src="images/ad.png" >
        </div>
        
                	<div class="m3rd2 pointer">
        	<a href="http://www.zhaikj.com" target="_blank">
            	<img src="/Uploads/Ad/2016-08-19/57b6c58f5ad20.jpg" width="250" >
            </a>
        	</div>
                	<div class="m3rd2 pointer">
        	<a href="http://www.pupu168.com/" target="_blank">
            	<img src="/Uploads/Ad/2016-08-19/57b6c5da256a2.jpg" width="250" >
            </a>
        	</div>
                
       <!--  
        <div class="m3rd2 pointer">
        	<a href="http://www.zhaikj.com" target="_blank">
            	<img src="/Public/images/zhaikongj.jpg" width="250" >
            </a>
        </div>
        <div class="m3rd2 pointer">
        	<a href="http://www.pupu168.com" target="_blank">
        		<img src="/Public/images/168.jpg" width="250" >
            </a>
        </div>
        -->
        
        <div class="m3rd2">
        	<div class="title2">
            	<div class="li fl">
                	<img src="/Public/images/li.png" >
                </div>
                <div class="text fl">
                	猜您你喜欢的桂林二手房
                </div>
                <div class="cb"></div>
            </div>
            <div class="content">
            	<div class="cItem0 pointer" onClick="href('index/secondhand/houseinfo.html?id=52&nav=2')">
                	<div class="cItem0Left fl">
                    	<img src="/Uploads/Info/Min/55ed30510a7f8.jpeg" style="width:100%; height:100%;">
                    </div>
                    <div class="cItem0Right fl">
                    	<div class="cItem0RightTitle">
							富康城出售3室2厅1卫96平米37.8万元                        </div>
                        <div class="cItem0RightTitle" style="margin-top:3px;">
							3房2厅
                        </div>
                                                <div class="cItem0RightTitle" style="margin-top:3px; color:#f25336">
							38万
                        </div>
                                            </div>
                    <div class="cb"></div>
                </div>
                                <div class="cItem pointer" onClick="href('index/secondhand/houseinfo.html?id=26248&nav=2')">
                	<div class="cItemd1 fl">澳洲花园出售3室2厅1卫103平米75万</div>
                    <div class="cItemd2 fl">3房2厅</div>
                                        <div class="cItemd3 fr">75万</div>
                                        <div class="cb"></div>
                </div>
                                <div class="cItem pointer" onClick="href('index/secondhand/houseinfo.html?id=36528&nav=2')">
                	<div class="cItemd1 fl">公园绿涛湾东园出售2室1厅1卫88平米</div>
                    <div class="cItemd2 fl">2房1厅</div>
                                        <div class="cItemd3 fr">65万</div>
                                        <div class="cb"></div>
                </div>
                                <div class="cItem pointer" onClick="href('index/secondhand/houseinfo.html?id=35775&nav=2')">
                	<div class="cItemd1 fl">迴龙小区出售2室2厅1卫83平米</div>
                    <div class="cItemd2 fl">2房2厅</div>
                                        <div class="cItemd3 fr">45万</div>
                                        <div class="cb"></div>
                </div>
                                <div class="cItem pointer" onClick="href('index/secondhand/houseinfo.html?id=37077&nav=2')">
                	<div class="cItemd1 fl">奇峰小筑出售3室2厅2卫105平米</div>
                    <div class="cItemd2 fl">3房2厅</div>
                                        <div class="cItemd3 fr">51万</div>
                                        <div class="cb"></div>
                </div>
                            </div>
        </div>
        <div class="m3rd3">
        	<div class="title2">
            	<div class="li fl">
                	<img src="/Public/images/li.png" >
                </div>
                <div class="text fl">
                	桂林二手房推荐
                </div>
                <div class="cb"></div>
            </div>
                        <div class="content2 pointer" onClick="href('index/secondhand/houseinfo.html?id=460&nav=2')">
            	<div class="content2Img">
                	<img src="/Uploads/Info/Min/599c1f43853d6.jpeg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;">玉柴博望园出售3室2厅2卫140平米95万元</div>
                	                    <div class="fr" style="color:#f25336">81万</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	140平米&nbsp;3房2厅
                </div>
            </div>
                        <div class="content2 pointer" onClick="href('index/secondhand/houseinfo.html?id=36703&nav=2')">
            	<div class="content2Img">
                	<img src="/Uploads/Info/Min/5746fc024ee35.jpeg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;">观音阁出售3室2厅1卫100平米</div>
                	                    <div class="fr" style="color:#f25336">63万</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	100平米&nbsp;3房2厅
                </div>
            </div>
                        <div class="content2 pointer" onClick="href('index/secondhand/houseinfo.html?id=35715&nav=2')">
            	<div class="content2Img">
                	<img src="/Uploads/Info/Min/57244e24375be.jpeg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;">彰泰春天出售3室2厅2卫129平米</div>
                	                    <div class="fr" style="color:#f25336">145万</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	129平米&nbsp;3房2厅
                </div>
            </div>
                        <div class="content2 pointer" onClick="href('index/secondhand/houseinfo.html?id=29515&nav=2')">
            	<div class="content2Img">
                	<img src="/Application/Index/View/images/no_img.jpg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;">一品嘉苑出售2室2厅1卫1台79.6平米32万 </div>
                	                    <div class="fr" style="color:#f25336">32万</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	79平米&nbsp;2房2厅
                </div>
            </div>
                        <div class="content2 pointer" onClick="href('index/secondhand/houseinfo.html?id=36030&nav=2')">
            	<div class="content2Img">
                	<img src="/Uploads/Info/Min/572d5edb197b7.jpeg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;">导航小区出售2室2厅1卫58平米</div>
                	                    <div class="fr" style="color:#f25336">38万</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	58平米&nbsp;2房2厅
                </div>
            </div>
                    </div>
        <div class="m3rd4">
        	<div class="title2">
            	<div class="li fl">
                	<img src="/Public/images/li.png" >
                </div>
                <div class="text fl">
                	桂林二手房价格走势
                </div>
                <div class="cb"></div>
            </div>
            <div id="container" style="padding:5px;">
            	123
            </div>
        </div>
    </div>
    <div class="cb"></div>
</div>
<div class="cb"></div>
<div id="footer">
      
  <div style="clear:both"></div>
  <!-- 平台保障安全 -->
  <div class="sg-area">
    <ul class="safeguard clearfix" style="width:960px;">
    	<li style="width:25%">
        	<div style="float:left; width:90px; height:75px;">
            	<img src="images/p1.jpg" alt="涵盖全市所有真实在售房源"/>
            </div>
            <div style="float:left">
            	<p style="width:120px; color:#000000; font-size:22px;"><b>房源全面</b></p>
                <p style="width:120px; line-height:20px;">涵盖全市所有真实在售房源</p>
            </div>
            <div style="clear:both"></div>
        </li>
        <li style="width:25%">
        	<div style="float:left; width:90px; height:75px;">
            	<img src="images/p2.jpg" alt="承诺所有房源绝无虚假保证真实在售"/>
            </div>
            <div style="float:left; ">
            	<p style="width:120px; color:#000000; font-size:22px;"><b>真实可信</b></p>
                <p style="width:120px; line-height:20px;">承诺所有房源绝无虚假保证真实在售</p>
            </div>
            <div style="clear:both"></div>
        </li>
        <li style="width:25%">
        	<div style="float:left; width:90px; height:75px;">
            	<img src="images/p3.jpg" alt="最优秀的前20%置业顾问为您服务" />
            </div>
            <div style="float:left;margin-left:10px;">
            	<p style="width:120px; color:#000000; font-size:22px;"><b>专业服务</b></p>
                <p style="width:120px; line-height:20px;">最优秀的前20%置业顾问为您服务</p>
            </div>
            <div style="clear:both"></div>
        </li>
        <li style="width:25%">
        	<div style="float:left; width:90px; height:75px;">
            	<img src="images/p4.jpg" alt="诚信经营，为买卖双方公平交易而努力" />
            </div>
            <div style="float:left">
            	<p style="width:120px; color:#000000; font-size:22px;"><b>公平至诚</b></p>
                <p style="width:120px; line-height:20px;">诚信经营，为买卖双方公平交易而努力</p>
            </div>
            <div style="clear:both"></div>
        </li>
        <!--
      <li class="sa-1"> <i class="realsrc"></i>
        <h4>在线选新房</h4>
        <p>一房一价，在线缴定金选房，可售 房源一览无余！</p>
      </li>
      <li class="sa-2"> <i class="realsvc"></i>
        <h4>100%真实房源</h4>
        <p>完全业主挂盘，市场上在售房源应有尽有。</p>
      </li>
      <li class="sa-3"> <i class="realsaf"></i>
        <h4>选靠谱服务</h4>
        <p>基于看房服务的评价体系，靠谱经纪人/<br>
          置业顾问带你看房，虚假房源不再有！</p>
      </li>-->
    </ul>
  </div>
  <div style="clear:both"></div>
  <div class="link" style="width:960px; margin:0 auto; margin-top:30px; margin-bottom:20px;">
        <div style="color: #515151;float: left;font-weight: 700;">友情链接:</div>
        <div style="float:left; width:900px;">
                    <a href="http://esf.guilin.fang.com/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">桂林搜房网二手房</a>
                    <a href="http://www.zhaikj.com/" style="padding-right:8px; padding-left:8px;white-space:nowrap; width:75px; overflow:hidden; color:#000000;" target="_blank">宅空间家装</a>
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
      	<a href="index/page/show/page_id/1.html"  target="_blank">关于我们</a> <span>|</span> 
        <a href="index/page/show/page_id/2.html"  target="_blank">联系我们</a> <span>|</span> 
        <a href="index/page/show/page_id/3.html"  target="_blank">用户协议</a> <span>|</span> 
        <a href="index/page/show/page_id/4.html"  target="_blank">使用帮助</a> <span>|</span> 
        <a href="index/page/show/page_id/6.html"  target="_blank">答疑解惑</a> <span>|</span>
        <a href="index/baike/index.html"  target="_blank">房产百科</a>
        <!-- <span>|</span>
            <a href="/house/list" target="_blank">深圳楼盘大全</a> --> 
      </p>
      <p>邮箱: 1468885188@qq.com         客服热线: 0773-2582000 </p>
      <p>Copyright © 2009-2011 All Rights Reserved</p>
      <p>版权所有 桂林居联邦房地产经纪有限公司</p>
      <p><a href=""  target="_blank">桂ICP备14003384号</a></p>
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
</body>
<script>
$(function(){
	$('#container').highcharts({ 
		title: { 
			text: '', 
		}, 
		credits:{
			enabled:false
		},
		//plotOptions: { line: { dataLabels: { enabled: true }, enableMouseTracking: false } },
		xAxis: { 
			categories: ['01月','02月','03月'] 
		}, 
		yAxis: { 
			title: { 
				text: '' 
			}, 
			min:3000,
			max:12000,
			plotLines: [{ value: 0, width: 1, color: '#808080' }] }, 
			tooltip: { valueSuffix: '元/平米' }, 
			//legend: { layout: 'vertical', align: 'right', verticalAlign: 'middle', borderWidth: 0 }, 
			series: [
				{ name: '均价', data: [6347,7449,6685] }] 
	}); 
})
function href(url){
	window.open(url);
	//location.href=url;
}
function map(info_id){
	var data = '';
	$.layer({
		type: 2,
		shade: [0.5, '#000'],
		title: '地图定位',
		shadeClose: true,
		closeBtn: [0, true],
		border: [10, 0.3, '#000'],
		iframe: {src : '/index/secondhand/map.html?info_id='+info_id},
    	area: ['900px', '520px']
	});
}
</script>
</html>