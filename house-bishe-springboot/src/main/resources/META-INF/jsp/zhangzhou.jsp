<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
<head>
<meta charset="utf-8" />


<title>漳州租房网</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" >
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/page.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/layer.min.js" type="text/javascript"></script><!--弹窗-->
<link href="${pageContext.request.contextPath}/css/layer.css" rel="stylesheet" type="text/css" />
 <script src="${pageContext.request.contextPath}/js/highcharts.js" type="text/javascript"></script> 
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
	width:650px;
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
	         <a href="#" style="color:#F00"><img src="${pageContext.request.contextPath}/images/shouji.jpg" style="vertical-align:middle" alt="移动租房网" >&nbsp;移动租房网</a>
        <span class="line">|</span>
    	
    	<c:if test="${user == null }"> <a href="<%=basePath %>jsp/login.jsp">登录</a></c:if>
<c:if test="${user!= null }"><a href="<%=basePath %>myInfo.do">${currentUser }</a><span class="line">|</span>
<a href="<%=basePath %>logout.do">注销</a></c:if>

        <span class="line">|</span>
    	<a href="${pageContext.request.contextPath}/jsp/addCustomer.jsp">房客注册</a>
        <span class="line">|</span>
        <a href="${pageContext.request.contextPath}/jsp/idcard.jsp" target="_blank">房东注册</a><!--addProvider.jsp  -->
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
          <p class="city-name">漳州</p>
          <p class="toggle-city">切换城市</p>
        </div>
        <!-- /当前定位城市 --> 
        <!-- 城市列表弹层 -->
        <!-- /城市列表弹层 --> 
      </div>
      <div class="slogan" style="height:28px; overflow:hidden;margin-top: 64px;">
       <!-- 	<img src="images/slogan.png"  alt=""> -->
      </div>
      
      <div class="slogan" style="height:45px; overflow:hidden;margin-top: 46px;">
      	<a href="index/yidong.html"><img src="${pageContext.request.contextPath}/images/yidong.png" width="" height="100"  alt="移动租房网"></a>
      </div>
      
    </div>
    
    <div class="header-main-r" style="height: 50px; padding-top: 39px;">
    	<a href="#" style="font-family: 'Hiragino Sans GB','Microsoft Yahei UI','Microsoft Yahei','微软雅黑','Segoe UI',Tahoma,'宋体b8b\4f53',SimSun,sans-serif; color: #888; text-decoration: none;"><img src="${pageContext.request.contextPath}/images/chengnuo.png">房地产中介诚信服务承诺</a>
    </div>
  </div>
