package com.house.controller;

import com.house.bean.eo.Customer;
import com.house.bean.eo.Notice;
import com.house.bean.eo.Provider;
import com.house.service.CustomerService;
import com.house.service.NoticeService;
import com.house.service.ProviderService;
import com.house.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("notice")
public class NoticeController {
	
	@Autowired
	private NoticeService nservice;
	
	@Autowired
	private CustomerService cservice;
	
	@Autowired
	private ProviderService pservice;
	/*
	代码分类：
	查询类：
	1.Unread
	2.myRece
	3.mySend
	添加类
	reply :provider/recelist.jsp	customer/recelist.jsp	使用的是它
	addReply_c addReply_p :两个在回复中没有使用到,已经注释掉
	 addNotice_c(customer/addnotice.jsp)  addNotice_p(provider/addnotice.jsp) 
	状态类：
	updateSendStatus
	updateReceStatus
	 */
	
	
	@RequestMapping(value = "/Unread",method = RequestMethod.GET)
	public String Unread(HttpServletRequest request) {
		HttpSession session = request.getSession();
	   String id= (String)session.getAttribute("id");
	   
	   List<Notice> unlist=nservice.findUnread(id);
        if(id.charAt(0)=='c'){
        	request.setAttribute("unlist", unlist);
        	nservice.updateUnReadStatus(id);//改为已读
		return "customer/recelist";
		}
        else{
        	return "provider/recelist";
        }
	} 
	
	
	@RequestMapping(value = "/myRece",method = RequestMethod.GET)
	public String myRece(HttpServletRequest request) {
		HttpSession session = request.getSession();
	   String id= (String)session.getAttribute("id");
	   
	   List<Notice> list=nservice.findmyrece(id);
	   request.setAttribute("rlist", list);
	   List<Notice> unlist=nservice.findUnread(id);
	   request.setAttribute("unlist", unlist);
   	nservice.updateUnReadStatus(id);//改为已读
        if(id.charAt(0)=='c'){
		
        	
		
        	return "customer/recelist";
        }
        else{
        	return "provider/recelist";
        }
	} 
	
	@RequestMapping(value = "/mySend",method = RequestMethod.GET)
	public String mySend(HttpServletRequest request) {
		HttpSession session = request.getSession();
	   String id= (String)session.getAttribute("id");
	   if(StringUtil.isEmpty(id)) return "login";
	   List<Notice> list=nservice.findmysend(id);
	   request.setAttribute("slist", list);
        if(id.charAt(0)=='c')
        	
		return "customer/sendlist";
        else{
        	return "provider/sendlist";
        }
	} 
	
	
	//前端改为AjAx提交  	provider/recelist.jsp	customer/recelist.jsp	使用的是它
	@RequestMapping(value = "/reply",method = RequestMethod.POST)
	@ResponseBody
	public String reply(HttpServletRequest request) {
		String notice_id=request.getParameter("notice_id");
	   String content=request.getParameter("content");
	   Notice n=nservice.findOneNotice(notice_id);
	  Notice n1=new Notice(notice_id, n.getRece_id(), n.getNickname2(), n.getImg2(), n.getSender_id(),
			  n.getNickname1(), n.getImg1(), content, "0", "0", null);
	  
	nservice.addNotice(n1);
	   
	   
	  
	   Notice a=new Notice();
	   return "success";
	} 
	
	
	
	

		/*@RequestMapping(value = "/addReply_c",method = RequestMethod.POST)
		@ResponseBody
		public String addReply_c(HttpServletRequest request) {
			String sender_id=request.getParameter("sender_id");
			Customer sender=cservice.findOneCustomer(sender_id);
			String rece_id=request.getParameter("rece_id");
			Provider p=pservice.findOneProvider(rece_id);
			String content=request.getParameter("content");
			
			
		   
		  
	Notice n=new Notice("", sender_id, sender.getCustomer_id(), sender.getImg(), rece_id, 
			p.getNickname(), p.getImg(), content, "0", "0", null);
		  
		nservice.addNotice(n);
		   
		   
		  
		  
		   return "success";
		} 
		
		
		@RequestMapping(value = "/addReply_p",method = RequestMethod.POST)
		@ResponseBody
		public String addReply_p(HttpServletRequest request) {
		
			String sender_id=request.getParameter("sender_id");
			Provider p=pservice.findOneProvider(sender_id);
			
			String rece_id=request.getParameter("rece_id");
			Customer c=cservice.findOneCustomer(rece_id);
			
			String content=request.getParameter("content");
			
			Notice n=new Notice("", sender_id, p.getNickname(), p.getImg(), rece_id, c.getNickname(),c.getImg(), 
					content,"0", "0", null);
					
		  
		nservice.addNotice(n);
		   

		   return "success";
		} */
		
		
		
		@RequestMapping(value = "/addNotice_p",method= RequestMethod.POST)
		@ResponseBody
		public String addNotice_p(HttpServletRequest request) {
		
		
			
			HttpSession session = request.getSession();
			   Provider p= (Provider)session.getAttribute("user");
			String rece_id=request.getParameter("rece_id");
			String nickname2=request.getParameter("nickname");

			String img2=request.getParameter("img");
			String content=request.getParameter("content");
			
			Notice n=new Notice("", p.getProvider_id(), p.getNickname(), p.getImg(), rece_id, nickname2,img2, 
					content,"0", "0", null);
					
		  
		nservice.addNotice(n);
		  

		   return "success";
		} 
		
	
		@RequestMapping(value = "/addNotice_c",method = RequestMethod.POST)
		@ResponseBody
		public String addNotice_c(HttpServletRequest request) {
		
			//String sender_id=request.getParameter("sender_id");
			HttpSession session=request.getSession();
			String sender_id=(String)session.getAttribute("id");
			if(StringUtil.isEmpty(sender_id))  return "no login";
			System.out.println("sender_id:"+sender_id);
		
			Customer sender=cservice.findOneCustomer(sender_id);
			String rece_id=request.getParameter("rece_id");
			System.out.println("ss:"+rece_id);
			String img=request.getParameter("img");
			String nickname=request.getParameter("nickname");
			//Provider p=pservice.findOneProvider(rece_id);
			String content=request.getParameter("content");
			
			
		   
		  
	Notice n=new Notice("", sender_id, sender.getCustomer_id(), sender.getImg(), rece_id, 
			nickname, img, content, "0", "0", null);
		  
		nservice.addNotice(n);
		   
		   
		  
		   

		   return "success";
		} 
		
		
		//删除发件箱   		@ResponseBody
		@RequestMapping(value = "/updateSendStatus",method = RequestMethod.GET)
		public String updateSendStaus(HttpServletRequest request) {//updateSendStatus
		
			
		String notice_id=request.getParameter("notice_id");
  nservice.updateSendStatus(notice_id);
		  // return "redict:mySend";return "success";
  return "redict:mySend";
		} 
		
		
		@RequestMapping(value = "/updateReceStatus",method = RequestMethod.GET)
		public String updateReceStaus(HttpServletRequest request) {
		
			
		String notice_id=request.getParameter("notice_id");
  nservice.updateReceStatus(notice_id);
		   return "redict:myRece";
		} 
}
