<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="renderer" content="webkit">
<meta name="keywords" content="房屋租赁网"/>
<meta name="description" content="" />
<link rel="shortcut icon" href="favicon.ico" type="image/vnd.microsoft.icon">
<link rel="icon" href="favicon.ico" type="image/vnd.microsoft.icon">
<title>房屋租赁网</title><meta http-equiv="Cache-Control" content="no-transform " />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sc.css"  />
</head>
<body>


<div class="detail_wrapper"></div>
  

<!--subNav-->
<div class="header_bg" style="position:fixed;width:100%;top:0;left:0;z-index:999;display:none;" id="scrollHeader">
    <div class="detail_header clearfix">
        <div class="nav_l">
            <a class="xz_logo" href="#">租房网</a>
            <ul id="scorllFather">
                <li>
                                        <a href="#ongo">实拍照片</a>
                                    </li>
                <li>
                    <a href="#ongo">详细介绍</a>
                </li>
                <li>
                    <a href="#ongo">位置地图</a>
                </li>
                <li>
                    <a href="#ongo">预订须知</a>
                </li>
                <li>
                    <a href="#ongo">入住点评</a>
                </li>
                            </ul>
        </div>
        <div class="nav_r clearfix" id="scrollPrice">
            <div class="fl">&#165;<span class="detail_avgprice">${h.price }</span><em></em></div>
            <div class="time_r">每月</div>
        </div>
    </div>
