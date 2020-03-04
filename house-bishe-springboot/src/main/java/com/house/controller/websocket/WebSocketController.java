package com.house.controller.websocket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/websocket")
public class WebSocketController {//就是一个简单的controller,返回页面  jsp/client.jsp
	
	@RequestMapping("toClient")//先看看哪里有：websocket/toClient的调用
	public String toClient(){
		
		return "client" ;
	}
}
