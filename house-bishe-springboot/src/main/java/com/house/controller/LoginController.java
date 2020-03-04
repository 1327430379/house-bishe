package com.house.controller;

import com.house.bean.eo.Admin;
import com.house.bean.eo.Customer;
import com.house.bean.eo.Provider;
import com.house.service.AdminService;
import com.house.service.CustomerService;
import com.house.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
	@Autowired
	private ProviderService pservice;

	@Autowired
	private AdminService aservice;

	@Autowired
	private CustomerService cservice;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(@RequestParam("role") String role,
			@RequestParam("name") String name,
			@RequestParam("password") String password,
			HttpServletRequest request) {
		System.out.println("角色："+role);
		HttpSession session = request.getSession();
		String result = "";
		if ("admin".equals(role)) {
			Admin a = aservice.check(name, password);

			if (a != null) {
				result = "admin/main";
				session.setAttribute("currentUser", name);
				session.setAttribute("id", a.getAdmin_id());
				session.setAttribute("user", a);
			}

		} else if ("provider".equals(role)) {
			System.out.println(role + name + password);
			Provider p = pservice.check(name, password);

			if (p != null) {
				session.setAttribute("user", p);
				session.setAttribute("id", p.getProvider_id());
				session.setAttribute("currentUser", name);
				result = "provider/main";
			}

		} else if ("customer".equals(role)){//顾客登录之后应该在首页的  
			Customer c = cservice.check(name, password);

			if (c != null) {
				session.setAttribute("user", c);
				session.setAttribute("id", c.getCustomer_id());
				session.setAttribute("currentUser", name);
				result = "login";//customer/main
			}

		}else{
			result="login";
		}

		return result;

	}
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "login";
	}
	
	
	@RequestMapping(value = "/myInfo.do", method = RequestMethod.GET)
	public String myInfo(HttpServletRequest request) {
		String result="";
		HttpSession session = request.getSession();
		String id=(String) session.getAttribute("id");
		if(id.charAt(0)=='p') {System.out.println("p");
		result = "provider/main";}
		else if(id.charAt(0)=='a'){
			System.out.println("a");
			
			result = "admin/main";
		}else if(id.charAt(0)=='c'){
			System.out.println("c");
			result="customer/main";
			
		}else{
			result="login";
		}
		
		
		
		return result;
	}
}