</div>
<!--/subNav-->


 <!--main -->
 <div class="wrap clearfix con_bg">

     <!--left content-->
     <div class="con_l">
         <div class="pho_info">
             <h4>
                 <em>殊•途-坐落万达商圈、近七星岩、会展、象鼻山</em>
             </h4>
                                       
             <p title="广西壮族自治区桂林市七星区万达广场">
                 <em class="col_pink">
                    <a href="" >租房网</a>
                    &gt;
                    <a href="">桂林</a>
                    &gt;
                 </em>
                                  <span class="pr5">${h.address }${h.address2 }
                                  </span>
                              </p>
             <div class="labels">
                                                                                                                                                                                                                                                                                                                                    <span title="周租月租有折扣，长期入住更实惠"><em class="changzu_ico"></em>长租优惠</span>
                                                                       <span title="租房网在线担保、无需支付押金"><em class="mianyajin_ico"></em>免押金</span>
                                                                    <span title="租房网实地考察，确保房源真实性"><em class="yanzhen_ico"></em>验真</span>
                                                                       <span title="摄影师上门拍摄，100%还原房源"><em class="shipai_ico"></em>实拍</span>
                 
                                                      <span title="自助入住和退房，无需等待房东"><em class="mensuo_ico"></em>智能门锁</span>
                                  &nbsp;
             </div>
         </div>

		 
		 
        

		 
		 
               


 <div class="pho_show clearfix user_unselectable" id="detailImageBox" onselectstart="return false">
             <div class="pho_show_l">
                 <div class="pho_show_big">
                                          <div class="pho_tip_box" id="curImgIntro" style="display:none;">
                         <div>
                             <span></span>
                         </div>
                     </div>
                     <div valign="middle" align="center">
                         <div id="imgMouseCusor" style="background:url('/images/detail/null_bg.png')"></div>
                        <div class="swiper-container">
        <div class="swiper-wrapper"><!-- width="101px" height="33px" -->
             <c:forEach var="i" items="${imageslist}" varStatus="status"><%-- <%=basePath %>img --%>
            <div class="swiper-slide"><img class="" src="/images/${i.basepath}" id="img_imagecodes" width="790px" height="560px"/></div>
            </c:forEach>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <!-- Add Navigation -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>

                     </div>
                                      </div>
             </div>
            
         </div> 





		 

											 
											 
											 
                          <div id="introducePart">
             <ul class="house_info clearfix" id="introduce">
                 <li class="border_none">
                     <h6 class="h_ico1">整套出租</h6>
                     <p>房屋面积：${ h.area}平米<br/>                         房屋户型：${ h.type}</p>
                 </li>
                 <li>
                     <h6 class="h_ico2">宜住1-3人</h6>
                     <p>
                                                     房客独享整套房屋
                                                  </p>
                 </li>
                 <li>
                     <h6 class="h_ico3">共4张</h6>
                     <p>
                                                                                                                             
                         双层床：1.5m宽 × 1.9m长 ×1张<br />
                                              </p>
                 </li>
             </ul>

                          <div class="box_white clearfix detail_intro_item" hideheight="135" showheight="120" >
                 <div class="info_l">
                     <span class="info_ico1"></span>
                     <p>个性描述</p>
                 </div>
                 <div class="info_r">
                     <div class=" intro_item_content">
                         <p>诗和远方，酒和故事，又何尝不是我们每一段特殊的旅途。既然没精力走遍世界，就等在世界的你们来感受我同样努力用心归还的这份家的温度！更有私人订制旅游攻略都找不到、本地人都鲜有听说的还未开发商业气息的游玩路线，陪你一起享受纵情山水中的悠闲自在！</p>
                     </div>
                     <div class="open" style="display:none;">查看全部<span></span></div>
                     <div class="stop" style="display:none;">收起<span></span></div>
                 </div>
             </div>
            
                         <div class="box_gray clearfix detail_intro_item" hideheight="135" showheight="120" >
                 <div class="info_l">
                     <span class="info_ico2"></span>
                     <p>内部情况</p>
                 </div>
                 <div class="info_r">
                     <div class=" intro_item_content">
                                                  <p>桂林殊途民宿公寓位于万达广场商圈，距离国际会展中心、体育中心、穿山公园、七星公园五分钟路程，漓江、王城景区、叠彩山、象鼻山、伏波山、两江四湖景点仅十余分钟路程，23路，100路公交直达市中心，购物、餐饮、娱乐、出游极其便利；万达公寓距离机场33公里，火车站和汽车客运站6公里，高铁站12公里，高速路口8公里；万达商圈停车场，为您的自驾出游解决后顾之忧；房间彩电、冰箱、洗衣机、油烟机设施齐全生活配套设施一应俱全， 24小时冷热水独立卫浴，无线WIFI，超大的观景阳台可以尽情饱览秀美景色；厨具出租，为您的外出增添如在家般的亲切；小区环境优雅宁静，宜居宜闲，是您休闲、度假、商务的理想之选，将为您带来超出期望的居住体验。</p>
                                              </div>
                     <div class="open" style="display:none;">查看全部<span></span></div>
                     <div class="stop" style="display:none;">收起<span></span></div>
                 </div>
             </div>
                                                                 <div class="box_white clearfix detail_intro_item" hideheight="135" showheight="120" >
                 <div class="info_l">
                     <span class="info_ico3"></span>
                     <p>交通情况</p>
                 </div>
                 <div class="info_r">
                     <div class=" intro_item_content">
         <!-- 万达自带商圈，下楼即到，电影IMAX、星巴克、小吃街、超市、全国万达自带体系就不用一一阐述了。一路之隔一分钟即到的就是桂林本土最大地产公司的彰泰商业广场，本土品牌和当地美食都在这里了。当然旅游去景区、机场、公园、公车大巴出租滴滴都在楼下有搭乘点！ -->               
                         <p>${ h.address}${ h.address2}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<a class="zhima_deposit_noico" target="_blank"  href="http://api.map.baidu.com/geocoder?address=${ h.address} ${ h.address2}&output=html&src= ${ h.address2}">查看地图</a></label></p>
                     <p>附近公园:${ l.park}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;附近美食:${ l.eat}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;附近医院:${ l.hospital}</p>
                     </div>
                     <div class="open" style="display:none;">查看全部<span></span></div>
                     <div class="stop" style="display:none;">收起<span></span></div>
                 </div>
             </div>
             
                          <div class=" box_gray  clearfix detail_intro_item" hideheight="135" showheight="120" >
                 <div class="info_l">
                     <span class="info_ico4"></span>
                     <p>周边情况</p>
                 </div>
                 <div class="info_r">
                     <div class=" intro_item_content">
                                                  <p>万达仅有的两栋公寓楼本身位置就在醒目的正路边的位置，便于找寻。自带的物业管理也安全有序、24小时保安巡视。小区绿树喷泉的景致更是清新怡人、出入都需刷门禁卡让您住的更加安全放心。楼下自带大型24监控停车场，2小时内免费，24小时封顶15元，自驾旅行出差朋友的福音。周边除了商业圈，离桂林体育中心也仅有步行5分钟，国际会展中心15分钟，七星公园20多分钟的路程！</p>
                                              </div>
                     <div class="open" style="display:none;">查看全部<span></span></div>
                     <div class="stop" style="display:none;">收起<span></span></div>
                 </div>
             </div>
                          
                                                    <div class="box_white clearfix detail_intro_item" hideheight="134" showheight="130" >
                 <div class="info_l">
                     <span class="info_ico5"></span>
                     <p>配套设施</p>
                 </div>
                 <div class="info_r">
                     <div class="intro_item_content">
                         <ul class="pt_list clearfix">
                                                                                       <li class="s_ico_shower">热水淋浴                             </li>
                                                                                                                    <li class="s_ico_wirelessnetwork">无线网络                             </li>
                                                                                                                    <li class="s_ico_aircondition">空调                             </li>
                                                                                                                    <li class="s_ico_tv">电视                             </li>
                                                                                                                    <li class="s_ico_elevator">电梯                             </li>
                                                                                                                    <li class="s_ico_accesssys">门禁系统                             </li>
                                                                                                                    <li class="s_ico_washer">洗衣机                             </li>
                                                                                                                    <li class="s_ico_icebox">冰箱                             </li>
                                                                                                                    <li class="s_ico_parkingspace">停车位                             </li>
                                                                                                                    <li class="s_ico_drinking">饮水设备                             </li>
                                                                                                                    <li class="s_ico_heater">暖气                             </li>
                                                                                                                    <li class="s_ico_wirednetwork">有线网络                             </li>
                                                                                                                    <li class="s_ico_slippers">拖鞋                             </li>
                                                                                                                    <li class="s_ico_toiletpaper">手纸                             </li>
                                                                                                                    <li class="s_ico_brush">牙具                             </li>
                                                                                                                    <li class="s_ico_towel">毛巾                             </li>
                                                                                                                    <li class="s_ico_toiletries">浴液 洗发水                             </li>
                                                                                                                    <li class="s_ico_soap">香皂                             </li>
                                                                                                                    <li class="s_ico_iscook">允许做饭                             </li>
                                                                                                                    <li class="s_ico_smoke">允许吸烟                             </li>
                                                                                                                    <li class="s_ico_meet">允许聚会                             </li>
                                                                                                                    <li class="s_ico_no">浴缸</li>
                                                                                                                    <li class="s_ico_no">允许带宠物</li>
                                                                                   </ul>
                     </div>
                     <div class="open" style="display:none;">查看全部<span></span></div>
                     <div class="stop" style="display:none;">收起<span></span></div>
                 </div>
             </div>

                                                    <div class="box_gray clearfix detail_intro_item" hideheight="135" showheight="120" >
                 <div class="info_l">
                     <span class="info_ico6"></span>
                     <p>入住须知</p>
                 </div>
                 <div class="info_r">
                     <div class="info_text_mid">
                                                                                                                             
                                                                           <ul class="check_con clearfix">
                             <li>卫生间：独立卫生间</li>
                             <li>最少入住天数：1天</li>
                             <li>最多入住天数：无限制</li>
                             <li>是否接待境外人士：不接待</li>                             <li>被单更换：每客一换</li>
                         </ul>

                     </div>
                 </div>
             </div>
         </div>

		 
		 
		 
		 
		 
		 
		 
		 
		<!--  
         <div class="xq_map" style="position:relative">
             <div class="map_btm"></div><div class="xq_map" id="detailMap" style="height:500px"></div>
             <div class="map_text">
                 <table>
                     <tr>
                         <td>
                                                          
                            <a href="http://api.map.baidu.com/geocoder?address=桂林市七星区万达广场&output=html&src=桂林市七星区万达广场" target="_blank"> 房源位置：广西壮族自治区桂林市七星区万达广场</a>
                                                      </td>
                     </tr>
                 </table>
             </div>
         </div>
		  -->
		 
		 
		 
		 

         <div class="bg_box" id="rulesPart">
             <div class="clause_box">
                                  <h5>押金及其他费用</h5>
                                  <p>押金：
                                          
                     200元                                                               <a href=""><span class="zhima_deposit_noico">凭信用免押金 ></span></a>
                                          <br />
                                                                            加客：加客50元/位<br /></p>
                                  <div class="clearfix">
                     其他额外费用：清洁费50元/次。设备损坏按照实际价格支付。                 </div>
             </div>
             
             <div class="clause_box">
                 <h5>预订条款</h5>
                 <p>
                     订单确认后，在线支付总房款的100%。<br/>
                     额外的服务费用不包含在总房租内，由房东线下收取。<br/>
                                      </p>
             </div>

             <div class="clause_box border_none1">
                 <h5>退订规则
                                      </h5>
                                  <div class="order_h">
                     <div class="order_bar">
                         <ul class="clearfix">
                             <li></li>
                         </ul>
                         <div class="order_tip1 pos_1">如取消订单，订金全部退还</div>
                         <div class="order_tip2 pos_2">如取消订单，扣除前7天的订金。</div>
                         <div class="order_tip2 pos_3">如提前退房，扣除之后7天的订金。</div>
                         <div class="day_tip">
                             <span class="point1"></span>
                             <p id="pos_n_1">预订成功</p>
                         </div>
                         <div class="day_tip pos_4">
                             <span class="point1"></span>
                             <p id="pos_n_2">入住前7天14：00前</p>
                         </div>
                         <div class="day_tip pos_5">
                             <span class="point2"></span>
                             <p id="pos_n_3">入住当天 14：00前</p>
                         </div>
                         <div class="day_tip pos_6">
                             <span class="point3"></span>
                             <p id="pos_n_4">退房当天 12：00前</p>
                         </div>
                     </div>
                 </div>
                              </div>
         </div>

         <!--点评-->
         

                           <div id="load_Ajax_GetDetalCommentAndOtherComment" class="commentlist bg_box mt_10">
                          <layzeload key="Ajax_GetDetalCommentAndOtherComment" memkey="layzeload_0114Ajax_GetDetalCommentAndOtherComment_12314681702" memtimeout="3600" turl="/ajax.php?op=Ajax_GetDetalCommentAndOtherComment&roomId=12314681702" jsexecafterload="initCommentClick()"></layzeload>
                      </div>
                  <!--/点评-->

     </div>
     <!--/left content-->

     <!--right content-->
     <div class="con_r">
         <div class="top_bar clearfix">
             <ul class="collection_ul"  style="display:none;">
                 <li   class="top_bar_w1 col_pink tl_text collection_btn_full">
                     <a href="#ongo"  class="ysc_ico un_collection_btn"  id="unCollectionBtn">收藏</a>
                     <!-- class="ysc_ico un_collection_btn" -->
                 </li>
                 <li class="top_bar_w3 tl_text collection_btn_short" style="display:none;">
                     <a class="sc_ico ysc_ico un_collection_btn"></a>
                 </li>
             </ul>
             <ul class="collection_ul" >
                 <li class="top_bar_w1 tl_text collection_btn_full">
               <%--   <%=basePath %>provider/getHouse?house_id=${h.house_id} --%>
                     <a href="#ongo"  class="sc_ico collection_btn" id="collectionBtn">收藏</a>
                 </li>
                 <li class="top_bar_w3 tl_text collection_btn_short" style="display:none;">
                     <a href="#ongo" class="sc_ico collection_btn"></a>
                 </li>
             </ul>
             <ul>
                 <li class="top_bar_w1 detail-default-share">
                     <a href="#ongo" class="share_ico">分享</a>
                 </li>
                 <li class="top_bar_w4 pr detail-icon-share" style="display:none;">
                     
                 </li>
                                  <li class="top_bar_w2 border_right_none">评分：<em class="score-rate">5分</em></li>
                              </ul>
         </div>

         <div class="bg_box" id="floatRightBox">
             <div class="day_top clearfix" id="pricePart">
                 <div class="day_l">&#165;<span> ${h.price }</span><em></em></div>
                 <div class="day_r">每月</div>
             </div>

             <!--预定start-->
             <div id="detailBookArea">
                                  <div class="reserve_box clearfix">
    <div class="reserve_space">
                        <div class="clearfix">
            <div class="reserve_date">
                <div class="reserve_ico" id="detailCalendarIco"></div>
                <input type="text" class="date_input" id="startenddate" value="入住日期 - 离开日期" />
                <input type="hidden" name="startdate" id="startdate" value="" />
                <input type="hidden" name="enddate" id="enddate" value="" />
                <div id="calendar-box" style="display:none" class="calendar_box clearfix"> </div>
            </div>
            <div class="select_box">
                <div class="select_arrow"></div>
                <input id="sameRoomNum" data-bookroomnum="" type="text" readonly="readonly" value="1套" /> 
                <ul class="select_con room_num_select limit10" id="detailRoomNumSelect">
                                        <li data-num="1">1套</li>
                                    </ul>
            </div>
        </div>
        <div class="price_top">
            <div class="reserve_text line_none">
                                    一次性付清押一付二9.5折
                                        ，一次性付清押一付三9折
                                                </div>
        </div>
        <div class="order_btn_container"> 
         
                        <a class="order_btn" href="#ongo" id="day_yuding">立即预订</a>
                            </div>
            </div>
    <div class="white_bg">
        <ul class="cal_box clearfix">
        </ul>
    </div>