</div>
<!-- 导航栏 -->
<div id="nav">
  <div class="nav-inner" style="overflow:hidden"> 
    <!-- 主菜单 -->
     <ul class="menu-main">
      <li class="menu-item "> <a class="in" href="<%=basePath %>jsp/login.jsp" >首页</a> </li>   
      
    
           
      <li class="menu-item current "> <a class="in" href="<%=basePath %>indexlist.do">租房</a> </li>
   
      
  
  
   
      <li class="menu-item"> <a class="in" href="<%=basePath %>jsp/customer_guide.jsp" target="_blank">房客指南</a>
    <li class="menu-item"> <a class="in" href="<%=basePath %>jsp/provider_guide.jsp" target="_blank">房东指南</a>
      
   
    
      <!-- crz 0612 -->
    
      <li class="menu-item "> <a class="in" target="_blank" href="http://www.zhaikj.com">装修家居</a> </li>
      
	  
	   <li class="menu-item" style="float:right"> <a class="in" style="padding:0 0 0 26px;" target="_blank" href="<%=basePath %>jsp/addProvider.jsp">加入我们</a> </li>
	     <li class="menu-item "> <a class="in" href="javascript:void(0)">房产百科</a> </li>
	      <li class="menu-item " style="float:right"> <a class="in"  target="_blank" href="<%=basePath %>jsp/about_us.jsp">关于我们</a> </li>
   
    </ul>
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
			    page: {html : '<div style="width: 572px; height: 261px; float: left;padding:10px;"><ul style="width: 572px; height: 261px; float: left;" id="city_ul"><li class="encheck" area_id=2>福州</li><li class="encheck" area_id=1650>厦门</li><li class="encheck" area_id=1650>泉州</li><li class="check" area_id=1650>漳州</li><li class="encheck" area_id=1650>莆田</li></ul></div>'},
			    shift: 'top', //从上动画弹出
			    shadeClose :true,
			    closeBtn:[1,true]
			    
			});  
			});

		$("#city_ul li").live('click',function(){
			
			var flag_city = $(this).attr('area_id');
			var city_name = $(this).html();		
			var ym = '';
			if(city_name == '福州'){//guilin
				location.href = '<%=basePath%>indexlist.do';
				}else if(city_name == '厦门'){//nanningList
					location.href = '<%=basePath%>xiamenList.do';
					}else if(city_name == '泉州'){//liuList
					location.href = '<%=basePath%>quanzhouList.do';
					}else if(city_name == '漳州'){//beiList
					location.href = '<%=basePath%>zhangzhouList.do';
					}else  if(city_name == '莆田'){//laibinList
						location.href = '<%=basePath%>putianList.do';
					}else{
						location.href = '<%=basePath%>indexlist.do';
					}
				
			
		});
		
		
		});
	
	//location.href = '<%=basePath%>nanningList';		
	
	search=function(){

		

		
		

		var key=$("#key").val();
		var city="漳州市";
		  
		  //第二步：验证数据，这里需要从数据库调数据，我们就用到了ajax

		//请求地址  
		   $.ajax({
		    url:"<%=basePath%>search.do",
		    data:{
		  city:city,
		   key:key
		    },//提交的数据
		    type:"POST",//提交的方式
		    ContentType:"application/json; charset=UTF-8",
		    dataType:"text", //返回类型 TEXT字符串 JSON XML
		   async :false, 
		    success:function(msg){//msg是servlet返回的
		
		    	if(msg="success"){
		  		  <%-- window.location.href="<%=basePath%>policylist"; --%>
		  				
		  									} else {
		  										alert(msg);
		  									}  
								}
							});

				};

	
</script>






<!-- 导航栏 --></div>
<div class="main2"> 
	<div class="sousuo2">
	<!--这里显示 就是重点编程的对象-->
    	<form method="post" action="<%=basePath%>search2.do" >
            <div class="fl">
            <input type="hidden" name="city" value="漳州">
                <input class="kuang"  id="key"  name="key" value="" placeholder="请输入房源特征，地址或小区名。">
            </div>
            
            <div class="fl" >
            	<!-- <input type="hidden" name="type" value="1"> type="image"   images/ss.png-->
                <input type="image" src="${pageContext.request.contextPath}/images/ss.png"    onClick="search()"/>
            </div>
            <div class="fl db pointer" onClick="">
                <img src="${pageContext.request.contextPath}/images/db.png">
                地图找房
            </div>
            <div class="cb"></div>
        </form>
    </div>
    <div class="sousuo3">
    	<div class="labelDiv">
        	<div class="current label fl pointer" onClick="">区域找房</div>
           
            <div class="label fl pointer" onClick="">地图找房</div>
            <div class="cb"></div>
        </div>
        <div class="conditions">
        	<div class="conditionsDiv">
            	<div class="title fl">区域:</div>
                <div class="current2 item fl pointer" onClick="href('')">不限</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_qu/gqu1/')">芗城区 </div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_qu/gqu2/')">龙文区</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_qu/gqu3/')">龙海市  </div>
                               
                             
                                <!-- <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=1668&price=&area=&house=&type=1&ty=&xuequ=&video=&yt=')">兴安</div> -->
                                <div class="cb"></div>
            </div>
            <div class="conditionsDiv">
            	<div class="title fl">价格:</div>
                <div class="current2 item fl pointer" onClick="href('')">不限</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_price/gp1/')">250以下</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_price/gp2/')">250-350</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_price/gp3/')">350-450</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_price/gp4/')">450-600</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_price/gp5/')">600-800</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_price/gp6/')">800-1000</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_price/gp7/')">1000以上</div>
                             
                                <!-- <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=last&area=&house=&type=1&ty=&xuequ=&video=&yt=')">120万以上</div> -->
                                <div class="cb"></div>
            </div>
                        <div class="conditionsDiv">
            	<div class="title fl">面积:</div>
                <div class="current2 item fl pointer" onClick="href('')">不限</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_area/ga1/')">30平米以下</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_area/ga2/')">30-40平米</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_area/ga3/')">40-60平米</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_area/ga4/')">60-80平米</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_area/ga5/')">90-110平米</div>
                                <!-- <div class=" item fl pointer" onClick="href('/index/secondhand/rsf.html?nav=2&com=&price=&area=130,150&house=&type=1&ty=&xuequ=&video=&yt=')">130-150平</div> -->
                                <div class=" item fl pointer" onClick="href('')">110平米以上</div>
                              
                               
                                <div class="cb"></div>
            </div>
            <div class="conditionsDiv">
            	<div class="title fl">房型:</div>
                <div class="current2 item fl pointer" onClick="href('')">不限</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_shi/gs1/')">一室</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_shi/gs2/'')">二室</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_shi/gs3/'')">三室</div>
                                <div class=" item fl pointer" onClick="href('<%=basePath %>zhangzhou_shi/gs4/'')">四室</div>
                                <div class=" item fl pointer" onClick="">五室</div>
                                <div class="cb"></div>
            </div>
            
            <div class="conditionsDiv">
            	<div class="title fl">用途:</div>
                <div class="current2 item fl pointer" onClick="href('')">不限</div>
                                <div class=" item fl pointer" onClick="href('')">普通住宅</div>
                                <div class=" item fl pointer" onClick="href('')">别墅</div>
                                <div class=" item fl pointer" onClick="href('')">商住两用</div>
                                <div class=" item fl pointer" onClick="href('')">门面</div>
                                <div class=" item fl pointer" onClick="href('')">写字楼</div>
                                <div class="cb"></div>
            </div>
            
                                </div>
                <div class="allNum">

        </div>
            </div>
