<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=path%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>与房东聊天</title>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link rel="stylesheet" href="<%=path%>/assets/css/amazeui.min.css" />
		<link rel="stylesheet" href="<%=path%>/assets/css/app.css" />
	</head>
	<body>
		<!--[if lte IE 9 ]><div class="am-alert am-alert-danger ie-warning" data-am-alert>
  <button type="button" class="am-close">&times;</button>
  <div class="am-container">
  	  温馨提醒：你的浏览器太古董了，无法使用此功能，<a
    href="http://browsehappy.com/" target="_blank">还不速速换一个</a>！</div></div><![endif]-->

		<header class="am-topbar">

		<h1 class="am-topbar-brand">
			<a>与房东聊天</a>  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
		</h1>
		</header>

		<div class="am-g am-g-fixed webrtc-g-fixed">


			<div class="col-md-8 webrtc-sidebar">
				<div class="am-panel-group">
					<section class="am-panel am-panel-default">
					<div class="am-panel-hd" id="toUser">
						文字交流
					</div>
					<div class="am-panel-bd chat-detail" id="show-chat">
					</div>
					</section>
					<section class="am-panel am-panel-default">
					<div class="am-panel-hd">
						输入
					</div>

					<form class="am-form">
						<div class="am-form-group">
							<textarea class="" rows="5" id="content"></textarea>
							<br>
							<button type="button" class="am-btn am-btn-primary am-btn-block"
								id="send">
								发送
							</button>
						</div>
					</form>
					</section>

				</div>
			</div>



			<div class="col-md-4">
				<div class="am-panel-group">
					<section class="am-panel am-panel-default">
					<div class="am-panel-hd">
						在线用户
					</div>
					<ul class="am-list webrtc-list" id="user-list">
					</ul>
					</section>
				</div>
			</div>
		</div>




		<div class="am-modal am-modal-prompt" tabindex="-1" id="my-tip">

			<div class="am-popup-hd">
				<h4 class="am-popup-title">
					提示
				</h4>
				<span data-am-modal-close class="am-close">&times;</span>
			</div>

			<div class="am-modal-dialog">
				<div class="am-modal-hd">
					提示
				</div>
				<div class="am-modal-bd" id="tip-content">
				</div>
			</div>
		</div>


		<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt">
			<div class="am-modal-dialog">
				<div class="am-modal-bd">
					<p id="prompt-tips">
						请输入一个用户名称
					</p>
					<input type="text" class="am-modal-prompt-input">
				</div>
				<div class="am-modal-footer">
					<span class="am-modal-btn" data-am-modal-confirm>提交</span>
				</div>
			</div>
		</div>


		<div class="am-modal am-modal-prompt" tabindex="-1" id="my-connect">
			<div class="am-modal-dialog">
				<div class="am-modal-bd">
					<p id="connect-name"></p>
				</div>
				<div class="am-modal-footer">
					<span class="am-modal-btn" data-am-modal-cancel>取消通话</span>
					<span class="am-modal-btn" data-am-modal-confirm>确认通话</span>
				</div>
			</div>
		</div>
		</div>
		 

		<script src="<%=path%>/assets/js/zepto.min.js">
</script>
		<script src="<%=path%>/assets/js/amazeui.min.js">