</div>                              </div>
             <!--预定end-->

             <!--landlord info start-->
                          
             <div class="js_box clearfix">
                                  <div class="member_pic">
                     <div class="member_ico"></div>
                                              <a href=""  target="_blank">
                             <img  src="/head/${h.provider_id }.jpg"  />
                         </a>
                                      </div>
                 <div class="w_240">
                     <h6>
                                                  <a class="lorder_name" href="" title="Jerson185" target="_blank">Jerson185</a>
                                                  <span class="member_boy_ico"></span>
                     </h6>
                     <p class="col_green">
                                                     <span class="pl10" title="">实名认证</span>
                                                                              <span class="zm_ico zm_credit">625</span>
                                              </p>

                                             <div id="alipay-trust-box" class="zhima_layer add4" style="display: none">
        <div class="zhima_box_top">
            <div class="zhima_lh">
            <h4 class="zhima_score_tit">芝麻分</h4>
            <h4 class="zhima_score">625</h4>
            <h4 class="zhima_score_result">信用良好</h4>
        </div>
        <p class="zhima_score_text">良好的信用评分也在一定程度上体现出，这是一位遵纪守法、行为良好的房东，您可以放心入住。<a class="col_pink" href=""  target="_blank">了解更多&gt;&gt;</a></p>
    </div>
    <div class="zhima_box_bottom">
        <em class="xz_zm_logov2"></em>
        <h4 class="f12">有信用，免押金</h4>
        <p class="f12">授权芝麻信用，芝麻分满600</p>
        <p class="f12">可在全国范围享受免押金入住</p>
        <a href=""  target="_blank" class="look_score">查看我的芝麻分>></a>
    </div>