</div>



<div class="main3">
		<div class="labelDiv">
			<div class="current label fl pointer" onClick="href('#')">全部房源</div>
        	<div class=" label fl pointer " onClick="href('#')">最新房源</div>
       
           
            <div class="cb"></div>
        </div>
		
		
		
		<div class="m3Left fl">
		
		
		
	
        
       <!-- ${path } -->
        <c:forEach var="h" items="${list}" varStatus="status">
  
        	        <div class="item3" onMouseOver="$(this).css('background-color','#f3f8e9')" onMouseOut="$(this).css('background-color','#FFF')" >
        	<div class="item3Left fl pointer" style="position:relative" onClick="window.location.href='${pageContext.request.contextPath}/index_getOneHouse/${h.house_id }/'">
            	<img src="/images/${h.img}" >
                            </div>
            <div class="item3Right fl"><!--http://##.com/index/secondhand/houseinfo.html?id=31162&nav=2 该链接是打开查看商品信息详情的  -->
            	<div class="i3d1 pointer" onClick="return;window.open('<%=basePath %>index_getOneHouse/${h.house_id }/')">
                	<h1><a href="<%=basePath %>index_getOneHouse/${h.house_id }/" target="_blank">
                    	${ h.address} 出租 ${h.type } ${h.area }平米    ${h.price }/月                </a></h1>
                </div>
                <div class="i3d2">
                						${ h.address}                                        &nbsp;&nbsp;&nbsp;
                   ${ h.address2}    &nbsp;&nbsp; 支付类型： ${ h.paytype}    </div>
                <div class="i3d3">
                <!--灵川八里4路大圆盘旁边      &nbsp;&nbsp;&nbsp; --> 	               
					<label style="color:#009de8" ><a target="_blank"  href="http://api.map.baidu.com/geocoder?address=${ h.address}${ h.address2}&output=html&src= ${ h.address2}">查看地图</a></label>
                &nbsp;&nbsp;&nbsp; 附近公园：${ h.park}   &nbsp;&nbsp;附近医院：${ h.hospital}  
                
               <%--  href="http://api.map.baidu.com/geocoder?address=${ h.address}${ h.address2}&output=html&src= ${ h.address2}" --%>
                </div>
                <div class="i3d4">
                	${h.type }
                    |
                   ${h.area }平米                    |
                   ${h.ceng }层
                    |
                    2005                </div>
                <div class="i3d4">
                	                	                </div>
            </div>
            <div class="fr" style="margin-right:15px; margin-top:45px;">
            	            	<div class="fl" style="font-size:26px; color:#e4393c; font-weight:bold;">
					${h.price }               </div>
                <div class="fl" style="font-size:14px; margin-top:8px;">
					元
                </div>
                                <div class="cb"></div>
            </div>
            <div class="cb"></div>
        </div>
        
            </c:forEach>    
        
        
     <div class="page_list_think" style="margin-top:35px;"> 
			<div> <a class="prev" href="<%=basePath%>zhangzhouList.do"><<</a> 
			<c:forEach begin="1" end="${total}"  step="1" varStatus="i"><!-- class="showimg"  --><%-- <%=basePath%>indexfenye.do?num=${i.index} --%>
                     <a href="<%=basePath%>indexfenye.do/4/${i.index}/"     
                     <c:if test="${num eq i.index}"> class="current"</c:if> <c:if test="${num != i.index}"> class="num"</c:if>>
                     ${i.index}</a>
                 </c:forEach> 
        </div>
          </div>
         <%-- <div class="page_list_think" style="margin-top:35px;"> 
			<div> <a class="prev" href="<%=basePath%>indexlist.do"><<</a> 
			<c:forEach begin="1" end="${total}"  step="1" varStatus="i"><!-- class="showimg"  -->
                     <a href="<%=basePath%>indexfenye.do?num=${i.index}"     
                     <c:if test="${num eq i.index}"> class="current"</c:if> <c:if test="${num != i.index}"> class="num"</c:if>>
                     ${i.index}</a>
                 </c:forEach> 
        </div>
          </div> --%>
    </div>
    
    
    
    
    
    
    
    
      <div class="m3Right fl">
    	<div class="pointer" onClick="href('/sell.html')">
        	<img src="${pageContext.request.contextPath}/images/ad.png" >
        </div>
        
                	<div class="m3rd2 pointer">
        	<a href="http://www.zhaikj.com" target="_blank">
            	<img src="${pageContext.request.contextPath}/images/57b6c58f5ad20.jpg" width="250" >
            </a>
        	</div>
                	<div class="m3rd2 pointer">
        	<a href="http://www.pupu168.com/" target="_blank">
            	<img src="${pageContext.request.contextPath}/images/57b6c5da256a2.jpg" width="250" >
            </a>
        	</div>
                

        
       
       
       <div class="m3rd2">
        	<div class="title2">
            	<div class="li fl">
                	<img src="${pageContext.request.contextPath}/images/li.png" >
                </div>
                <div class="text fl">
                	猜您你喜欢的福州租房
                </div>
                <div class="cb"></div>
            </div>
            <div class="content">
            	<div class="cItem0 pointer" onClick="href('')">
                	<div class="cItem0Left fl">
                    	<img src="${pageContext.request.contextPath}/images/no_img.jpg" style="width:100%; height:100%;">
                    </div>
                    <div class="cItem0Right fl">
                    	<div class="cItem0RightTitle">
							奇峰小筑 出租1室1厅1卫49平米                        </div>
                        <div class="cItem0RightTitle" style="margin-top:3px;">
							1房1厅
                        </div>
                                                <div class="cItem0RightTitle" style="margin-top:3px; color:#f25336">
							600元/月
                        </div>
                                            </div>
                    <div class="cb"></div>
                </div>
                                <div class="cItem pointer" onClick="href('')">
                	<div class="cItemd1 fl">澳洲假日3室2厅2卫2台出租</div>
                    <div class="cItemd2 fl">3房2厅</div>
                                        <div class="cItemd3 fr">2300元/月</div>
                                        <div class="cb"></div>
                </div>
                                <div class="cItem pointer" onClick="href('')">
                	<div class="cItemd1 fl">鑫海国际1室1厅1卫出租</div>
                    <div class="cItemd2 fl">1房1厅</div>
                                        <div class="cItemd3 fr">950元/月</div>
                                        <div class="cb"></div>
                </div>
                                <div class="cItem pointer" onClick="href('')">
                	<div class="cItemd1 fl">八里街 城北菜市商住楼 3室2厅1卫0台 出租</div>
                    <div class="cItemd2 fl">3房2厅</div>
                                        <div class="cItemd3 fr">1200元/月</div>
                                        <div class="cb"></div>
                </div>
                                <div class="cItem pointer" onClick="href('')">
                	<div class="cItemd1 fl"> 安厦尚城风景 二机厂宿舍 2室1厅1卫0台 出租</div>
                    <div class="cItemd2 fl">2房1厅</div>
                                        <div class="cItemd3 fr">1200元/月</div>
                                        <div class="cb"></div>
                </div>
                            </div>
        </div>

		
     
	 
	 
	    <div class="m3rd3">
        	<div class="title2">
            	<div class="li fl">
                	<img src="${pageContext.request.contextPath}/images/li.png" >
                </div>
                <div class="text fl">
                	福州租房推荐
                </div>
                <div class="cb"></div>
            </div>
                        <div class="content2 pointer" onClick="href('')">
            	<div class="content2Img">
                	<img src="${pageContext.request.contextPath}/images/no_img.jpg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;">晋安区 平山 丰泽苑 3室2厅2卫0台 出租</div>
                	                    <div class="fr" style="color:#f25336">2000元/月</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	125平米&nbsp;3房2厅
                </div>
            </div>
                        <div class="content2 pointer" onClick="href('')">
            	<div class="content2Img">
                	<img src="${pageContext.request.contextPath}/images/no_img.jpg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;"> 安厦世纪城 揽翠湾 1室1厅1卫0台 </div>
                	                    <div class="fr" style="color:#f25336">350元/月</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	20平米&nbsp;1房1厅
                </div>
            </div>
                        <div class="content2 pointer" onClick="href('')">
            	<div class="content2Img">
                	<img src="${pageContext.request.contextPath}/images/no_img.jpg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;">鼓楼区施家园 龙隐I区 1室1厅1卫0台 </div>
                	                    <div class="fr" style="color:#f25336">160元/月</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	123平米&nbsp;1房1厅
                </div>
            </div>
                        <div class="content2 pointer" onClick="href('')">
            	<div class="content2Img">
                	<img src="${pageContext.request.contextPath}/images/no_img.jpg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;">鼓楼区屏风花鸟市场 建干路 1室1厅1卫0台 </div>
                	                    <div class="fr" style="color:#f25336">4500元/月</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	78平米&nbsp;1房1厅
                </div>
            </div>
                        <div class="content2 pointer" onClick="href('')">
            	<div class="content2Img">
                	<img src="${pageContext.request.contextPath}/images/no_img.jpg" style="width:100%; height:100%;">
                </div>
                <div style="margin-top:5px; font-weight:bold">
                	<div class="fl" style="width:140px; height:14px; overflow:hidden;">鼓楼区三里店 公园绿涛湾东园 2室1厅1卫0台 </div>
                	                    <div class="fr" style="color:#f25336">2000元/月</div>
                                        <div class="cb"></div>
                </div>
                <div>
                	82平米&nbsp;2房1厅
                </div>
            </div>
                    </div>
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
        <div class="m3rd4">
        	<div class="title2">
            	<div class="li fl">
                	<img src="${pageContext.request.contextPath}/images/li.png" >
                </div>
                <div class="text fl">
                	福州二手房价格走势
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
      	<a href="/page/show/page_id/1.html"  target="_blank">关于我们</a> <span>|</span> 
        <a href="/page/show/page_id/2.html"  target="_blank">联系我们</a> <span>|</span> 
        <a href="/page/show/page_id/3.html"  target="_blank">用户协议</a> <span>|</span> 
        <a href="/page/show/page_id/4.html"  target="_blank">使用帮助</a> <span>|</span> 
        <a href="/page/show/page_id/6.html"  target="_blank">答疑解惑</a> <span>|</span>
        <a href="/baike/index.html"  target="_blank">房产百科</a>
        <!-- <span>|</span>
            <a href="/house/list" target="_blank">深圳楼盘大全</a> --> 
      </p>
      <p>邮箱: 1468885188@qq.com         客服热线: 0773-2582000 </p>
      <p>Copyright © 2019 All Rights Reserved</p>
      <p>版权所有 福州租房网房地产经纪有限公司</p>
      <p><a href=""  target="_blank">桂ICP备14003384号</a></p>
    </div>
    <!-- /版权及其它 --> 
  </div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>



<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=vw0VqdGjN5KRHKzGZdiT8mvWtv6SLq9v"></script>
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
   