<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit">

<link rel="shortcut icon" href="//www.xiaozhu.com/favicon.ico" type="image/vnd.microsoft.icon"/>
<link rel="icon" href="//www.xiaozhu.com/favicon.ico" type="image/vnd.microsoft.icon"/>
<title>【居住自由主义】待客之道-租房网</title>	    
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xzcss2.css" />
            </head>

    <body>


                    <div class="guide_warpper">
    <div class="guide_head1">
        <p class="guide_word f_yahei">
            <span class="f24 mb15">待客之道</span>
            <span class="f14">在这里有超过200个城市的三万多个家庭将闲置的别墅、公寓、卧室或是沙发分享给旅途中的人们</span>
            <span class="f14">用实际行动促进着人与人之间的信任，更能让他们在陌生的城市总能拥有一个温暖而熟悉的家，快来租房网做分享家吧</span>
        </p>
    </div> 
    <div class="guide_box clearfix">
        <div class="guide_column">
            <h4 class="f24 mb35">新手上路</h4>
            <div class="guide_con guide_bor_r">
                <span><img src="${pageContext.request.contextPath}/images/help/xinshou.png" alt="" /></span>
                <span class="mt15">帮助您更深入的了解租房网，</span>
                <span>让我们告诉您如何开启您的待客之旅</span>
            </div>
            <a href="${pageContext.request.contextPath}/jsp/provider_guide_info.jsp" class="start_btn mt5">开始学习新手上路</a>
        </div>
        <div class="guide_column">
            <h4 class="f24 mb35">高手进阶</h4>
            <div class="guide_con">
                <span><img src="${pageContext.request.contextPath}/images/help/gaoshou.png" alt="" /></span>
                <span class="mt15">帮助您成为租房网超级房东，</span>
                <span>让您和您房源，给房客带来独特有趣的住宿体验</span>
            </div>
            <a href="#" class="wait_btn mt5">即将上线，敬请期待...</a>
        </div>
    </div>
