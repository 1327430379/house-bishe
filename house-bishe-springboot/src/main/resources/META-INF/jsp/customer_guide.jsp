<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <head>
       
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit">
<meta name="keywords" content="房客指南，租房网指南，租房网，租房网短租"/>
<meta name="description" content="分享自己闲置的房屋或房间，既能赚钱、还能结识新朋友旅行时选择当地人家，不仅价格实惠，而且充满了人情味数以百万计的房东、房客通过租房网相识并成为朋友分享与信任，让这一切正在发生" />
<link rel="shortcut icon" href="//www.xiaozhu.com/favicon.ico" type="image/vnd.microsoft.icon">
<link rel="icon" href="//www.xiaozhu.com/favicon.ico" type="image/vnd.microsoft.icon">
<title>【居住自由主义】房客指南-租房网</title>	   
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xzcss3.css" />
            </head>

    <body>
         
<!--[if lte IE 7]>
<div style="background:#f16b80;  width:100%; height:50px; line-height:50px; text-align:center; font-size:14px; color:#fff; font-family:"微软雅黑";>
    温馨提示：您目前的浏览器版本过低，网站部分功能无法正常使用，建议尽快升级：
        <a href="http://www.microsoft.com/china/windows/IE/upgrade/index.aspx" name="升级ie浏览器" id="upgrade_ie" target="_blank" style=" display:inline-block;width:154px; height:40px;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;"><img src="/images/ie.jpg" width="154" height="40"/></a>
             或安装
        <a href="http://www.firefox.com.cn" target="_blank" name="升级火狐浏览器" id="upgrade_firefox" style="display:inline-block;width:154px; height:40px;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;"><img src="/images/firefox.jpg" width="154" height="40"/></a>
</div>
<![endif]-->

