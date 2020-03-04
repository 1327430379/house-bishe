<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%
	// 权限验证
	if(session.getAttribute("user")==null){
		response.sendRedirect(basePath+"indexlist.do");
		return;
	}
%>  
<!DOCTYPE>
<html>
  <head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit">
<meta name="keywords" content=""/>
<meta name="description" content="" />
<link rel="shortcut icon" href="//www.favicon.ico" type="image/vnd.microsoft.icon">
<link rel="shortcut icon" href="//www.favicon.ico" type="image/vnd.microsoft.icon">
<link rel="icon" href="//www.favicon.ico" type="image/vnd.microsoft.icon">
<title>发布您的房间</title>         <link rel="stylesheet" type="text/css" href="<%=basePath %>css2/xzcss.css" />
    </head>
    <body>
            
                <div class="top"></div>

<div class="detail_wrapper">
           

 </div>
            <div class='h_top_box'>
                <div class="h_step_box">
                                        <ul class="clearfix">
                        <li></li>                        <li></li>                        <li></li>                                            </ul>
                                        <div class="h_step_cur h_pos1">
                                                <a href="" class="h_step1_cur"><span></span></a>
                                                <p>房源信息</p>
                    </div>
                    <div class="h_step_cur h_pos2">
                                                <a href="" class="h_step2_cur"><span></span></a>
                                                <p>房源描述</p>
                    </div>
                    <div class="h_step_cur h_pos3">
                                                <a href="" class="h_step3_cur"><span></span></a>
                                                <p>配套设施</p>
                    </div>
                    <div class="h_step h_pos4">
                                                <span class="h_step4_cur"></span>
                                                <p>真实照片</p>
                    </div>
                    <div class="h_step h_pos5">
                                                <span class="h_step5"></span>
                                                <p>价格规则</p>
                    </div>
                </div>
            </div>
                        <input type="hidden" id="upi_imgurls"  name="upi_imgurls" value="">
<input type="hidden" id="upi_mainimageurl" name="upi_mainimageurl"  value="">
<input type="hidden" id="degreesParam"  name="degreesParam" value="">
<input type="hidden" id="mainImage" value="">
<input type="hidden" value="" id="room_type"/>
        <div class="h_wrap file_pho_bg mt20">
        <h4 class="h_tit1">请您按如下建议上传房源真实照片</h4>
        <ul class="h_pho_box clearfix">
            <li>
                <div class="room_icon">卧室图示</div>
                <img class="h_img" alt="" src="<%=basePath %>images/provider/h_pic1.png"> 
                <p>卧室填写<span>数量</span>需要与照片<span>吻合</span></p>
            </li>
            <li>
                <div class="room_icon">床铺图示</div>
                <img class="h_img" alt="" src="<%=basePath %>images/provider/h_pic2.png"> 
                <p>床铺填写<span>数量</span>需要与照片<span>吻合</span><br>
                        床铺<span>拍照完整</span>，床品<span>齐全</span></p>
            </li>
            <li>
                <div class="room_icon">卫浴图示</div>
                <img class="h_img" alt="" src="<%=basePath %>images/provider/h_pic3.png"> 
                <p><span>卫浴</span>及<span>地面</span>细节完整</p>
            </li>
            <li>
                <div class="room_icon">厨房图示</div>
                <img class="h_img" alt="" src="<%=basePath %>images/provider/h_pic4.png"> 
                <p>厨房需含<span>灶具</span>、<span>台面</span>的整体照片
                    （如可做饭）</p>
            </li>
        </ul>
    </div>
    
    
    <form action="${pageContext.request.contextPath}/provider/updateImg" method="post" enctype="multipart/form-data">
        <div class="h_wrap">
                                <h4 class="h_tit">真实照片</h4>
                <div class="h_pic_list clearfix">
            <ul id="imageBox" class='dp_con '>
                                                <li id='thumbnails'>
                    <div id='fileNow'>
                     <input type="hidden" name="house_id" value="${house_id }">
                        <input type="file" class="file_input" id="filesInput" name="multipartfiles"  multiple>
                        <div class="h_add_pic"></div>
                    </div>
                    <div id='fileWait' style='display:none'>
                        <div class="upload_now"></div>
                    </div>
                </li>
            </ul>
            
            
            
        </div>
         
   </div>
<div class="w_960 pb20 clearfix">
       
        <input  class="keep_btn" id='picSave'  type="submit" value="保存下一步"/>
    </div>
   
    </form>
    

<ul id="imgBig" class="thumb-photo-nav" style="display:none;">
    </ul>
<ul id="imgBigError" class="" style="display:none;"></ul>
<!--照片轮播-->
<div id="lightBoxDialog" class="user_unselectable" style="display:none;">
    <div class="mask"></div>
    <div class="colsed" id="close_photo_box"></div>
    <div class="pic_show_box">
        <div class="big_pic user_unselectable">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td id="bigImage_pic_box">
                        <div class="pr">
                            <div class="rota_bg"></div>
                            <div class="rota_box">
                                <a class="rota_l pos_41"></a>
                                <a class="rota_r pos_82"></a>
                            </div>
                            <img id="curBigPhoto" src="" alt=""/>
                            <input type="hidden" id="curBigPhotoId" value="" />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <div class="small_pic_box_1 clearfix" id="small_pic_box_father">
        </div>
    </div>