</div>                                      </div>
                                  <div class="on_line col_pink">
                    <span></span>
                    <a class="btn_chat  show-register-box " href="#ongo" id="webim-chat-user" userid="12314518401" roomid="12314681702">在线聊天</a>
                 </div>
                              </div>
             <!--landlord info end-->
         </div>

     </div>
     <!--/right content-->
 </div>

 <div class="wrap" id="otherRoomPart"></div>
 <!--/main -->
  <!--hiden dialog-->
 <div id="fullCalendarDialog" style="display:none">
    <div class="colsed"></div>
    <div class="mask"></div>
    <div class="calendar_big clearfix">
        <div class="calendar_l">
            <div class="arrow_l1">
            </div>
            <div class="arrow_r1"></div>
            <div class="calendar_big_tit" id="leftMonth"></div>
            <table class="calendar_top" border="0" cellspacing="0" cellpadding="0"> 
                <thead>
                    <tr><th class="col_pink">日</th>
                        <th>一</th>
                        <th>二</th>
                        <th>三</th>
                        <th>四</th>
                        <th>五</th>
                        <th class="col_pink">六</th>
                </tr></thead>
            </table>
            <table width="100%" border="0" cellspacing="4" cellpadding="0" class="calendar_big_table">
                <tbody id="leftTbody">
                </tbody>
                <tbody>
                </tbody>
            </table>
        </div> 
        <div class="calendar_r">
            <div class="calendar_btm clearfix">
                <div class="calendar_text col_pink yh">
                    满7天9折                     满30天7.5折                </div>
                            </div>
            <div class="calendar_big_tit" id="rightMonth"></div>
            <table class="calendar_top" border="0" cellspacing="0" cellpadding="0"> 
                <thead>
                    <tr><th class="col_pink">日</th>
                        <th>一</th>
                        <th>二</th>
                        <th>三</th>
                        <th>四</th>
                        <th>五</th>
                        <th class="col_pink">六</th>
                </tr></thead>
            </table>
            <table width="100%" border="0" cellspacing="4" cellpadding="0" class="calendar_big_table">
                <tbody id="rightTbody">
                </tbody>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div> <!--/hiden dialog-->
 <div id="addFavoritePop" style="display:none;"></div>
 <div id="addFavoriteGroupPop" style="display:none;">
     
