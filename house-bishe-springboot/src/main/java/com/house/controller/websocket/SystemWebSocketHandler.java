package com.house.controller.websocket;

import com.alibaba.fastjson.JSONObject;
import org.springframework.web.socket.*;


import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * 
 * 1.customer  provider 
 * 
 * 2.房客登录后出现选择跟房东聊天的列表

3.房东登录后出现消息列表

4.两者之间能进行聊天
 *
 */
public class SystemWebSocketHandler implements WebSocketHandler {
	 
	
	/**
	 * 保存连接的Map容器
	 */
	private static final Map<String, WebSocketSession> connections = new HashMap<String,WebSocketSession>();
	
 
 
/*	
 在websocket连接的一端被关闭，或者发生错误时调用该方法
 */
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
    	System.out.println("ConnectionEstablished");
    	
    	String userId=session.getUri().toString().split("id=")[1];
    	String userIdDecode = URLDecoder.decode(userId, "UTF-8"); 
    	System.out.println("userId:"+userIdDecode);
    	
    	JSONObject result = new JSONObject();
    	// 触发连接事件，在连接池中添加连接
		result.put("type", "user_join");
		result.put("user",userIdDecode);
		sendMessageToAllUser(result.toString());//向所有在线用户推送当前用户上线的消息
		
		connections.put(userId, session);
		
		result = new JSONObject();
		result.put("type", "get_online_user");
		result.put("list",getOnlineUser());
		sendMessageToUser(userId, result.toString());//向当前连接发送当前在线用户的列表
    	
        
        
    }
/* 
 当新的WebSocket消息到达时调用。
  */  
    @Override
    public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
    	System.out.println("handleMessage");
    	String userId=session.getUri().toString().split("id=")[1];
    	
    	String messageStr=message.getPayload().toString();
		
		JSONObject jsonObj = JSONObject.parseObject(messageStr);
	    String type = jsonObj.getString("type");
	    if(type==null){
	    	
	    	sendMessageToAllUser(messageStr);
	    	
	    }else if("message".equals(type)){
			JSONObject result = new JSONObject();
			String userIdDecode = URLDecoder.decode(userId, "UTF-8"); 
			result.put("user", userIdDecode);
			result.put("type", "message");
			result.put("msg", jsonObj.getString("contentVal"));
			String resultStr=result.toString();

			String toUser = jsonObj.getString("toUser");
			toUser = URLEncoder.encode(toUser, "UTF-8"); 
			
			sendMessageToUser(toUser, resultStr);//向对话在线用户发送消息
			
	    }
    	
    	
    }
 
  /*  
   

处理底层WebSocket消息传输中的错误。
    */
    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
        if(session.isOpen()){
            session.close();
        }

        String userId=session.getUri().toString().split("id=")[1];
        connections.remove(userId);
        
        userId = URLDecoder.decode(userId, "UTF-8"); 
        JSONObject result = new JSONObject();
		result.put("type", "user_leave");
		result.put("user",userId);
		sendMessageToAllUser(result.toString());//向在线用户发送当前用户退出的消息
        
    }
 
 /*   
  
 在任何一方关闭WebSocket连接后或在发生传输错误后调用。 虽然会议在技术上可能仍然是开放的，但取决于基础实施情况，在这一点上发送消息是不鼓励的，并且很可能不会成功。
   */ 
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus closeStatus) throws Exception {
    	String userId=session.getUri().toString().split("id=")[1];
        connections.remove(userId);
        
        userId = URLDecoder.decode(userId, "UTF-8"); 
        
        JSONObject result = new JSONObject();
		result.put("type", "user_leave");
		result.put("user",userId);
		sendMessageToAllUser(result.toString());//向在线用户发送当前用户退出的消息
        
    }
 
    
    
 /*
WebSocketHandler是否处理部分消息。 如果此标志设置为true，并且基础WebSocket服务器支持部分消息，
则可能会拆分大型WebSocket消息或其中一个未知大小，
并可能通过多次调用handleMessage（WebSocketSession，
WebSocketMessage）来接收。 标志WebSocketMessage.isLast（）指示消息是否部分以及它是否是最后一部分。
*/
    
    @Override
    public boolean supportsPartialMessages() {
        return false;
    }
    
    /**
	 * 获取所有的在线用户
	 *
	 * 
	 */
	public static Set<String> getOnlineUser(){
		
		Set<String> set=new HashSet<String>();
		
		try{
			Set<String> keys=connections.keySet();
			for (String userId : keys) {
				String userIdDecode = URLDecoder.decode(userId, "UTF-8"); 
				set.add(userIdDecode);
			}
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		
		return set;
	}
 
    /**
     * 给所有在线用户发送消息
     *
     * @param message
     */
    public void sendMessageToAllUser(String message) {
    	
    	TextMessage m=new TextMessage(message);
    	
    	Set<String> users = connections.keySet();
    	
        for (String userId: users) {
        	
        	WebSocketSession user =connections.get(userId);
        	
        	if(user!=null){
	            try {
	                if (user.isOpen()) {
	                    user.sendMessage(m);
	                }
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
        	}
        }
    }
    
    
    
    /**
	 * 向特定的用户发送数据
	 *
	 * 
	 */
	public static void sendMessageToUser(String userId,String message){
		TextMessage m=new TextMessage(message);
    	
		
		WebSocketSession user=connections.get(userId);
		if(user!=null){
            try {
                if (user.isOpen()) {//回话是否打开
                    user.sendMessage(m);//回话发送消息
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
		}
	}
    
    
    
  
    
    
 
}