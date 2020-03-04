<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit">
<meta name="keywords" content="短租,日租,租房,家庭公寓,自助公寓,家庭旅馆,旅游,旅租,租房网"/>
<meta name="description" content="租房网，是超便宜、最可信、有保障的短租日租在线交易平台。您可以用50元的价格感受经济酒店般的入住，或用200元的价格享受高星级酒店同等的待遇。" />
<link rel="shortcut icon" href="//www.xiaozhu.com/favicon.ico" type="image/vnd.microsoft.icon">
<link rel="icon" href="//www.xiaozhu.com/favicon.ico" type="image/vnd.microsoft.icon">
<title>租房网</title>        
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xzcss2.css" />
    </head>

    <body>
         
        <div class="guide_head2">
            <p class="guide_word f_yahei">
                <span class="f24 mb15">新手上路</span>
                <span class="f14">分享自己闲置的房间或房屋，在家里像酒店一样接待房客，能结识来自五湖四海的陌生朋友</span>
                <span>在这里，您能遇上志同道合的朋友，也能领略五湖四海的风土人情</span>
                <span class="f14">让我们引导您如何成为租房网房东，开启一段难忘而有趣的旅程</span>
            </p>
        </div> 
        <div class="guide_main f_yahei clearfix">
            <!--左边导航区start-->
            <div class="left_sidebar fl">
                <h4 class="mb25 black_style pink_cur" id="guide_list1" valuedivid='guide_tab1'>
                    <span>分享让生活充满期待</span>
                </h4>
                <ul class="sidebar_list"><li></li></ul>
                <h4 class="mb25 black_style">
                    <span>为房客准备一套好房子</span>
                </h4>
                <ul class="sidebar_list" id="guide_list2" valuedivid='guide_tab2'>
                    <li class="bg_gray"><span>好房子必备的三大要素</span></li>
                    <li><span>精心装饰布置房源</span></li>
                    <li><span>保持房源的卫生整洁</span></li>
                </ul>
                <h4 class="mb25 black_style">
                    <span>在租房网上发布您的房子</span>
                </h4>
                <ul class="sidebar_list" id="guide_list3" valuedivid='guide_tab3'>
                    <li class="bg_gray"><span>发布准备及发布流程</span></li>
                    <li><span>发布房源时的五个小贴士</span></li>
                </ul>
                <h4 class="mb25 black_style">
                    <span>开启您的待客之旅</span>
                </h4>
                <ul class="sidebar_list" id="guide_list4" valuedivid='guide_tab4'>
                    <li class="bg_gray"><span>及时在线回复房客咨询</span></li>
                    <li><span>在线处理订单</span></li>
                    <li><span>接待您的房客</span></li>
                    <li><span>邀请房客撰写点评</span></li>
                    <li><span>查看您的订单收入</span></li>
                </ul>
            </div>
            <!--左边导航区end-->
            <!--右边内容start-->
            <div class="right_con fl">
                <div id="guide_tab1" class="switch" style="display:block">
                    <div class="right_tab" style="display:block;">
                        <h2 class="main_tit">分享让生活充满期待</h2>
                        <h4 class="first_tit">分享可结识五湖四海的朋友</h4>
                        <p class="pl15">分享自己闲置的房间或房屋，在家里像酒店一样接待房客，能结识来自五湖四海的陌生朋友。<br/>
                            在这里，您能遇上志同道合的朋友，也能领略五湖四海的风土人情。<br/>
                            可以对陌生人一个温暖的拥抱，一个善意的微笑，可以一起聊聊您所熟悉的城市，也可以分享房客一路走来的有趣经历。<br/>用一间房让彼此信任，这岂不是分享的真谛么。</p>
                        <div class="diary_box mt25">
                            <h4 class="diary_tit">我为什么要做短租？</h4>
                            <p class="tc">发表日期： 2018-04-16</p>
                            <p>一次意外的相遇<br/>
                                我在英文报社工作，近距离接触租房网源于一次采访，联合创始人陈驰跟我讲了很多分享经济的理念：在一个陌生人构成的社会里，可以比熟人社会摩擦出更多的火花。<br/>
                                采访完成以后，我就决定了我也要试试短租。<br/>
                                英语学了这么多年，东西方文化之间的碰撞，让我的心态变得很开放。记者的工作更加深了我对陌生事物的好奇心。在今天这样的互联网创业大潮里面，我也蠢蠢欲动。不是每个人都能冒险去创业，但是创业精神却可以无处不在。</p>
                            <p class="mt10">
                                短租对我来说意味着什么？<br/>
                                短租满足了我一直以来当老板的愿望，与赚钱无关。我从小就想有自己的店，它不大但是充满了我自己的个性。我梦想过开糕点店、寿司店、旅馆、服装店、花店、早餐店、果汁吧、玩具店，但是从来没有实施过。<br/>
                                短租，点燃了这种自己经营一个产品的热情，只是这种产品是服务，是看不见的。<br/>
                                可以说，短租是一种发现自我的方式，挑战自己的能力，试试自己到底能做到什么程度。
                            </p>
                        </div>
                        <h4 class="first_tit">分享可获得额外的收益</h4>
                        <p class="pl15">在这里，曾经闲置的房源不再沉默，能获得额外的收益哦。<br/>
                            您可以以更灵活的方式变现，按天出租，经营更灵活。<br/>
                            和长租相比，赚得多，平均收益更高。在租房网上，很多房东获得了比长租高3倍以上的可观收益。<br/>
                            担心毁房子？不用担心，房间自己打理，比长租更好的保护您的房子。</p>
                        <div class="diary_box mt25">
                            <h4 class="diary_tit">让房客认识租房网</h4>
                            <p class="tc">发表日期： 2018-04-16<span class="fine_img"></span></p>
                            <p>租房网网是一个服务平台，让资源充分合理的利用，即为房东带来了部分额外收入，又让远道而来的房客用非常经济实惠的价格住到快捷酒店无法实现的家的归属感，远道而来您不在为大都市高额的住宿费所担忧，一般出行在外最贵的开支其实就是住宿，我们在北京打拼多年的异乡友人在北京最大的开支也是房子。</p>
                            <p class="mt10">
                                房子是中国人一辈子的话题，房子解决了其他都是小事情，我们自己的小屋本开始是为自己居住所以装修的材料选择的是很安全环保的材料，房客不用担心像一些快捷酒店里用劣质廉价的材料做装修，用浴巾毛巾擦马桶等不道德的行为，自己的家自己很爱惜，这就解决了出门在外的安全卫生问题，100多元的价格能干吗呢？俩人吃个肯德基，麦当劳估计就完了，在北京打个车就完了。所以100多元在租房网这个平台上，我们会实现很多的梦想，一点点的价位享受家的温暖，享受安全舒适的住宿。为我们来大北京的您实现了更多。节省了更多。我们热爱远方到来的贵客。
                            </p>
                            <p class="mt10">
                                期待租房网把我们牵线，让我们茫茫人海中成为朋友。
                            </p>
                        </div>
                        <h4 class="first_tit">分享有顾虑？租房网构建了一套完善的安全和信用机制，确保您分享无忧</h4>
                        <p class="pl15">为让分享和信赖悄然发生，为保护您的隐私和安全，租房网构建了完善的完全和信用机制，确保您分享无忧。</p>
                        <div class="safe_box">
                            <ul class="safe_ul pl15 clearfix">
                                <li class="safe_li_bor"><i><img src="${pageContext.request.contextPath}/images/shenfen.png" /></i><span>双方身份验证</span></li>
                                <li><i><img src="${pageContext.request.contextPath}/images/jiaoyi.png"/></i><span>安全线上交易</span></li>
                                <li><i><img src="${pageContext.request.contextPath}/images/baozhang.png" /></i><span>坚实保障后盾</span></li>
                                <li><i><img src="${pageContext.request.contextPath}/images/xinyong.png" /></i><span>点评积累信用</span></li>
                            </ul>
                            <div class="safe_con mt25" style="display:block;">
                                <span class="up_arrow coor1"></span>
                                <div class="mb20">
                                    <img class="fr_img" src="${pageContext.request.contextPath}/images/shenfen.png"/>
                                    <h4 class="fb">为什么要进行身份验证?</h4>
                                    我们相信，彼此的信任是建立在使每个人放心的安全机制上。充分的身份验证机制，会保证我们平台更加安全可靠。
                                </div>
                                <div class="mb20">
                                    <h4 class="fb">让房客无忧</h4>
                                    所有房东的手机号码、邮箱等都是真实可信的。并且我们拥有一套完善的验证机制，会人工审核房东的真实姓名、真实面孔、身份证等信息，现在大多数房东已经验证了身份，我们会致力于将此机制推广到全部房东中。
                                </div>
                                <div class="mb20">
                                    <h4 class="fb">让房东无忧</h4>
                                    在线交易的房客都会经过三重实名验证：首先，我们会验证房客绑定的手机号码，其次，交易会绑定房客银行卡的实名身份，最重要的是房客都会通过国家二代身份证验证系统进行验证，来确保房客的真实性。
                                </div>
                                <div>
                                    <h4 class="fb">身份隐私如何保证？</h4>
                                    隐私权是用户的重要权利，我们非常重视用户的隐私权，承诺在任何情况下都会对用户的身份隐私进行保护。
                                    <p>更多内容可以查看<a class="col_pink" href="help/privacy" target="_blank">《隐私保护声明》</a></p>
                                </div>
                            </div>
                            <div class="safe_con mt25">
                                <span class="up_arrow coor2"></span>
                                <div class="mb20">
                                    <img class="fr_img" src="images/jiaoyi.png"/>
                                    <h4 class="fb">线上交易才最安全!</h4>
                                    我们打造了安全可靠又灵活方便的第三方担保支付系统，而且支持多种付款和收款方式。房客不是直接支付给房东，而是由租房网代为担保，入住完成后才支付给房东。
                                </div>
                                <div class="mb20">
                                    <h4 class="fb">保护房客的资金安全</h4>
                                    1、虚假房源可获赔：如果入住时发现房间和网上描述不符，可投诉客服如情况属实，原订金全部退还，并赔偿房客首日房款。<br/>
                                    2、无法入住有支援：如果入住时发现房东没有预留房间，投诉客服如情况属实，原订金全部退还并且赔偿房客首日房款；如果入住时发现联系不上房东，这种情况客服会帮助房客预订同等短租房或酒店，并补偿差价，保障房客能当天正常入住。<br/>
                                    3、乱收费用赔双倍：如果房东抬高房价，或者收取额外未约定的费用，向客服投诉后，我们会保障给房客双倍赔偿。<br/>
                                    4、取消订单不担心：如房客计划有变需取消入住、或提前退房，在我们第三方担保的机制下，保证房客在合理约定的违约金之外，顺利拿回剩余订金。
                                </div>
                                <div>
                                    <h4 class="fb">保护房东的资金安全</h4>
                                    1、取消订单无损失：因为在线交易会要求房客提前支付房费，如出现房客取消入住，或提前退房的违约情况，就可以按照房东交易规则约定比例收取合理的违约金，从而保障房东的利益。<br/>
                                    2、不用担心收假钞：对于很多房东来说，大额交易十分不方便，还担心会收到假钞，而使用我们的第三方担保支付系统便无需担心。
                                </div>
                            </div>
                            <div class="safe_con mt25">
                                <span class="up_arrow coor3"></span>
                                <div class="mb20">
                                    <img class="fr_img" src="${pageContext.request.contextPath}/images/houdun.png"/>
                                    <h4 class="fb">保障只是后盾</h4>
                                    租房网上线以来，已有数十万的房客完成入住并且从未发生过不愉快的事件，但我们仍然充分理解您对住进一个陌生人家中的担忧，并为此做了大量工作来保障您的整个交易和入住安全
                                </div>
                                <div class="mb20">
                                    <h4 class="fb">房客保险</h4>
                                    无论是国内出行还是到海外出行，租房网都为房客提供了保险服务。只要身份信息完整还可免费获赠保险，免除双方的后顾之忧。更多内容可以查看<a href="insurancedescription"  style="color:red;" target="_blank">《众安住宿旅行意外保险》</a>、
                                    <a href="help/taikangfkinsurancedescription"  style="color:red;" target="_blank">《泰康住宿旅行意外保险告知书》</a>和<a style="color:red;" href="help/abroadinsurance" target="_blank">《海外住宿意外保险告知书》</a>
                                </div>
                                <div>
                                    <h4 class="fb">房东财产综合保险</h4>
                                    房客入住期间，房屋若出现损坏，租房网将联合专业的保险公司为您提供解决方案，最大限度的保障您的利益。更多内容可以查看
                                    <a href="yunying.php?op=YunYing_FamilyInsurance" style="color:red;" target="_blank">《众安在线家庭财产综合险》</a>（暂时仅提供中国大陆房源的保险服务）
                                </div>
                            </div>
                            <div class="safe_con mt25">
                                <span class="up_arrow coor4"></span>
                                <div class="mb20">
                                    <img class="fr_img" src="${pageContext.request.contextPath}/images/xinyong.png"/>
                                    <h4 class="fb">我们提倡点评</h4>
                                    租房网需要真实的点评，让美好的回忆可以记录下来，这样可以传播给更多的好房东和好房客，让大家都可以参与进来，建立一个人与人可以充分信赖的环境。
                                </div>
                                <div class="mb20">
                                    <h4 class="fb">点评是公平对等的</h4>
                                    房客通过在线交易预订短租房，可以对入住经历进行点评，这些点评可以帮助其他房客了解房间和房东。与此同时，房东也可以对房客进行点评其他房东也可以根据这些点评了解到房客是否受欢迎。任何的点评，都只能由发布者自己删除。
                                </div>
                                <div>
                                    <h4 class="fb">激励好房东和好房客</h4>
                                    房东是否热情好客？房客是否广受欢迎？<br/>
                                    我们相信在真实可靠的点评机制下，不断积累的信用会赶走那些坏房东和坏房客，让真正懂得分享的好房东和好房客充盈整个平台。
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="guide_tab2" class="switch">
                    <div class="right_tab" style="display:block"> 
                        <h2 class="main_tit">好房子必备的三大要素</h2>
                        <p class="mt25 pl15">毋庸置疑，好的房源会受到房客的青睐，那么好的房源具备什么样的特点呢？</p>
                        <h4 class="first_tit">好地段的房源</h4>
                        <p class="pl15">很多房客对入住房源的地理位置和交通便利程度非常关注，如您要出租的房源位于下列地段周边且交通便利，那么出租的概率将会大大增加</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <h4>所在城市的核心商圈：</h4>
                                <img src="${pageContext.request.contextPath}/images/beijing.jpg" alt=""/>
                                <span class="city_des">北京 · CBD</span>
                            </li>
                            <li>
                                <h4>所在城市的重要的景点：</h4>
                                <img src="${pageContext.request.contextPath}/images/chengdu.jpg" alt=""/>
                                <span class="city_des">成都 · 锦里</span>
                            </li>
                            <li>
                                <h4>所在城市的知名学校：</h4>
                                <img src="${pageContext.request.contextPath}/images/wuhan.jpg" alt=""/>
                                <span class="city_des">武汉大学</span>
                            </li>
                            <li>
                                <h4>各城市的交通枢纽：</h4>
                                <img src="${pageContext.request.contextPath}/images/zhengzhou.jpg" alt=""/>
                                <span class="city_des">郑州 · 郑州火车站</span>
                            </li>
                        </ul>
                        <h4 class="first_tit">房子所在的小区环境较好</h4>
                        <p class="pl15">无论您还是房客，都不希望出现任何不安全的状况，故建议您需要考虑小区的环境。建议您选择安全防范措施好、安静、绿化环境较好的小区。</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="${pageContext.request.contextPath}/images/xiaoqu1.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/images/xiaoqu2.jpg" alt=""/>
                            </li>
                        </ul>
                        <h4 class="first_tit">选择基础质量较好的房子，优先选择有特色的房源</h4>
                        <p class="pl15">在成本合适的情况下，尽量选择装修较好的房源，如近5年新近装修的，或曾精装修的。优先选择装修有特色的房源，如四合院、海景房、江景房、山景房等。</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="${pageContext.request.contextPath}/images/tese1.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/images/tese2.jpg" alt=""/>
                            </li>
                        </ul>
                    </div>
                    <div class="right_tab">
                        <h2 class="main_tit">精心装饰布置房源</h2>
                        <p class="mt25 pl15">至此，您已经有了可出租的房子，可以因地制宜、脑洞大开的进行装饰了。</p>

                        <h4 class="first_tit">您还可以购置舒适、实用的家装饰品，让您的房间更具生活气息</h4>
                        <p class="pl15">如：质地舒适的四件套、颜色合适的沙发靠垫，以及让房间光线更加通透的窗帘等。</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi1.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi2.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi3.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi4.jpg" alt=""/>
                            </li>
                        </ul>
                        <h4 class="first_tit">您可以在房源里多摆放一些绿植，可以让您的房源焕发出勃勃生机</h4>
                        <p class="pl15">比如这样：</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi5.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi6.jpg" alt=""/>
                            </li>
                        </ul>
                        <p class="pl15 mt15">如果您有超大的阳台或一个小院子，可以养养花、种些绿植，养养眼，不亦乐乎：</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi7.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi8.jpg" alt=""/>
                            </li>
                        </ul>


                        <h4 class="first_tit">您可以房子打造成独具一格的主题房</h4>
                        <p class="pl15">可以装饰成漫画系列，如多啦A梦,动物园</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi9.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi10.jpg" alt=""/>
                            </li>
                        </ul>
                        <p class="pl15 mt15">还可以装饰成后现代风、公主房、田园风、皇家风范等如工业风主题,梦幻之旅</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi11.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/images/buzhi12.jpg" alt=""/>
                            </li>
                        </ul>

                    </div>
                    <div class="right_tab">
                        <h2 class="main_tit">保持房间整洁</h2>
                        <p class="mt25 pl15">确保房间卧室和公共区域已在房客抵达前清洁干净，不留死角，而这也是房客入住时最在意的，故请全力以赴。</p>

                        <h4 class="first_tit">没人愿意生活在一堆杂乱之中，想必您也一样</h4>
                        <p class="pl15">在房客到来之前，将您希望被展示的收藏品放回橱窗；收起散落各处的私人物品；让书籍、厨具和毛巾都与它们的同伴列队、看齐。整洁、通透的环境会让您的空间显得更加宽敞。
                            我们希望您房源是这样的：</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="images/house1.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="images/house2.jpg" alt=""/>
                            </li>
                        </ul>
                        <p class="pl15 mt15">不希望这样</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="images/house3.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="images/house4.jpg" alt=""/>
                            </li>
                        </ul>


                        <h4 class="first_tit">同您出门在外的考量一样，卫生条件永远最重要的因素之一。</h4>
                        <p class="pl15">您可能需要比平时更加频繁的收拾房源，让所有的台面都亮洁如新，让卫生间死角都一尘不染。<br/>
                            我们希望您的房源是这样的：</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="images/house5.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="images/house6.jpg" alt=""/>
                            </li>
                        </ul>
                        <p class="pl15 mt15">我们不希望这样您的房源是这样的：</p>
                        <ul class="city_info pl15 clearfix">
                            <li>
                                <img src="images/house7.jpg" alt=""/>
                            </li>
                            <li>
                                <img src="images/house8.jpg" alt=""/>
                            </li>
                        </ul>

                    </div>
                </div>
                <div id="guide_tab3" class="switch">
                    <div class="right_tab" style="display:block">
                        <h2 class="main_tit">房源发布流程</h2>
                        <div class="pub_process_warpper clearfix">
                            <div class="fl pr mr15">
                                <div class="pub_process_box abs1">
                                    <span class="right_arrow"></span>
                                    登陆官网 xiaozhu.com<br/>
                                    点击<span class="pub_btn">免费发布房源</span><br/>
                                    根据提示完整填写5大必填项内容。  
                                </div>
                                <h2 class="pub_tit abs2">等待审核</h2>
                                <div class="pub_process_box abs3">
                                    <span class="right_arrow"></span>
                                    如果您发布的房源未通过审核，需根据提示修改后重新提交。
                                </div>
                                <h2 class="pub_tit abs4">上线交易</h2>
                            </div>
                            <div class="fl mb40"><img src="images/process.png" /></div>
                            <div class="fl pr ml15">
                                <h2 class="pub_tit abs5">发布房源</h2>
                                <div class="pub_process_box abs6">
                                    <span class="left_arrow"></span>
                                    当您发布房源后，我们需要进行房源信息审核，1个工作日内反馈审核结果。
                                </div>
                                <h2 class="pub_tit abs7">审核反馈</h2>
                                <div class="pub_process_box abs8">
                                    <span class="left_arrow"></span>
                                    进入线上交易，并保持随时维护优化您的房源确保交易运营顺畅。
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="right_tab">
                        <h2 class="main_tit">发布房源时的5个小贴士</h2>
                        <p class="mt25 pl15">为了向房客提供良好的预定和入住体验，请准确有效的填写房间信息，尤其是以下信息。</p>
                        <h4 class="first_tit">准确填写出租类型</h4>
                        <div class="pl15 clearfix">
                            <div class="fl"><span class="zhengzu_icon"></span></div>
                            <div class="fl"><p>整套出租：<br/>是指您整体出租房屋，且不和房客住在一起;</p></div>
                        </div>  
                        <div class="pl15 mt30 clearfix">
                            <div class="fl"><span class="danzu_icon"></span></div>
                            <div class="fl"><p>独立单间：<br/>是指您单独出租一套房屋中的一个房间，如两居室中的大卧室，则选择“单间”。</p></div>
                        </div>  
                        <h4 class="first_tit">撰写一个让房客一见钟情的标题</h4>
                        <div class="pl15">
                            <p>一个好的名字有助于房客第一时间发现您的房子，建议撰写的格式:地标+出租类型/房间类型+房间形容词好的标题能将房间的特色淋漓尽致的展示出来。<br/>
                                可以写成这样：
                            </p>
                            <div class="insert_img"><img src="images/screen1.png" /></div>
                            <p class="mt15">也可以写成这样：</p>
                            <div class="insert_img"><img src="images/screen2.png" /></div>
                        </div>
                        <h4 class="first_tit">合理设置房间的价格</h4>
                        <p class="pl15">日价的设置：可根据您的心理预期，对比同类其他房源，制定具有竞争力的价格。<br/>如周边同类房源均价为110元，您可设置为100元，以便在短期内有成交订单。<br/>
                            设置价格时，需要考虑夏天水电的损耗增加，在特定时间段可设置额外收取水、电、空调等费用。但请务必在用户下单前告知，以便发生误会；<br/>同时，也需要根据淡旺季灵活设置和调整价格。旺季时，需适度上涨；淡季时，需适度下调；
                        </p>
                        <h4 class="first_tit">合理设置押金金额</h4>
                        <div class="pl15">
                            <p>押金的必要性：为规避房客入住中违约行为或房间物品被损坏带来的损失，建议房东明确押金金额，以约束房客某些行为。<br/>押金金额：房东可根据自身房源情况（房屋结构设施、软装、心理预期等）合理设置押金金额。<br/>同           时，我们还提供在线收取押金的功能，一旦您选择了该项，房客将在线支付押金，无需您线下收取。<br/>您仅需勾选即可完成，如下截图：
                            </p>
                            <div class="insert_img"><img src="images/screen3.png" /></div>
                        </div>
                        <h4 class="first_tit">合理房客取消订单的规则</h4>
                        <p class="pl15">基于给房客提供良好预定体验，降低您的经营风险，请合理设置交易规则。<br/>全额退款日：房客在入住前几天取消订单可全额退还订金，系统默认是1天，您可以设置1-30天不等，天数越少房客越容易接受。<br/>
                            违约取消扣款天数：不足全额退款日申请退款，在房客通过网上支付的总订金中扣几天订金（自入住日开始）作为补偿。系统默认是1天，您可以设置1-30天不等，天数越少房客越容易接受。
                        </p>
                    </div>
                </div>
                <div id="guide_tab4" class="switch">
                    <div class="right_tab" style="display:block;">
                        <h2 class="main_tit">及时在线回复房客咨询</h2>
                        <p class="mt25 pl15">及时、有效的回复房客的咨询，能够帮助您获得更多的订单。</p>
                        <h4 class="first_tit">什么是咨询</h4>
                        <p class="pl15">咨询是指，房客与房东的在线即时沟通的过程，类似于淘宝的旺旺，可以帮助房东及房客相互了解及决策；</p>
                        <h4 class="first_tit">谁可以发起咨询</h4>
                        <div class="pl15">
                            <h6 class="second_tit">房客可以发起咨询</h6>
                            <p>房客在按照自己的需求，在寻找到意向房源后，通常会发起咨询，向您询问一些关于入住时间、费用、地理位置之类的问题，也会和您聊聊关于当地天气、文化、生活习惯。<br/>
                                房客点击您头像下方的“在线聊天“，即可和您在线沟通，如下截图：</p>
                            <div class="insert_img"><img src="images/screen4.png"/></div>
                            <h6 class="second_tit">房东也可以发起咨询</h6>
                            <p>有部分房客没有发起咨询，但为了更好的了解房客需求，有效的筛选房客，还请您主动和房客聊聊天。<br/>
                                您可在房客订单详情中可以找到房客的名称，并发起咨询，如下截图：</p>
                            <div class="insert_img"><img src="images/screen5.png"/></div>
                        </div>
                        <h4 class="first_tit">房东回复咨询</h4>
                        <p class="pl15">房客发起咨询后，会充满期待的等着您的回复，所以还请及时、周到的回复。</p>
                        <div class="pl15">
                            <h6 class="second_tit">如碰巧您不在电脑边，如何实现高效率的回复房客咨询？</h6>
                            <p>如有新资讯，租房网会以站内信、手机短信形式提醒您。同时，租房网APP可确保您随时随地响应房客需求，回复房客咨询。<br/>
                                租房网APP下载及使用方法可参见页面：<br/>
                                <a class="col_pink" href="appdownload/fk" target="_blank">appdownload/fk</a></p>
                            <h6 class="second_tit">如何回复房客的咨询？</h6>
                            <p>建议您按照以下原则和房客沟通：</p>
                            <p class="mt10 mb10">1.充分了解房客信息</p>
                            <p>入住人数、天数、性别、年龄、职业、目的地、出行方式、每日出门或回家时间、出行目的等等。<br/>入住中可能产生的额外费用应在房客咨询时明确告知房客，凡答应房客的，应主动做到不失信于房客。<br/>
                                了解房客对入住环境及条件的需求，如：网络、洗澡、洗衣、做饭等。
                            </p>
                            <p class="mt10 mb10">2.积极、耐心回答房客提出的问题</p>
                            <p>应积极解答房客的问题，注意沟通中房客的语气，尽量从房客的角度考虑问题。对于房客的一些顾虑。<br/>
                                沟通的关键是及时、礼貌、友好、主动、耐心，如遇不能满足您入住要求的房客，需礼貌回绝，不得与房客争吵谩骂等。
                            </p>
                            <p class="mt10 mb10">3.保护隐私，在订单成交前不要透露联系方式等信息</p>
                            <p>为保护隐私，在订单成交前，不要向房客透露您的联系方式、详细地址等信息，也请您不要索要房客联络方式信息。<br/>为保护用户隐私，系统将自动屏蔽联系方式。</p>
                        </div>
                    </div>
                    <div class="right_tab">
                        <h2 class="main_tit">在线处理订单</h2>
                        <p class="mt25 pl15">为了提升房客预定体验，请务必及时在线处理订单</p>
                        <h4 class="first_tit">用户在线提交订单</h4>
                        <div class="pl15">
                            <p>当房客非常满意您的房间时，会给您的房源提交一张预定订单，您在房东后台即可查看该张订单，订单详情中会显示如下信息</p>
                            <div class="insert_img">
                                <img src="images/screen6.png"/>
                            </div>
                        </div>
                        <h4 class="first_tit">我如何不错过每一张新订单呢？</h4>
                        <p class="pl15">不用担心，如果新咨询一样，我们会有站内信、手机短信提醒。同时，如果您已安装租房网APP，也会同步提醒。<br/>租房网APP安装及使用说明，详见： <a class="col_pink" href="appdownload/fk" target="_blank">appdownload/fk</a></p>
                        <h4 class="first_tit">订单处理时限</h4>
                        <p class="pl15">自房客提交订单后，您需要在2个小时处理，否则该订单将自动失效。<br/>当然，我们也非常人性化的推出了夜间延时机制，即当日房客提交订单的时间介于23:00:01至次日8:59:59之间，您可以在次日上午11:00:00前处理。<br/>
                            如没有在规定时间内处理订单，则该订单将失效，会增加订单过期率，影响您房源的排序。 
                        </p>
                        <h4 class="first_tit">接受订单</h4>
                        <p class="pl15">如果接受房客的入住，请点击“接受“订单即可，接下来仅需要等待房客支付，即可完成该张订单的预定；</p>
                        <h4 class="first_tit">拒绝订单</h4>
                        <div class="pl15">
                            <p>如果无法接待该房客，请填写拒绝原因后，拒绝该张订单。<br/>同时，订单房源在订单时间内的房态将自动调整为不可租的状态，如您还想继续出租，请打开相应时间段的房态。<br />
                                拒绝订单操作，如下截图：
                            </p>
                            <div class="insert_img">
                                <img src="images/screen7.png"/>
                            </div>
                        </div>
                        <h4 class="first_tit">修改订单价格</h4>
                        <div class="pl15">
                            <p>当房客希望提供更优惠的价格，或针对拍摄、聚会等特殊需求时，您可以在处理订单时候，调整订单价格。服务费按照修改后的价格收取。<br />调整价格时，您可以调低价格，但不得低于原价的7折；您还可以上调价格，数值不限<br/>
                                请注意，完成修改后仍需要您返回订单详情中，“接受“或”拒绝“该订单。<br/>具体修改价格界面，见下截图：
                            </p>
                            <div class="insert_img">
                                <img src="images/screen8.png"/>
                            </div>
                        </div>
                        <h4 class="first_tit">房客支付订单</h4>
                        <div class="pl15">
                            <p>在您接受该张订单后，房客拥有最长16个小时用来支付。您可以和房客保持沟通，及时为房客提供各种帮助。<br />每位新注册的房客，都将获得数额不等的代金券，您可以提醒房客支付时使用，这将节省房客一部分费用。<br/>
                                部分房客还有数额不等的积分，您也可以提醒房客支付时使用，每100积分=1元。<br/>我们为房客提供了支付平台、网银、国际信用卡这三种在线支付方式：
                            </p>
                            <div class="insert_img">
                                <img src="images/screen9.png"/>
                            </div>
                        </div>
                        <div class="pl15">
                            <p> 如房客是通过APP下单，我们还支持“微信支付“，如下截图：</p>
                            <div class="insert_img">
                                <img src="images/screen13.png"/>
                            </div>
                        </div>
                        <h4 class="first_tit">房客取消订单</h4>
                        <p class="pl15">房客因为行程改变或其他临时原因取消订单，如遇此情况，还请和房客详细沟通，并让房客在线取消订单。<br/>根据您设置的房源交易规则（可参见房源发布中交易规则如何设置），系统将自动计算是否扣除房客的违约金，及具体扣款金额。<br/>  如果您不想扣房客违约金，请及时联系客服处理。</p>
                        <h4 class="first_tit">速订订单</h4>
                        <p class="pl15">如果您的房源符合速订资格，请参见以下页面了解更多内容：<br/><a class="col_pink" href="xzweb.php?op=FangDong_FlashBook" target="_blank">xzweb.php?op=FangDong_FlashBook</a></p>
                    </div>
                    <div class="right_tab">
                        <h2 class="main_tit">接待您的房客</h2>
                        <p class="mt25 pl15">有朋自远方来，不亦乐乎，是时候该您尽地主之谊了</p>
                        <h4 class="first_tit">入住前的沟通</h4>
                        <p class="pl15">房客入住前，请将房间打扫干净。如房客有明确的入住需求，也请提前准备。<br/>同时，建议您和房客聊聊天，以确定房客何时到达，以便做好接待。<br/>如有必要，也请告知当地气候变化、和房客相关的重大事件，提醒房客做好准备。<br/>建议您提前一天电话联系房客，明确入住时间，告知交通路线。</p>
                        <h4 class="first_tit">入住时的接待</h4>
                        <p class="pl15">为规避您的经营风险，请查验房客身份证件原件、合适入住人数等信息（是否与租房网网登记的信息保持一致）。如发现信息严重不符，可与房客友好沟通，对极端房客可拒绝入住；<br/>带领房客熟悉房屋环境、日常设备的使用，提醒房客需注意的事项。<br/>如有必要，您可自行制作一个简单的入住指南，如无线网络的密码、入住期间不可大声喧哗、注意房间卫生等，将入住指南粘贴在门口、冰箱、餐桌等显眼的地方，以提醒房客。</p>
                        <h4 class="first_tit">入住中的沟通</h4>
                        <p class="pl15">在入住中，建议您不定期与房客沟通，了解房客的入住感受，及时解决房客遇到的问题。</p>
                        <h4 class="first_tit">给房客办理退房手续</h4>
                        <p class="pl15">房客入住结束后，请务必在退房后第一时间查验房间，建议和房客一起查验。<br/>如发现房间有物品损坏等意外情况，请第一时间和房客沟通，并友好协商解决。<br/>如协商无效，请及时联络所在城市运营专员或租房网客服（400-010-7890），寻求最佳解决方案<br/>如无意外，请退还房客押金，并引导房客撰写点评。</p>
                    </div>
                    <div class="right_tab">
                        <h2 class="main_tit">邀请房客撰写点评</h2>
                        <p class="mt25 pl15">房源的点评数量、质量不仅影响房间排名，更直接影响房客的浏览及成交，尤其是新房东，所以需要您积极的推动每位入住房客给出全面真实的点评。</p>
                        <h4 class="first_tit">房客什么时候可以撰写点评</h4>
                        <p class="pl15">入住当天14:00后，订单状态由待入住变更为入住中，房客就可以撰写点评了。</p>
                        <h4 class="first_tit">如何邀请房客撰写点评</h4>
                        <p class="pl15">入住期间，了解房客入住感受及需求，提醒房客写点评。<br/>点评文字超过100字，点评审核通过后，积分加一倍。<br/>
                            上传图片增加积分，每上传一张实拍图再加10积分。<br/>分享该条点评，可获得50积分。
                        </p>
                        <h4 class="first_tit">主动对房客发起友好热情的点评，吸引房客回评</h4>
                        <div class="pl15">
                            <p>房客入住后，您即可在房东后台-点评栏中点评房客，如下截图： </p>
                            <div class="insert_img"><img src="images/screen10.png" /></div>
                            <p>如该订单的房客没有撰写点评，则您对房客的点评不会被展示出来；</p>
                        </div>
                    </div>
                    <div class="right_tab">
                        <h2 class="main_tit">查看您的订单收入</h2>
                        <p class="mt25 pl15">和结实更多的朋友相比，获得额外收益同样重要，您可以在灵活的设置收款方式，及时查看订单收入。</p>
                        <h4 class="first_tit">收款账号的设置</h4>
                        <p class="pl15">您可设置银行卡或支付宝账号作为收款账号。<br/>建议您使用支付宝账号收款，即时到账，速度快。银行卡收款相对较慢，一般1~7工作日，具体到账时间取决于收款银行。</p>
                        <h4 class="first_tit">结算方式的设置</h4>
                        <div class="pl15">
                            <h6 class="second_tit">订单结算</h6>
                            <p>房客入住完成后，租房网网将于入住完成的次工作日向房东提供的收款账户一次性结算此订单的全部房款。入住天数大于7天的订单，每7天结算一次。<br/>建议设置成订单结算。</p>
                            <h6 class="second_tit">日结算</h6>
                            <p>房客每入住一天，租房网网将于次工作日向房东提供的收款账户结算一次房款。</p>
                        </div>
                        <h4 class="first_tit">如何对账</h4>
                        <div class="pl15">
                            <p>您可以按照订单或日期查询收款信息，如下截图：</p> 
                            <div class="insert_img"><img src="images/screen11.png" /></div>
                            <p>在订单查询中，可以点击订单详情了解具体的收款信息</p> 
                            <div class="insert_img"><img src="images/screen12.png" /></div>
                        </div>
                    </div>
                </div>
            </div>  
            <!--右边内容end--> 
        </div>

         