<div class="collect_mask" id="Pop_mask"></div>
<div class="pop_520" id="addGroupPop">
    <h5>新建收藏分组</h5>
    <div class="pop_520_main">
        <div class="group_item">
            <span>名称：</span>
            <input type="text" placeholder="填写收藏分组名称" maxlength="16" id="groupName" value="" />
            <p class="tips_msg"><i></i></p>
        </div>
        <div class="group_item">
            <span>描述：<em>（选填）</em></span>
            <textarea placeholder="可简单填写对分组的描述" maxlength="200" id="groupDesc"></textarea>
        </div>
        <div class="group_item">
            <span>设置成私密：</span>
            <label><input type="radio" name="groupPrivate" value="1"  /><em></em><span>仅自己可以查看这个收藏分组</span></label>
            <label><input type="radio" name="groupPrivate" value="0" checked  /><em></em><span>所有人都可以查看这个收藏分组</span></label>
        </div>
    </div>
    <div class="btn_group">
        <a href="#ongo" class="save_btn" id="addGroupSave">保存</a>
        <a href="#ongo" class="cancel_btn"  id="addGroupCancel">取消</a>
    </div>
    <input type="hidden" id="favoriteGroupId" value=""/>
</div> </div>

 <!--footer-->
  
<div class="foot_v2">
        <ul class="foot_ul">
        <li><a class="guide" href=""  target="_blank">房客指南</a></li>
        <li><a class="guide icon_fk" href="javascript:if(confirm('http://www.xiaozhu.com/xzweb.php?op=Help_UserGuide&type=landlord  \n\nكτݾϞרԃ Teleport Ultra Ђ՘, ӲΪ ̼ˇһٶԲܲ·޶΢ҿѻʨ׃Ϊ̼քǴʼַ֘քַ֘c  \n\nţЫ՚ؾϱǷʏղߪ̼?'))window.location='http://www.xiaozhu.com/xzweb.php?op=Help_UserGuide&type=landlord'" tppabs="http://www.xiaozhu.com/xzweb.php?op=Help_UserGuide&type=landlord" target="_blank">房东指南</a></li>
        <li>
            <span class="guide_T">关于我们</span>
            <a href=" " target="_blank">关于租房网</a>
            <a href="" target="_blank">联系我们</a>
        </li>
        <li>
            <span class="guide_T">网站帮助</span>
            <a href="" target="_blank" >帮助中心</a>
            <a href="" target="_blank">网站地图</a> 
        </li>
        <li class="width_280">
            <span class="guide_T">网站协议</span><br/>
            <a href="" target="_blank">服务协议</a> 
            <a href="" target="_blank">房东规则</a>
            <a href="" target="_blank">房客规则</a>
            <a href="" target="_blank">房源上线标准</a>
            <a href=""  target="_blank">隐私保护</a>
            <a href="" target="_blank">版权声明</a>
            <a href="" target="_blank">免责声明</a>
            <a href=""  target="_blank">知识产权声明</a>
            <a href="" tppabs="" target="_blank">点评发布规则</a>
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
           
        </dd>
    </dl>
    <dl class="link_dl">
         
    </dl>
            <div class="foot_btm">许可证号：<a target="_blank" href="" rel="nofollow">京ICP证140510号</a> &nbsp;&nbsp; 
			<a href=""  name="mt8SMvYyRDI92b06nuDs8dPFapllCJYidqhM1WlOoGRZ9DWpbo" rel="nofollow" target="_blank">安全联盟</a> &nbsp;&nbsp; 北京快跑信息科技有限公司<span style="display:none">  
			&nbsp;&nbsp; 地址：北京市海淀区知春路56号   &nbsp;&nbsp;电话：010-62961978</span>
    </div>
    <div style="width:300px;margin:0 auto;">
        <a target="_blank" href=""  style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="../images/record_icon.png" tppabs="" style="float:left;"/><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#bdc3c7;">京公网安备 11010802020380号</p></a>
    </div>