</div>
<!--/照片轮播-->       
<div id="cboxOverlay" class="cboxOverlay"></div>
<div id="colorbox" class="colorbox"></div>
<div id="cutPicture" class="cutPicture"></div>
<div id="bigImage"></div>
<div class="weixin_layer" style="display: none;" id="weixin_layer">
    <i class="wenxin_img"></i>
    <span class="wenxin_text">微信传图</span>
    <i class="wenxin_tip" id="wenxin_tip">展开</i>
</div>
<div class="weixin_con" style="display: none;" id="weixin_con">
    <h4 class="weixin_title">微信传图<span class="weixin_wrong" id="weixin_wrong"></span></h4>
    <div><img src="" style="width:172px;height:172px;"></div>
    <p class="mt_10 f14">照片在手机里？<br>微信扫描二维码，关注后上传</p>
</div>                        <div class="o_mask" id='mask'  style="display:none;"></div>
        <div class="o_warp" id="dialog"  style="display:none;border:none;"></div>   
        <input type="hidden" value="" id="houseId"/>
        <input type="hidden" value="29439680602" id="roomId"/>
        <input type="hidden" value="" id="userRole">
        <input type="hidden" value="4" id="step">
        <input type="hidden" value="Pub_IndexV2Step4" id="action">

        <div class='h_body'>
             
<div class="foot_v2">
        <ul class="foot_ul">
        <li><a class="guide" href="http://www.xzweb.php?op=Help_UserGuide&type=tenant" target="_blank">房客指南</a></li>
        <li><a class="guide icon_fk" href="http://www.xzweb.php?op=Help_UserGuide&type=landlord" target="_blank">房东指南</a></li>
        <li>
            <span class="guide_T">关于我们</span>
            <a href="http://www.aboutus" target="_blank">关于小猪</a>
            <a href="http://www.contactus" target="_blank">联系我们</a>
        </li>
        <li>
            <span class="guide_T">网站帮助</span>
            <a href="http://www.help/index" target="_blank" >帮助中心</a>
            <a href="http://www.sitemap.html" target="_blank">网站地图</a> 
        </li>
        <li class="width_280">
            <span class="guide_T">网站协议</span><br/>
            <a href="http://www.help/service" target="_blank">服务协议</a> 
            <a href="http://www.help/landlordRule" target="_blank">房东规则</a>
            <a href="http://www.help/tenantRule" target="_blank">房客规则</a>
            <a href="http://www.help/auditRule" target="_blank">房源上线标准</a>
            <a href="http://www.help/privacy" target="_blank">隐私保护</a>
            <a href="http://www.help/copyright" target="_blank">版权声明</a>
            <a href="http://www.help/disclaimer" target="_blank">免责声明</a>
            <a href="http://www.help/intellectualProperty" target="_blank">知识产权声明</a>
            <a href="http://www.help/commentRule" target="_blank">点评发布规则</a>
        </li>
        <li class="bigFont online_kf">
            <span class=""   onclick='open7Moor()' ><i></i>在线客服</span>
            <p>客服电话  400 - 010 - 7890</p>
            <p>客服邮箱  service@xiaozhu.com</p>
        </li>
            </ul>
        <dl class="link_dl">
        <dt>城市导航</dt>
        <dd>
            <a target="_blank" href="">北京短租房</a>
            <a target="_blank" href="//sh.">上海短租房</a>
            <a target="_blank" href="//nj.">南京短租房</a>
            <a target="_blank" href="//cd.">成都短租房</a>
            <a target="_blank" href="//gz.">广州短租房</a>
            <a target="_blank" href="//cq.">重庆短租房</a>
            <a target="_blank" href="//wh.">武汉短租房</a>
            <a target="_blank" href="//dl.">大连短租房</a>
            <a target="_blank" href="//sanya.">三亚短租房</a>
            <a target="_blank" href="//lijiang.">丽江短租房</a>
            <a target="_blank" href="//tj.">天津短租房</a>
            <a target="_blank" href="//xianggang.">香港短租房</a>
            <a target="_blank" href="//cs.">长沙短租房</a>
            <a target="_blank" href="//wx.">无锡短租房</a>
            <a target="_blank" href="//km.">昆明短租房</a>
            <a target="_blank" href="//jn.">济南短租房</a>
            <a target="_blank" href="//xm.">厦门短租房</a>
            <a target="_blank" href="//qd.">青岛短租房</a>
            <a target="_blank" href="//zz.">郑州短租房</a>
            <a target="_blank" href="//xa.">西安短租房</a>
            <a target="_blank" href="//hz.">杭州短租房</a>
            <a target="_blank" href="//sz.">深圳短租房</a>
            <a target="_blank" href="//sy.">沈阳短租房</a> 
            <a target="_blank" href="//su.">苏州短租房</a>
        </dd>
    </dl>
    <dl class="link_dl">
         
    </dl>
            <div class="foot_btm">许可证号：京ICP证140510号 &nbsp;&nbsp; <a href="http://www.anquan.org/s/www.xiaozhu.com" |="" name="mt8SMvYyRDI92b06nuDs8dPFapllCJYidqhM1WlOoGRZ9DWpbo" rel="nofollow" target="_blank">安全联盟</a> &nbsp;&nbsp; 北京快跑信息科技有限公司<span style="display:none">  &nbsp;&nbsp; 地址：北京市海淀区知春路56号   &nbsp;&nbsp;电话：010-62961978</span>
    </div>
    <div style="width:300px;margin:0 auto;">
        <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020380" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="/images/record_icon.png" style="float:left;"/><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#bdc3c7;">京公网安备 11010802020380号</p></a>
    </div>
</div>



</body>
<!-- Google Tag Manager -->

<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-W85X4L" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-W85X4L');
</script>

<!-- End Google Tag Manager -->
</html>