</div>                 
<div class="foot_v2">
        <ul class="foot_ul">
        <li><a class="guide" href="${pageContext.request.contextPath}/jsp/customer_guide.jsp" target="_blank">房客指南</a></li>
        <li><a class="guide icon_fk" href="${pageContext.request.contextPath}/jsp/provider_guide.jsp" target="_blank">房东指南</a></li>
        <li>
            <span class="guide_T">关于我们</span>
            <a href="http://www.xiaozhu.com/aboutus" target="_blank">关于租房网</a>
            <a href="http://www.xiaozhu.com/contactus" target="_blank">联系我们</a>
        </li>
        <li>
            <span class="guide_T">网站帮助</span>
            <a href="http://www.xiaozhu.com/help/index" target="_blank" >帮助中心</a>
            <a href="http://www.xiaozhu.com/sitemap.html" target="_blank">网站地图</a> 
        </li>
        <li class="width_280">
            <span class="guide_T">网站协议</span><br/>
            <a href="http://www.xiaozhu.com/help/service" target="_blank">服务协议</a> 
            <a href="http://www.xiaozhu.com/help/landlordRule" target="_blank">房东规则</a>
            <a href="http://www.xiaozhu.com/help/tenantRule" target="_blank">房客规则</a>
            <a href="http://www.xiaozhu.com/help/auditRule" target="_blank">房源上线标准</a>
            <a href="http://www.xiaozhu.com/help/privacy" target="_blank">隐私保护</a>
            <a href="http://www.xiaozhu.com/help/copyright" target="_blank">版权声明</a>
            <a href="http://www.xiaozhu.com/help/disclaimer" target="_blank">免责声明</a>
            <a href="http://www.xiaozhu.com/help/intellectualProperty" target="_blank">知识产权声明</a>
            <a href="http://www.xiaozhu.com/help/commentRule" target="_blank">点评发布规则</a>
        </li>
        <li class="bigFont online_kf">
            <span class=""   onclick='open7Moor()' ><i></i>在线客服</span>
            <p>客服电话 185-9327-2197</p>
            <p>客服邮箱  735084770@qq.com</p>
        </li>
            </ul>
        <dl class="link_dl">
        <dt>城市导航</dt>
        <dd>
            <a target="_blank" href="//bj.xiaozhu.com/">北京短租房</a>
            <a target="_blank" href="//sh.xiaozhu.com/">上海短租房</a>
            <a target="_blank" href="//nj.xiaozhu.com/">南京短租房</a>
            <a target="_blank" href="//cd.xiaozhu.com/">成都短租房</a>
            <a target="_blank" href="//gz.xiaozhu.com/">广州短租房</a>
            <a target="_blank" href="//cq.xiaozhu.com/">重庆短租房</a>
            <a target="_blank" href="//wh.xiaozhu.com/">武汉短租房</a>
            <a target="_blank" href="//dl.xiaozhu.com/">大连短租房</a>
            <a target="_blank" href="//sanya.xiaozhu.com/">三亚短租房</a>
            <a target="_blank" href="//lijiang.xiaozhu.com/">丽江短租房</a>
            <a target="_blank" href="//tj.xiaozhu.com/">天津短租房</a>
            <a target="_blank" href="//xianggang.xiaozhu.com/">香港短租房</a>
            <a target="_blank" href="//cs.xiaozhu.com/">长沙短租房</a>
            <a target="_blank" href="//wx.xiaozhu.com/">无锡短租房</a>
            <a target="_blank" href="//km.xiaozhu.com/">昆明短租房</a>
            <a target="_blank" href="//jn.xiaozhu.com/">济南短租房</a>
            <a target="_blank" href="//xm.xiaozhu.com/">厦门短租房</a>
            <a target="_blank" href="//qd.xiaozhu.com/">青岛短租房</a>
            <a target="_blank" href="//zz.xiaozhu.com/">郑州短租房</a>
            <a target="_blank" href="//xa.xiaozhu.com/">西安短租房</a>
            <a target="_blank" href="//hz.xiaozhu.com/">杭州短租房</a>
            <a target="_blank" href="//sz.xiaozhu.com/">深圳短租房</a>
            <a target="_blank" href="//sy.xiaozhu.com/">沈阳短租房</a> 
            <a target="_blank" href="//su.xiaozhu.com/">苏州短租房</a>
        </dd>
    </dl>
    <dl class="link_dl">
         
    </dl>
            <div class="foot_btm">许可证号：京ICP证140510号 &nbsp;&nbsp; <a href="http://www.anquan.org/s/www.xiaozhu.com" |="" name="mt8SMvYyRDI92b06nuDs8dPFapllCJYidqhM1WlOoGRZ9DWpbo" rel="nofollow" target="_blank">安全联盟</a> &nbsp;&nbsp; 北京快跑信息科技有限公司<span style="display:none">  &nbsp;&nbsp; 地址：北京市海淀区知春路56号   &nbsp;&nbsp;电话：010-62961978</span>
    </div>
    <div style="width:300px;margin:0 auto;">
        <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020380" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
        <img src="${pageContext.request.contextPath}/images/record_icon.png" style="float:left;"/><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#bdc3c7;">京公网安备 11010802020380号</p></a>
    </div>
</div>

<input type="hidden" name="actionName" id="actionName" value="Help_UserGuide"/>
<input type="hidden" name="xz_srf_token" id="xz_srf_token" value="315c205418dee01d15d2961d53e03ad1"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/xzjs.js?k=Footer&httphost=www.xiaozhu.com"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xzcss.css?css=jquery.mCustomScrollbar,nyroModal,uploadify" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lazyload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/xzim4.js?source=xiaozhu&dm=xiaozhu.com" id="webimSource"></script>

    </body>
<!-- Google Tag Manager -->

<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-W85X4L" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-W85X4L');
</script>

<!-- End Google Tag Manager --></html>