</script>

		<script type="text/javascript">
      //websocket 文字对话主要js
        
        //当前登录用户
        var userName="customer__${sessionScope.user.nickname }";
        
        //对话用户
        var currentUser=null;
        
      //当前域名或ip（包括ip和端口）
        var url=window.location.host;
        //console.log(url);

        //ws还是wss
        var wsProtocol = 'https:' == document.location.protocol ? 'wss' : 'ws';

        var pathName = window.document.location.pathname;
        //获取带"/"的项目名，如：/webrtc
        var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
        
        /**
         *WebSocket连接地址 
         */
        var chatWebSocketUrl=wsProtocol+"://"+url+projectName+"/webSocketServer";
        

        /**
         * 是否主动关闭websocket
         */
        var autoClose=false;
        
        var webSocket = null;
        
        
        var contactType='provider';



        /**
         * 初始化
         */
        (function($) {
        	$('#send').on('click', function() {
        		sendContent();
        	});

        	getUserName();

        })(window.Zepto);

        /**
         * 添加用户到在线用户列表
         */
        function apendUser(userName) {
        	
        	
        	if(userName.split('__')[0]==contactType){
         		
             	var trueUserName=userName.split('__')[1];
             	
             	
	        	var appendHtml = '<li id="'
	        		+ userName
	        		+ '">'
	        		+ '<div class="am-cf">'
	        		+ '<a >&nbsp;&nbsp;&nbsp;'
	        		+ trueUserName
	        		+ '</a>'
	        		+ '<button class="am-btn am-btn-success am-btn-xs am-fr" onclick="connectTo(\''
	        		+ trueUserName + '\')">对话</button>' + '</div>' + '</li>';
	        		
        		
	        		$('#user-list').append(appendHtml);
        		
             	
        	}
        	
        }
        /**
         * 生成随机串
         * @return {TypeName} 
         */
        function getToken() {
        	return Math.round(Math.random() * 9999999999) + 9999999999;
        }

        /**
         * 打开新窗口
         * 
         * @param owurl
         */
        function openNewWindow(owurl) {
        	var tmp = window.open("about:blank", "", "")
        	tmp.top.location = owurl;
        }

        /**
         * 连接到一位在线用户
         * @param userName
         */
        function connectTo(oneOnlineUser) {
        	
        	$('#toUser').html("当前与："+oneOnlineUser+"对话");
        	
        	 currentUser=oneOnlineUser;


        }

        /**
         * 从在线用户列表中移除用户
         */
        function removeUser(liId) {
        	$('#' + liId + '').remove();
        }

        var showChatDetail = document.getElementById("show-chat")

        /**
         * 发送聊天内容
         */
        function sendContent() {
        	
        	if(currentUser==null){
        		
        		showTips("请选择一位对话用户");
        		
        	}else{

        		var contentVal = $('#content').val().trim();
        		if (contentVal == null || contentVal == "") {
        			showTips("请输入内容");
        			return;
        		}
        		var timeString =new Date().Format("yyyy-MM-dd hh:mm:ss");
        		
        		console.log(webSocket);
        		
        		//发送聊天内容
        		webSocket.send(JSON.stringify( {
        			"type" : "message",
        			"toUser" : contactType+'__'+currentUser,
        			"contentVal" : contentVal
        		}));
        		
        		
        		var timeString = new Date().Format("yyyy-MM-dd hh:mm:ss");
        		appendChat("我对"+currentUser, contentVal, timeString);
        		
        		//清空输入框
        		$('#content').val('');
        	}

        }

        /**
         * 在聊天内容框里增加内容
         * 
         * @param userName 用户名称
         * @param chatVal  聊天内容
         * @param timeString  时间
         */
        function appendChat(userName, chatVal, timeString) {
        	var appendHtml = '<div>'
        			+ '<span class="am-badge am-badge-secondary am-radius">' + userName
        			+ '</span>说:' + chatVal
        			+ '<span class="am-badge am-radius">------------' + timeString
        			+ '</span>' + '<hr></div>';

        	$('#show-chat').append(appendHtml);

        	//定位到聊天内容的底部
        	showChatDetail.scrollTop = 100000;

        }

        /**
         * 美化提示框，类似alert
         * 
         * @param tipContent 提示内容
         */
        function showTips(tipContent) {
        	$('#tip-content').html(tipContent);
        	$('#my-tip').modal( {
        		relatedElement : this
        	});
        	// 1秒后关闭 Modal窗口
        	setTimeout('$("#my-tip").modal("close")', 1000);
        }






        /**
         * 获取用户名
         * @memberOf {TypeName} 
         */
        function getUserName() {
        	 
        	 if(userName=="customer__"){
        		 
        		 alert('请重新登录');
        		 
        	 }else{
	     		websocketUrl = chatWebSocketUrl + "?id=" + userName;
	     		startWebSocket();
        	 }


        }

        /**
         * 验证是否为中英文
         * 
         * @param str
         */
        function isChineseOrEnglish(str) {
        	var reg = /^\w+$/;
        	return reg.test(str);
        }

       
        /**
         * websocket连接
         */
        function startWebSocket() {

        	if ('WebSocket' in window) {
        		try {
        			webSocket = new WebSocket(websocketUrl);
        		} catch (e) {
        			console.log(e);
        		}
        	} else if ('MozWebSocket' in window) {
        		webSocket = new MozWebSocket(websocketUrl);
        	} else {
        		console.log("not support");
        	}

        	webSocket.onmessage = function(returnMessage) {//消息接收
        		console.log(returnMessage);
        		var message = JSON.parse(returnMessage.data);
        		console.log(message.type);
        		if (message.type == 'message') {//接收用户发送的消息
        			var timeString = new Date().Format("yyyy-MM-dd hh:mm:ss");
        			var fromUser=message.user.split('__')[1];        		
        			appendChat(fromUser, message.msg, timeString);
        		} else if (message.type == 'user_is_contain') {//用户名已存在
        			console.log("用户名已存在");
        			autoClose=true;
        			webSocket.close();
        			$('#prompt-tips').html("用户名已存在");
        			setTimeout('getUserName()', 300);

        		} else if (message.type == 'get_online_user') {//获取在线用户列表
        			var users = message.list;
        			for ( var i = 0; i < users.length; i++) {
        				if (users[i] == userName) {
        					var appendHtml = '<li id="' + userName + '">'
        							+ '<div class="am-cf">' + '<a >&nbsp;&nbsp;&nbsp;'
        							+ userName + '</a>(me)' + '</div>' + '</li>';
//        					$('#user-list').append(appendHtml);
        				} else {
        					apendUser(users[i]);
        				}
        			}

        		} else if (message.type == 'user_join') {//用户上线
        			var user = message.user;
        			apendUser(user);

        		} else if (message.type == 'user_leave') {//用户下线
        			var user = message.user;
        			removeUser(user);
        		}
        	};

        	webSocket.onclose = function(evt) {
        		console.log("close!");
        		if(!autoClose){
        			alert("连接已断开，请重新登录");
        	//		window.location.reload();
        		}
        	};

        	webSocket.onopen = function(evt) {
        		console.log("open");
        	};
        }

        
        
        


     // 对Date的扩展，将 Date 转化为指定格式的String
     // 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符， 
     // 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
     // 例子： 
     // (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
     // (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18 
     Date.prototype.Format = function (fmt) { //author: meizz 
         var o = {
             "M+": this.getMonth() + 1, //月份 
             "d+": this.getDate(), //日 
             "h+": this.getHours(), //小时 
             "m+": this.getMinutes(), //分 
             "s+": this.getSeconds(), //秒 
             "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
             "S": this.getMilliseconds() //毫秒 
         };
         if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
         for (var k in o)
         if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
         return fmt;
     }
     
        
        
        
    </script>
	</body>
</html>