<div class="detail_wrapper">
   



                <div class="guide_main">
            <div class="guide_con">
                <ul class="guide_tabs">
                </ul>
                <div class="guide_sider">
                    <div name="left_guide" id="left_tenant_guide" style="display:block;">
                        <dl class="guide_dl">
                            <dt id="menu_tenant_1" onMouseover="mouseOver('tenant_1')" onMouseout="mouseOut('tenant_1')" onclick="togglePart('tenant_1')"><span class="dt_circle"></span>独特的房间和预订</dt>
                            <div style="display:none;" id="sub_menu_tenant_1">
                                <dd>&middot; 独一无二的房间</dd>
                                <dd>&middot; 输入日期搜索和拆单</dd>
                                <dd>&middot; 善用过滤条件和地图搜索</dd>
                                <dd>&middot; 在线沟通、下单、房东确认和付款</dd>
                            </div>
                        </dl>
                        <dl class="guide_dl">
                            <dt id="menu_tenant_2" onMouseover="mouseOver('tenant_2')" onMouseout="mouseOut('tenant_2')" onclick="togglePart('tenant_2')"><span class="dt_circle"></span>入住、评价和分享</dt>
                            <div style="display:none;" id="sub_menu_tenant_2">
                                <dd>&middot; 入住前联系房东</dd>
                                <dd>&middot; 与房东沟通</dd>
                                <dd>&middot; 按照房东的要求使用空间及设施</dd>
                                <dd>&middot; 入住完成后及时评价</dd>
                                <dd>&middot; 有机会您也可以试试当地主</dd>
                            </div>
                        </dl>
                        <dl class="guide_dl">
                            <dt id="menu_tenant_3" onMouseover="mouseOver('tenant_3')" onMouseout="mouseOut('tenant_3')" onclick="togglePart('tenant_3')"><span class="dt_circle"></span>安全完备的保障</dt>
                            <div style="display:none;" id="sub_menu_tenant_3">
                                <dd>&middot; “无忧入住”房客保障计划</dd>
                                <dd>&middot; 房客保险</dd>
                                <dd>&middot; 在线交易的重要性</dd>
                            </div>
                        </dl>
                    </div>
                </div>
                <div class="guide_right">
                    <div  name="right_guide" id="right_tenant_guide" style="display:block;">
                        <div class="guide_column" name="part_1" id="part_tenant_1" onMouseover="mouseOver('tenant_1')" onMouseout="mouseOut('tenant_1')">
                            <div class="overF_hidden" onclick="togglePart('tenant_1')">
                                <div class="guide_L">
                                    <strong>独特的房间和预订</strong> <a class="btn_close nomargin" href="#ongo" id="more_tenant_1" >更多</a><br />
                                   租房网是一个基于分享经济的社交住宿平台。在租房网上，您将有机会住进一个陌生朋友的家中，价格不到酒店的一半，却像在自己家里一样舒适和方便，租房网会让您拥有一次不同寻常的旅行体验。 
                                </div>
                                <img class="fr" src="${pageContext.request.contextPath}/images/guide_pic1.jpg" width="276" height="156" />
                            </div>
                            <div id="part_more_tenant_1" style="display:none;">
                                <p class="guide_p">
                                <strong class="guide_p_T">独一无二的房间</strong>
                                与您使用过的其他住宿预订平台不一样的是，租房网上所有房间都是由房东自己发布和独立管理的，每个房间都是独一无二的。这些房间的价格通常比同地区快捷 酒店价格便宜一半以上，大部分房源入住后会和房东住在一起，可以做饭和洗衣服，设施和用品也更有“家”的感觉。
                                </p>
                                <p class="guide_p">
                                <strong class="guide_p_T">输入日期搜索和拆单</strong>
                               租房网上大部分房间都只有一套，按照出行日期搜索可以查看所有符合您要求的房间。如果您的出行计划有弹性，也可以试试调整出行日期搜索，有时候可能会有惊喜。当然，更早的出行计划而不是临时抱佛脚，会有更多好的房间供您挑选。<br />
                                如果您出行的时间比较长，比如一周或更长时间，您心仪的房间也许不能满足您的预订要求，尤其是出行旺季更是如此。拆开时间搜索和预订可能是个好主意，这样做的好处除了搬家可以锻炼身体外，还可以认识更多的朋友。
                                </p>
                                <p class="guide_p">
                                <strong class="guide_p_T">善用过滤条件和地图搜索</strong>
                                使用地图搜索可以帮您以更直观、精确的查看房源所在位置的方式进行搜索和比较。<br /> 
                                如果您了解将要去的地方，可以在搜索框中点击或输入您所知道的交通枢纽、商圈或景点名称。通过各种过滤条件组合，可以让您更快寻找到合适的房间。  
                                </p>
                                <p class="guide_p">
                                <strong class="guide_p_T">在线沟通、下单、房东确认和付款</strong>
                                您在租房网上选好中意的房间并下单后，是需要等待房东确认后方可付款的。因此，与房东适当的在线沟通非常必要。有效的在线沟通可以帮助您进一步了解房子 的详细信息，如果您主动向房东介绍自己，同时告知对方您的行程目的和计划，房东也可以籍此更了解您，因而也更容易接受您的预订请求。 
                                </p>
                                <p class="textRt"><a class="btn_close" href="#ongo" onclick="hiddenMore('tenant_1')">收起</a></p>
                            </div>
                        </div>
                        <div class="guide_column" name="part_2" id="part_tenant_2" onMouseover="mouseOver('tenant_2')" onMouseout="mouseOut('tenant_2')">
                            <div class="overF_hidden" onclick="togglePart('tenant_2')">
                                <div class="guide_L">
                                    <strong>入住、点评和分享</strong> <a class="btn_close nomargin" href="#ongo" id="more_tenant_2" >更多</a><br />
                                    背上行囊，踏上旅途，在另一个陌生的城市，会有一个从未谋面的朋友在等着您入住他的家中，这样的场景不禁让人充满期待。但在您将要住进别人家里，体验居住自由主义之前，我们还有些建议给您。
                                </div>
                                <img class="fr" src="${pageContext.request.contextPath}/images/guide_pic2.jpg" width="276" height="156" />
                            </div>
                            <div id="part_more_tenant_2" style="display:none;">
                                <p class="guide_p">
                                <strong class="guide_p_T">入住前联系房东</strong>
                                我们建议您在入住前一天或两天再次联系房东，告知您将要到达的准确时间，同时了解当地的天气，了解如何到达住处，也可以提醒房东做好接待准备。
                                </p>
                                <p class="guide_p">
                                <strong class="guide_p_T">与房东沟通</strong>
                                每一个朋友的相识都是缘分，如果有可能，希望您和房东一起聊聊天。您可以通过房东了解当地的风土人情，小吃美食，还有那些只有当地人才知道的关于那座城市的秘密。您和房东还可以互相分享各自的旅行经历或读书感悟，一起做几道拿手菜。总之，真诚、坦率的相互沟通，总是受人欢迎的。
                                </p>
                                <p class="guide_p">
                                <strong class="guide_p_T">按照房东的要求使用空间及设施</strong>
                                入住期间请尊重房东的隐私，合理的使用公共区域以及保持您入住空间的基本整洁，这些都是非常礼貌和必要的。同时还希望您能尊重房东的作息时间及生活习惯，尊重他们的邻居及所在社区的公共秩序，不在未经房东确认的情况下带朋友来住处，或在房间内吸烟、酗酒、聚会和饲养宠物等。
                                </p>
                                <p class="guide_p">
                                <strong class="guide_p_T">入住完成后及时评价</strong>
                                在您入住完成后，您可以对房东和房间进行评价并记录自己真实的入住感受，这些评价能帮助其他房客了解房间和房东。同时房东也可以对您进行评价，其他房东可以藉由这些评价来了解您。因此，希望您珍惜每次的入住机会，重视自己的交易记录，做一个受欢迎的房客。
                                </p>
                                <p class="guide_p">
                                <strong class="guide_p_T">有机会您也可以试试当地主</strong>
                               很多体验过租房网的房客后来都变成了房东，开始分享自己的住处，获得一份不错收益的同时也结交了来自五湖四海的朋友，这的确是一件开心的事情。如果您也有闲置的房间或房屋，甚至一个床位或沙发，我们希望您也一起加入租房网做房东，体验分享的乐趣。如果您想了解如何成为房东和如何发布自己的房源，请点击“<a href="http://www.xiaozhu.com/xzweb.php?op=Help_UserGuide&type=landlord" target="_blank">房东指南</a>”
                                </p>
                                <p class="textRt"><a class="btn_close" href="#ongo" onclick="hiddenMore('tenant_2')">收起</a></p>
                            </div>
                        </div>
                        <div class="guide_column" name="part_3" id="part_tenant_3" onMouseover="mouseOver('tenant_3')" onMouseout="mouseOut('tenant_3')">
                            <div class="overF_hidden" onclick="togglePart('tenant_3')">
                                <div class="guide_L">
                                    <strong>安全完备的保障</strong> <a class="btn_close nomargin" href="#ongo" id="more_tenant_3" >更多</a><br />
                                    作为一个社交住宿担保交易平台，自租房网上线以来，已有数十万的房客完成入住，我们充分理解您对住进一个陌生人家中的担忧，并为此做了大量工作来保障您整个交易与入住过程的安全性。
                                </div>
                                <img class="fr" src="${pageContext.request.contextPath}/images/guide_pic3.jpg" width="276" height="156" />
                            </div>
                            <div id="part_more_tenant_3" style="display:none;">
                                <p class="guide_p">
                                <strong class="guide_p_T">“无忧入住”房客保障计划</strong>
                                当您在租房网上完成预订并付款成交后，作为担保交易平台，我们将对以下内容提供保障：<br />
                                <span class="dot_sty">&middot;</span>保障线下留房：如果房东违约，不能按照订单约定为您提供入住，或入住时无法联系到房东，我们将会提供保障，协调房东解决或帮您预订附近的其他住处，帮您找到满意的住所；<br />
                                <span class="dot_sty">&middot;</span>保障图片和描述与实际相符：在您入住后，如发现实际房间与页面上的图片或描述严重不符，或承诺的设施不可用，或收取未注明的额外费用，我们将会提供保障，直到您满意为止；
                               
                                </p>
                                <p class="guide_p">
                                <strong class="guide_p_T">房客保险</strong>
                                无论是国内出行还是到海外出行，租房网都为房客提供了保险服务。只要身份信息完整还可免费获赠保险，免除双方的后顾之忧。更多内容可以查看<a href="http://www.xiaozhu.com/insurancedescription"  style="color:red;" target="_blank">《众安住宿旅行意外保险告知书》</a>、<a href="http://www.xiaozhu.com/help/taikangfkinsurancedescription"  style="color:red;" target="_blank">《泰康住宿旅行意外保险告知书》</a>和<a style="color:red;" href="http://www.xiaozhu.com/help/abroadinsurance" target="_blank">《海外住宿意外保险告知书》</a>
                                </p>
                                <p class="guide_p">
                                <strong class="guide_p_T">在线交易的重要性</strong>
                                在租房网上下单预订并入住，是以上保障计划得以实施的前提。我们只能对您在租房网上完成的交易进行保障，未在租房网上完成的交易，我们是无法提供保障的，因此，希望您所有交易在线上完成。
                                </p>
                                <p class="textRt"><a class="btn_close" href="#ongo" onclick="hiddenMore('tenant_3')">收起</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                 
<div class="foot_v2">
        <ul class="foot_ul">
        <li><a class="guide" href="http://www.xiaozhu.com/xzweb.php?op=Help_UserGuide&type=tenant" target="_blank">房客指南</a></li>
        <li><a class="guide icon_fk" href="http://www.xiaozhu.com/xzweb.php?op=Help_UserGuide&type=landlord" target="_blank">房东指南</a></li>
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
            <span class="logindialog"   ><i></i>在线客服</span>
            <p>客服电话  400 - 010 - 7890</p>
            <p>客服邮箱  service@xiaozhu.com</p>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/xzjs.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/lazyload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/xzim4.js" id="webimSource"></script>

  
    </body>
<!-- Google Tag Manager -->

<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-W85X4L" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-W85X4L');
</script>

<!-- End Google Tag Manager --></html>