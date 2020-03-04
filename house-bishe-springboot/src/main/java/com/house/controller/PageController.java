package com.house.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
		
		@RequestMapping("/admin_main.do")
		public String main() {
		
			return "admin/main";
		}
		
		@RequestMapping("/admin_top.do")
		public String top() {
		
			return "admin/top";
		}
		
		@RequestMapping("/provider_top.do")
		public String ptop() {
		
			return "provider/top";
		}
		
		@RequestMapping("/admin_left.do")
		public String left() {
		
			return "admin/left";
		}
		@RequestMapping("/provider_left.do")
		public String providerleft() {
		
			return "provider/left";
		}
		
		@RequestMapping("/admin_houselist")
		public String hlist() {
			return "admin/houselist";
		}
		@RequestMapping("/addHouse")
		public String addHouse() {
			return "admin/addHouse";
		}
		
		
		@RequestMapping("/index")
		public String indexlist() {
			return "index";
		}
		
		@RequestMapping("/xiamenindex")
		public String nanindex() {
			return "xiamen";
		}
		@RequestMapping("/zhangzhou")
		public String zhangzhou() {
			return "zhangzhou";
		}
		@RequestMapping("/quanzhou")
		public String quanzhou() {
			return "quanzhou";
		}
}
	