</div>

<input type="hidden" name="actionName" id="actionName" value="Front_Detail"/>
<input type="hidden" name="xz_srf_token" id="xz_srf_token" value="34c9d3e37df5df3d29962f344a2f9500"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>


<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/up.css"  /> --%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/xzjs.js" ></script> --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lazyload.js" ></script>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/xzcss.css?css=jquery.mCustomScrollbar,nyroModal,uploadify" /> --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/xzim4.js" id="webimSource"></script>




    <!-- jQuery
    <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script> -->
    <!-- Swiper JS -->
    <script src="${pageContext.request.contextPath}/dist/js/swiper.jquery.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev'
    });
    </script>
 <!--/footer-->
 <input type='hidden' id='latitude'         value="25.248888" />
 <input type='hidden' id='longitude'        value="110.32655" />
 <input type='hidden' id='lodgeUnitId'      value="12314681702" />
 <input type="hidden" id="bookUrl"          value="http://www.xiaozhu.com/book" />
 <input type='hidden' id='landlordDiaryNum' value="0" />
 <input type='hidden' id='imgCount'         value="18" />
 <input type='hidden' id='minDay'         value="1" />
  <input type='hidden' id='cityName'         value="桂林" />
 <input type='hidden' id='isAbroad'         value="0" />
 <input type='hidden' id='rule_A'           value="7" />
 <input type='hidden' id="rule_N"           value="7">
 <input type='hidden' id="lodgeUnitCreateType" value="publish">
 <input type='hidden' id="nativeCity"          value="桂林">
 <input type="hidden" id="scriptUrl"        value="//jci.xiaozhustatic1.com/e18031601/xzjs?k=Front_Detail&httphost=gl.xiaozhu.com" />


 <div class="mask" style="display:none;"></div>
  
 
 
 
 

