package com.house.controller;

import com.house.bean.entity.House_view;
import com.house.service.*;
import com.house.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController2 {
	@Autowired
	private House_viewService hvservice;
	
	@Autowired
	private HouseService hservice;
	
	@Autowired
	private SupportService sservice;
	@Autowired
	private StaffService stservice;
	@Autowired
	private ImagesService iservice;
	
	@Autowired
	private LocationService lservice;
	
	@Autowired
	private CustomerService cservice;
	
	
	@RequestMapping(value="/xiamen_qu/{key}",method= RequestMethod.GET)//区搜索
	public String xiamen_qu(@PathVariable("key") String key, HttpServletRequest request) {
		List<House_view> list =null;
		if("gqu1".equals(key)){//厦门市湖里区 厦门市海沧区 厦门市集美区  厦门市同安区 厦门市翔安区
			list =hvservice.searchqu("厦门市湖里区");
		}else if("gqu2".equals(key)){//象山区
			list =hvservice.searchqu("厦门市海沧区");
		}else if("gqu3".equals(key)){//秀峰区
			list =hvservice.searchqu("厦门市集美区");
		}else if("gqu4".equals(key)){//叠彩区
			list =hvservice.searchqu("厦门市同安区");
		}else if("gqu5".equals(key)){//八里街
			list =hvservice.searchqu("厦门市翔安区");
		}
		request.setAttribute("list", list);
		//System.out.println(list.size());
		if(list!=null){
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
		
		}
		else{
			int total=2;
			 request.setAttribute("total", total); 
			  
				 request.setAttribute("num", 1);
		}
		
			 return "xiamen";
	}
	@RequestMapping(value="/quanzhou_qu/{key}",method= RequestMethod.GET)//区搜索
	public String quanzhou_qu(@PathVariable("key") String key, HttpServletRequest request) {
		List<House_view> list =null;
		if("gqu1".equals(key)){//鲤城区 晋江市洛江区泉港区
			list =hvservice.searchqu("泉州市丰泽区");
		}else if("gqu2".equals(key)){//象山区
			list =hvservice.searchqu("泉州市鲤城区");
		}else if("gqu3".equals(key)){//秀峰区
			list =hvservice.searchqu("泉州市晋江市");
		}else if("gqu4".equals(key)){//叠彩区
			list =hvservice.searchqu("泉州市洛江区");
		}else if("gqu5".equals(key)){//八里街
			list =hvservice.searchqu("泉州市泉港区");
		}
		request.setAttribute("list", list);
		//System.out.println(list.size());
		if(list!=null){
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
		
		}
		else{
			int total=2;
			 request.setAttribute("total", total); 
			  
				 request.setAttribute("num", 1);
		}
		
			 return "quanzhou";
	}
	
	
	@RequestMapping(value="/zhangzhou_qu/{key}",method= RequestMethod.GET)//区搜索
	public String zhangzhou_qu(@PathVariable("key") String key, HttpServletRequest request) {
		List<House_view> list =null;
		if("gqu1".equals(key)){//芗城区 龙文区龙海市
			list =hvservice.searchqu("漳州市芗城区");
		}else if("gqu2".equals(key)){//象山区
			list =hvservice.searchqu("漳州市龙文区");
		}else if("gqu3".equals(key)){//秀峰区
			list =hvservice.searchqu("漳州市龙海市");
		}
		request.setAttribute("list", list);
		//System.out.println(list.size());
		if(list!=null){
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
		
		}
		else{
			int total=2;
			 request.setAttribute("total", total); 
			  
				 request.setAttribute("num", 1);
		}
		
			 return "zhangzhou";
	}
	
	
	
	@RequestMapping(value="/xiamen_price/{key}",method= RequestMethod.GET)//price
	public String xiamen_price(@PathVariable("key") String key, HttpServletRequest request) {
		List<House_view> list =null;	
		if("gp1".equals(key)){//七星区
			list =hvservice.searchprice("厦门市", 0, 250);
		}else if("gp2".equals(key)){//象山区
			list =hvservice.searchprice("厦门市", 250, 350);
		}else if("gp3".equals(key)){//秀峰区
			list =hvservice.searchprice("厦门市", 350, 450);
		}else if("gp4".equals(key)){//叠彩区
			list =hvservice.searchprice("厦门市", 450, 600);
		}else if("gp5".equals(key)){//八里街
			list =hvservice.searchprice("厦门市", 600, 800);
		}else if("gp6".equals(key)){//灵川县
			list =hvservice.searchprice("厦门市", 800, 1000);
		}
		request.setAttribute("list", list);
		//System.out.println(list.size());
		if(list!=null){
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
		
		}
		else{
			int total=2;
			 request.setAttribute("total", total); 
			  
				 request.setAttribute("num", 1);
		}
		
		
			 return "xiamen";
	}
	
	
	@RequestMapping(value="/quanzhou_price/{key}",method= RequestMethod.GET)//price
	public String quanzhou_price(@PathVariable("key") String key, HttpServletRequest request) {
		List<House_view> list =null;	
		if("gp1".equals(key)){//七星区
			list =hvservice.searchprice("泉州市", 0, 250);
		}else if("gp2".equals(key)){//象山区
			list =hvservice.searchprice("泉州市", 250, 350);
		}else if("gp3".equals(key)){//秀峰区
			list =hvservice.searchprice("泉州市", 350, 450);
		}else if("gp4".equals(key)){//叠彩区
			list =hvservice.searchprice("泉州市", 450, 600);
		}else if("gp5".equals(key)){//八里街
			list =hvservice.searchprice("泉州市", 600, 800);
		}else if("gp6".equals(key)){//灵川县
			list =hvservice.searchprice("泉州市", 800, 1000);
		}
		request.setAttribute("list", list);
		//System.out.println(list.size());
		if(list!=null){
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
		
		}
		else{
			int total=2;
			 request.setAttribute("total", total); 
			  
				 request.setAttribute("num", 1);
		}
		
		
			 return "quanzhou";
	}
	
	
	
	
	@RequestMapping(value="/zhangzhou_price/{key}",method= RequestMethod.GET)//price
	public String zhangzhou(@PathVariable("key") String key, HttpServletRequest request) {
		List<House_view> list =null;	
		if("gp1".equals(key)){//七星区
			list =hvservice.searchprice("漳州市", 0, 250);
		}else if("gp2".equals(key)){//象山区
			list =hvservice.searchprice("漳州市", 250, 350);
		}else if("gp3".equals(key)){//秀峰区
			list =hvservice.searchprice("漳州市", 350, 450);
		}else if("gp4".equals(key)){//叠彩区
			list =hvservice.searchprice("漳州市", 450, 600);
		}else if("gp5".equals(key)){//八里街
			list =hvservice.searchprice("漳州市", 600, 800);
		}else if("gp6".equals(key)){//灵川县
			list =hvservice.searchprice("漳州市", 800, 1000);
		}
		request.setAttribute("list", list);
		//System.out.println(list.size());
		if(list!=null){
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
		
		}
		else{
			int total=2;
			 request.setAttribute("total", total); 
			  
				 request.setAttribute("num", 1);
		}
			 return "zhangzhou";
	}
	
	
	@RequestMapping(value="/xiamen_area/{key}",method= RequestMethod.GET)//面积搜索
	public String xiamen_area(@PathVariable("key") String key, HttpServletRequest request) {
		
		List<House_view> list =null;
		System.out.println(key);
		if("ga1".equals(key)){//select * from house_view where address  like '厦门%' and status='空闲'  and (area>=30  and area<=40)
			list =hvservice.searcharea("厦门市",0, 30);
		}else if("ga2".equals(key)){//象山区
			list =hvservice.searcharea("厦门市",30, 40);
		}else if("ga3".equals(key)){//秀峰区
			list =hvservice.searcharea("厦门市",40, 60);
		}else if("ga4".equals(key)){//叠彩区
			list =hvservice.searcharea("厦门市",60,80);
		}else if("ga5".equals(key)){//八里街
			list =hvservice.searcharea("厦门市",80, 100);
		}
		request.setAttribute("list", list);
		System.out.println(list.size());
		
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
		
			 return "xiamen";
	}
	@RequestMapping(value="/quanzhou_area/{key}",method= RequestMethod.GET)//面积搜索
	public String quanzhou_area(@PathVariable("key") String key, HttpServletRequest request) {
		
		List<House_view> list =null;
		
		if("ga1".equals(key)){//七星区
			list =hvservice.searcharea("泉州市",0, 30);
		}else if("ga2".equals(key)){//象山区
			list =hvservice.searcharea("泉州市",30, 40);
		}else if("ga3".equals(key)){//秀峰区
			list =hvservice.searcharea("泉州市",40, 60);
		}else if("ga4".equals(key)){//叠彩区
			list =hvservice.searcharea("泉州市",60,80);
		}else if("ga5".equals(key)){//八里街
			list =hvservice.searcharea("泉州市",80, 100);
		}
		request.setAttribute("list", list);
		//System.out.println(list.size());
		if(list!=null){
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
		
		}
		else{
			int total=2;
			 request.setAttribute("total", total); 
			  
				 request.setAttribute("num", 1);
		}
		
			 return "quanzhou";
	}
	@RequestMapping(value="/zhangzhou_area/{key}",method= RequestMethod.GET)//面积搜索
	public String zhangzhou_area(@PathVariable("key") String key, HttpServletRequest request) {
		
		List<House_view> list =null;
		
		if("ga1".equals(key)){//七星区
			list =hvservice.searcharea("漳州市",0, 30);
		}else if("ga2".equals(key)){//象山区
			list =hvservice.searcharea("漳州市",30, 40);
		}else if("ga3".equals(key)){//秀峰区
			list =hvservice.searcharea("漳州市",40, 60);
		}else if("ga4".equals(key)){//叠彩区
			list =hvservice.searcharea("漳州市",60,80);
		}else if("ga5".equals(key)){//八里街
			list =hvservice.searcharea("漳州市",80, 100);
		}
		request.setAttribute("list", list);
		//System.out.println(list.size());
		if(list!=null){
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
		
		}
		else{
			int total=2;
			 request.setAttribute("total", total); 
			  
				 request.setAttribute("num", 1);
		}
		
			 return "zhangzhou";
	}
	
	
	
	@RequestMapping(value="/mutiple_search.do/{cityid}",method= RequestMethod.POST)
	public String mutiple_search(@PathVariable("cityid") int cityid, HttpServletRequest request) {
		
		String city_name ="福州";
		String result="index";
		if(cityid==1) {city_name="福州";}
		else if(cityid==2) {city_name="厦门";result="xiamen";}
		else if(cityid==3)  {city_name="泉州";result="quanzhou";}
		else if(cityid==4)  {city_name="漳州";result="zhangzhou";}
		else if(cityid==5)  {city_name="莆田";result="putian";}
		
		String key=request.getParameter("key");
		
		key=key.replace('1', '一').replace('2', '二').replace('3', '三');
		String city=request.getParameter("city");
		System.out.println(city+key);
		List<House_view> list=null;//new ArrayList<House_view> ()

			String [] arr = key.split("\\s+");//能够按照空格拆分，无论中间有多少个空格都可以拆分
			List<String> strlist=new ArrayList<String>();
for(int i=0;i<arr.length;i++){
	if(StringUtil.isNotEmpty(arr[i])) strlist.add(arr[i]);
}
			String address= null;
			String paytype = null;
			String type= null;
			if(strlist.size()==1){
				if('押'==strlist.get(0).charAt(0)||'押'==strlist.get(0).charAt(1)){
					list = hvservice.findpaytype(city, strlist.get(0));
				}else{
					list = hvservice.findview_key(city,strlist.get(0));
				}
			
			}
			else if(strlist.size()==2){
				
		for(String s:strlist){

			if('一'==s.charAt(0)||'二'==s.charAt(0)||'三'==s.charAt(0)){
				type=s;
				
			}else if('押'==s.charAt(0)||'押'==s.charAt(1)){
				paytype=s;
			
			}else{
				address=s;
			}
	}
		
		if(StringUtil.isEmpty(paytype)){
			list=	hvservice.findmutiple1(city, address, type);
		}else if(StringUtil.isEmpty(address)){
			list=hvservice.findmutiple3(city, type, paytype);
		}
		
		else {
			list=hvservice.findmutiple2(city, address, paytype);
		}
				
			}else if(strlist.size()==3){//这里是最好的
				
				for(String s:strlist){

					if('一'==s.charAt(0)||'二'==s.charAt(0)||'三'==s.charAt(0)){
						type=s;
						
					}else if('押'==s.charAt(0)||'押'==s.charAt(1)){
						paytype=s;
					
					}else{
						address=s;
					
					}}
						
			list=	hvservice.findmutiple_all(city, address, type, paytype);	
			}else{
				list=new ArrayList<House_view> ();
			}
				 request.setAttribute("list", list);
					System.out.println(list.size());
					request.setAttribute("key", key);
					int total=list.size()/10;
					 request.setAttribute("total", total); 
					 request.setAttribute("num", 1);
		
					 return "index";
	}
	
	
	@RequestMapping(value="/xiamen_shi/{key}",method= RequestMethod.GET)//室搜索
	public String xiamen_shi(@PathVariable("key") String key, HttpServletRequest request) {
		List<House_view> list =null;
		if("gs1".equals(key)){//七星区
			list =hvservice.searchshi("厦门市", "一室");
		}else if("gs2".equals(key)){//象山区
			list =hvservice.searchshi("厦门市", "二室");
		}else if("gs3".equals(key)){//秀峰区
			list =hvservice.searchshi("厦门市", "三室");
		}
        
		request.setAttribute("list", list);
		System.out.println(list.size());
		
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
			 return "index";
	}
	@RequestMapping(value="/quanzhou_shi/{key}",method= RequestMethod.GET)//室搜索
	public String quanzhou(@PathVariable("key") String key, HttpServletRequest request) {
		List<House_view> list =null;
		if("gs1".equals(key)){//七星区
			list =hvservice.searchshi("泉州市", "一室");
		}else if("gs2".equals(key)){//象山区
			list =hvservice.searchshi("泉州市", "二室");
		}else if("gs3".equals(key)){//秀峰区
			list =hvservice.searchshi("泉州市", "三室");
		}
        
		request.setAttribute("list", list);
		System.out.println(list.size());
		
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
			 return "index";
	}
	@RequestMapping(value="/zhangzhou_shi/{key}",method= RequestMethod.GET)//室搜索
	public String zhangzho(@PathVariable("key") String key, HttpServletRequest request) {
		List<House_view> list =null;
		if("gs1".equals(key)){//七星区
			list =hvservice.searchshi("漳州市", "一室");
		}else if("gs2".equals(key)){//象山区
			list =hvservice.searchshi("漳州市", "二室");
		}else if("gs3".equals(key)){//秀峰区
			list =hvservice.searchshi("漳州市", "三室");
		}
        
		request.setAttribute("list", list);
		System.out.println(list.size());
		
		int total=list.size()/10;
		 request.setAttribute("total", total); 
		  
			 request.setAttribute("num", 1);
			 return "index";
	}
	
	
}