<div class="foot_v2">
        <ul class="foot_ul">
        <li><a class="guide" href="xzweb.php?op=Help_UserGuide&type=tenant" target="_blank">房客指南</a></li>
        <li><a class="guide icon_fk" href="xzweb.php?op=Help_UserGuide&type=landlord" target="_blank">房东指南</a></li>
        <li>
            <span class="guide_T">关于我们</span>
            <a href="aboutus" target="_blank">关于租房网</a>
            <a href="contactus" target="_blank">联系我们</a>
        </li>
        <li>
            <span class="guide_T">网站帮助</span>
            <a href="help/index" target="_blank" >帮助中心</a>
            <a href="sitemap.html" target="_blank">网站地图</a> 
        </li>
        <li class="width_280">
            <span class="guide_T">网站协议</span><br/>
            <a href="help/service" target="_blank">服务协议</a> 
            <a href="help/landlordRule" target="_blank">房东规则</a>
            <a href="help/tenantRule" target="_blank">房客规则</a>
            <a href="help/auditRule" target="_blank">房源上线标准</a>
            <a href="help/privacy" target="_blank">隐私保护</a>
            <a href="help/copyright" target="_blank">版权声明</a>
            <a href="help/disclaimer" target="_blank">免责声明</a>
            <a href="help/intellectualProperty" target="_blank">知识产权声明</a>
            <a href="help/commentRule" target="_blank">点评发布规则</a>
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

<input type="hidden" name="actionName" id="actionName" value="Help_UserGuideGreenHand"/>
<input type="hidden" name="xz_srf_token" id="xz_srf_token" value="315c205418dee01d15d2961d53e03ad1"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/xzjs"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/lazyload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/xzim4.js"></script>

    </body>
<!-- Google Tag Manager -->

<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-W85X4L" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-W85X4L');
</script>

<!-- End Google Tag Manager --></html>