<div class="sharev2_mask" ></div>
<div class="sharev2_w_522" id="sharev2_pop">
    <h4 class="sharev2_h4">分享到</h4>
        <ul class="sharev2_way clearfix">
                <a href=""  target="_blank" >
            <li class="sharev2_pr">
                <img src="" width="42" height="42"/>
                <div class="sharev2weixin_code">
                    <div class="sharev2weixin_tip"></div>
                    <h5 style="color:#333 !important">&nbsp;&nbsp;&nbsp;使用微信“扫一扫”</h5>
                    <p class="sharev2weixin_code_P1"><img src=""  width="122" height="124" alt="微信分享" /></p>
                    <p class="sharev2weixin_code_P2"><a class="pink" href=""  target="_blank" >扫一扫在哪里？扫完之后怎么分享？</a></p>
                </div>
            </li>
        </a>
                <a href="" id="sharetool_sinaweibo" target="_blank"><li><img src="../images/share/sharev2_xl.png" width="42" height="42"/></li></a>
        <a href="" id="sharetool_qqzone" target="_blank"><li class="marginr0"><img src="../images/share/sharev2_kj.png"  width="42" height="42"/></li></a>
    </ul>
    <a href="#ongo" class="sharev2_cancel_btn">取消</a>
    <input type="hidden" id="share_objId" value=12314681702>
    <input type="hidden" id="share_objType" value=1>
    <input type="hidden" id="share_contentType" value=detail>
    <input type="hidden" id="share_city" value=>
    <input type="hidden" id="hideWechat" value=>
</div> </body>


<noscript><iframe src=""  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'/*tpa=http://gl.xiaozhu.com/fangzi/gtm.js*/});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-W85X4L');
</script>

</html>
