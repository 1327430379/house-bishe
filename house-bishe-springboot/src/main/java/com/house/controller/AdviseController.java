package com.house.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.house.bean.entity.Advise;
import com.house.service.AdviseService;
import com.house.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AdviseController {
	@Autowired
	private CustomerService cservice;
	@Autowired
	private AdviseService adservice;
/*
为投诉建议：
customer/advise.jsp:addAdivse
customer/adviselist.jsp:myadviseList,里面没有删除跟detail
adviseList:admin.adviselist.jsp:全部头数建议
adviseDeletes：admin.adviselist.jsp
*/
	
	@RequestMapping(value = "/myadviseList",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String myadviseList(HttpServletRequest request) {
	HttpSession session=request.getSession();
	String send_id=(String) session.getAttribute("id");
		List<Advise> list = adservice.findmyAdvise(send_id);

		 Gson gson = new GsonBuilder()
			        .setDateFormat("yyyy-MM-dd hh:mm:ss")
			        .create();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}
	
	
	@RequestMapping(value = "/adviseList",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String adviseList() {
	
		List<Advise> list = adservice.findAllAdvise();

		 Gson gson = new GsonBuilder()
			        .setDateFormat("yyyy-MM-dd hh:mm:ss")
			        .create();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}
	
	@RequestMapping(value="/addAdivse",method= RequestMethod.POST)
	public String addproperty(HttpServletRequest request) {
		HttpSession session=request.getSession();
		String send_id=(String) session.getAttribute("id");
		
		String  name=request.getParameter("name");
		String type=request.getParameter("type");
		String email=request.getParameter("email");
		String content=request.getParameter("content");
		Advise a=new Advise();
		a.setSend_id(send_id);
		a.setContent(content);
		a.setEmail(email);
		a.setName(name);
		a.setType(type);
		adservice.addAdvise(a);
		
		return "customer/adviselist";
	}
	
	
	@RequestMapping(value = "/adviseDeletes", method = RequestMethod.GET)
	@ResponseBody
	public String CustDeletes(@RequestParam("idsStr") String idsStr, HttpServletRequest request) {
	String ids[]=idsStr.split(",");
		//qservice.deleteQiuzus(ids);
	System.out.println(idsStr);
	int advise_id=0;
for (String id : ids) {
	advise_id=Integer.parseInt(id);
	adservice.deleteAdvises(advise_id);
}
		return ids.length+"rows";
		
	}
}
