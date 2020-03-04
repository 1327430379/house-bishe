package com.house.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.house.bean.entity.HouseTest;
import com.house.bean.entity.House_view;
import com.house.bean.eo.*;
import com.house.service.*;
import com.house.util.IDutil;
import com.house.util.StringUtil;
import com.house.util.houseUtil;
import com.house.util.poiUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("provider")//E:\\Tomcat ruanjian\\head\\
public class ProviderController {//查询自己的房子，合同 E:\\Tomcat ruanjian\\images_house\\
	public final String imgpath="F:\\bishe_file\\images_house\\";///usr/lib/tomcat/images_house/
	public final String  headpath="F:\\bishe_file\\head\\";///usr/lib/tomcat/head/
	@Autowired
	private ImagesService iservice;
	
	@Autowired
	private HouseService hservice;
	
	/*@Autowired
	private ProviderService prservice;*/
	
	
	@Autowired
	private ProviderService pservice;
	
	
	@Autowired
	private SupportService sservice;
	@Autowired
	private LocationService lservice;
	
	@Autowired
	private AgreementService aservice;
	
	@Autowired
	private CustomerService cservice;
	
	@Autowired
	private House_viewService hvservice;
	
	@Autowired
	private MessService mservice;
	
	Provider p =null;
/*
1.房屋管理；
HouseListmap
getOneHouse  getOneHouse2
addOneHouse addImg
updateHouse updateImg
updateImg_pre
HouseDeletes:重点
2.合同列表：agreelist.jsp:agreeListmap getOneAgree(转给agreeDetail) getOneGuest(数据放在request,Customer)  agreeDeletes
addOneAgree 

getOneGuest2 :返回的是json ,在index.jsp中调用
 4.	agreeListmap  addOneAgree  getOneGuest
 

 
 预定：
 （index.jsp） reservelist  makeAgree disAgree getOneGuest

 
 5.customerlist:commentlist getOneGuest
 
6.系统设置:changPass addInfo updateInfo
7. proplist.jsp:
proplist:物业信息  getOneproperty:在propertty中
getOneproperty_p 在propertty中
*/
	@RequestMapping(value = "/HouseListmap",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String houseList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		p =(Provider) session.getAttribute("user");

		List<House> list = hservice.findAllByProvider(p.getProvider_id());
	
		Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}
	
	@RequestMapping(value = "/freeHouseList",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String freeHouse(HttpServletRequest request) {
		HttpSession session = request.getSession();
		p =(Provider) session.getAttribute("user");

		List<House> list = hservice.f_pid_status(p.getProvider_id(), "空闲");
	
		Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}
	
	
	
	@RequestMapping(value="/getOneHouse/{house_id}",method= RequestMethod.GET)
	public String getOneHouse1(@PathVariable("house_id") String house_id, HttpServletRequest request) {
		
		House_view h = hvservice.findOneHouse_view(house_id);
		//System.out.println(h.toString());
		List<Images> imageslist = iservice.findAllImages(house_id);
		
		request.setAttribute("h", h);
	
		request.setAttribute("imageslist", imageslist);
		return "provider/houseDetail";
		
	}
	@RequestMapping(value = "/HouseDeletes", method = RequestMethod.GET)
	@ResponseBody
	public String CustDeletes(@RequestParam("idsStr") String idsStr, HttpServletRequest request) {
	String ids[]=idsStr.split(",");
	for (String house_id : ids) {//E:\\Tomcat ruanjian\\images_house\\
		hservice.deleteOneHouses(house_id, imgpath);//         /usr/lib/tomcat/images_house/
	}
	System.out.println(idsStr);
		return ids.length+"rows";
		
	}
	
	
	//房东编辑房屋信息，返回原始数据   http://localhost:8080/welcome/provider/getOneHouse2/h0017/
	@RequestMapping(value="/getOneHouse2/{house_id}",method= RequestMethod.GET)
	public String getOneHouse2(@PathVariable("house_id") String house_id, HttpServletRequest request) {
		
		House h = hservice.findOneHouse(house_id);
		HouseTest htest=houseUtil.getHouseTest(h.getAddress(), h.getType());
		Location l=lservice.findOneLocation(house_id);
		Supporting s=sservice.findOneSupporting(house_id);
	   
		request.setAttribute("h", h);
		request.setAttribute("l", l);
		request.setAttribute("s", s);
		request.setAttribute("cityname", h.getAddress().substring(0, 2));
		request.setAttribute("cityqu", h.getAddress().substring(3, 6));
		request.setAttribute("htest", htest);
		
		return "provider/updateHouse";
		
	}
	
	@RequestMapping(value = "/addOneHouse", method = RequestMethod.POST)
	public String addHouse(HttpServletRequest request){
		HttpSession session = request.getSession();
		
		//生成house_id
				int num=hservice.findAllHouse().size()+1;
				String house_id=IDutil.getID("h00", num);
				
		//house部分
		String a1=request.getParameter("P1");
	
		String a2=request.getParameter("C1");
		String a3=request.getParameter("A1");
		String address=a2+"市"+a3;
		String address2=request.getParameter("address");
		System.out.println(a1+"--"+a2+"--"+a3);
		String type=request.getParameter("t1")+request.getParameter("t2")
		+request.getParameter("t3")+request.getParameter("t4");
		String paytype=request.getParameter("paytype");//这个暂时没有获取
		
		String ceng=request.getParameter("ceng");
		String area=request.getParameter("area");
		String pr=request.getParameter("price");
		float price=Float.parseFloat(pr);
		p=(Provider) session.getAttribute("user");
		String provider_id="";
		if(p!=null) provider_id=p.getProvider_id();
		
		House h=new House(house_id, provider_id, address, address2, ceng, area,paytype, type, "待审核", 4.5f,  price, null, new Date(), new Date());
		System.out.println(h.toString());		
		hservice.addHouse(h);
						
		//s_ico_no
		//supproting
		String hot_shower=request.getParameter("hot_shower");
		if(StringUtil.isEmpty(hot_shower)) hot_shower="s_ico_no";
		
		String air_conditioner=request.getParameter("air_conditioner");
		if(StringUtil.isEmpty(air_conditioner)) air_conditioner="s_ico_no";
		
		String fridge=request.getParameter("fridge");
		if(StringUtil.isEmpty(fridge)) fridge="s_ico_no";
		
		String washing_machine=request.getParameter("washing_machine");
		if(StringUtil.isEmpty(washing_machine)) washing_machine="s_ico_no";
		
		String kitchen_ware=request.getParameter("kitchen_ware");
		if(StringUtil.isEmpty(kitchen_ware)) kitchen_ware="s_ico_no";
		
		String lift=request.getParameter("lift");
		if(StringUtil.isEmpty(lift)) lift="s_ico_no";
		String wifi=request.getParameter("wifi");
		if(StringUtil.isEmpty(wifi)) wifi="s_ico_no";
		
		Supporting s=new Supporting(house_id, kitchen_ware, hot_shower, wifi, air_conditioner, lift, fridge, washing_machine);
		System.out.println(s.toString());
		sservice.addSupporting(s);
		
		//location
		String descb=request.getParameter("describtion");
		String transport=request.getParameter("transport");
		String park=request.getParameter("park");
		String eat=request.getParameter("eat");
		String hospital=request.getParameter("hospital");
		Location l=new Location(house_id, descb, transport, park, eat, hospital);
		System.out.println(l.toString());
		lservice.addLocation(l);
		//将house_id传给图片上传液面
		request.setAttribute("house_id", house_id);
		
		return "provider/addImg";
	}
	

		 @RequestMapping(value = "/updateHouse", method = RequestMethod.POST)
			public String updateOneHouse(HttpServletRequest request){
				
				
				//生成house_id
						
						String house_id=request.getParameter("house_id");
						House h=hservice.findOneHouse(house_id);
						
				//house部分
						String a1=request.getParameter("P1");
						
						String a2=request.getParameter("C1");
						String a3=request.getParameter("A1");
						String address=a2+"市"+a3;
						String address2=request.getParameter("address");
						System.out.println(a1+"--"+a2+"--"+a3+"--"+address2);
				
				String type=request.getParameter("t1")+request.getParameter("t2")
				+request.getParameter("t3")+request.getParameter("t4");
				String paytype=request.getParameter("paytype");//这个暂时没有获取
				
				String ceng=request.getParameter("ceng");
				String area=request.getParameter("area");
				String pr=request.getParameter("price");
				float price=Float.parseFloat(pr);
				
				h.setAddress(address);
				h.setAddress2(address2);
				h.setPrice(price);
				h.setArea(area);
				h.setPaytype(paytype);
				h.setCeng(ceng);
				//h.setType(staus);
				System.out.println(h.toString());		
				hservice.updateHouse(h);
								
				//s_ico_no
				//supproting
				String hot_shower=request.getParameter("hot_shower");
				if(StringUtil.isEmpty(hot_shower)) hot_shower="s_ico_no";
				
				String air_conditioner=request.getParameter("air_conditioner");
				if(StringUtil.isEmpty(air_conditioner)) air_conditioner="s_ico_no";
				
				String fridge=request.getParameter("fridge");
				if(StringUtil.isEmpty(fridge)) fridge="s_ico_no";
				
				String washing_machine=request.getParameter("washing_machine");
				if(StringUtil.isEmpty(washing_machine)) washing_machine="s_ico_no";
				
				String kitchen_ware=request.getParameter("kitchen_ware");
				if(StringUtil.isEmpty(kitchen_ware)) kitchen_ware="s_ico_no";
				
				String lift=request.getParameter("lift");
				if(StringUtil.isEmpty(lift)) lift="s_ico_no";
				String wifi=request.getParameter("wifi");
				if(StringUtil.isEmpty(wifi)) wifi="s_ico_no";
				
				Supporting s=new Supporting(house_id, kitchen_ware, hot_shower, wifi, air_conditioner, lift, fridge, washing_machine);
				System.out.println(s.toString());
				sservice.updateSupporting(s);//这里有错
				
				//location
				String descb=request.getParameter("describtion");
				String transport=request.getParameter("transport");
				String park=request.getParameter("park");
				String eat=request.getParameter("eat");
				String hospital=request.getParameter("hospital");
				Location l=new Location(house_id, descb, transport, park, eat, hospital);
				System.out.println(l.toString());
				lservice.updateLocation(l);
				//将house_id传给图片上传液面
				
				/*String isdelte=request.getParameter("isdelete");
				if("yes".equals(isdelte))  
				
				request.setAttribute("house_id", house_id);*/
				
				return "provider/houselist";
			}
		 
		 @RequestMapping(value = "/updateImg_pre/{house_id}", method = RequestMethod.GET)
			public String updateImg_pre(@PathVariable("house_id") String house_id, HttpServletRequest request) {
			 request.setAttribute("house_id", house_id);
			 return "provider/updateImg";
		 }
		 
			@RequestMapping(value = "/updateImg", method = RequestMethod.POST)
			public String updateImg(HttpServletRequest request,@RequestParam("multipartfiles") MultipartFile[] multipartfiles
					,@RequestParam("house_id") String house_id) throws IllegalStateException, IOException{
				
				
				
				//E:\\Tomcat ruanjian\\images_house\\   /usr/lib/tomcat/images_house/
				 String savePath = imgpath;
				 
				 String imgType;
					
				 
				 
				 if(multipartfiles != null && multipartfiles.length != 0){
			            if(null != multipartfiles && multipartfiles.length > 0){
			                //遍历并保存文件
			            	houseUtil.deleteImg(house_id,savePath);//传入house_id,图片路径进行删除
			            	iservice.deleteImagebyhouse(house_id);//在数据库里面删除图片相关记录
			            	int i=1;
			            	Images im=null;
			                for(MultipartFile file : multipartfiles){
			                	System.out.println(file.getOriginalFilename());//能够同时打印多张图片
			                	imgType=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
			                   file.transferTo(new File(savePath + house_id+"_0"+i+"."+imgType));
			                   im=new Images(house_id+"_0"+i, house_id, house_id+"_0"+i+"."+imgType);
			                   iservice.addImages(im);
			                	i++;
			                }
			            }
			            
			            String img1_type= multipartfiles[0].getOriginalFilename().substring(multipartfiles[0].getOriginalFilename().lastIndexOf(".")+1);
						
						 hservice.updateHouseImg(house_id, house_id+"_0"+1+"."+img1_type);   
				 }
				//将上传传的图片信息添加到数据库，也就是house里面img属性的初始化，以及images表的insert
 
			House_view h=	 hvservice.findOneHouse_view(house_id);
			List<Images> imageslist = iservice.findAllImages(house_id);
			request.setAttribute("h", h);
			request.setAttribute("imageslist", imageslist);
				return "provider/houseDetail";
				}
			@RequestMapping(value = "/addImg", method = RequestMethod.POST)
			public String addImg(HttpServletRequest request,@RequestParam("multipartfiles") MultipartFile[] multipartfiles
					,@RequestParam("house_id") String house_id) throws IllegalStateException, IOException{
				
				//E:\\Tomcat ruanjian\\images_house\\   /usr/lib/tomcat/images_house/
				 String savePath = imgpath;
				 
				 String imgType;
					
				 
				 
				 if(multipartfiles != null && multipartfiles.length != 0){
			            if(null != multipartfiles && multipartfiles.length > 0){
			                //遍历并保存文件
			            	
			            	int i=1;
			            	Images im=null;
			                for(MultipartFile file : multipartfiles){
			                	System.out.println(file.getOriginalFilename());//能够同时打印多张图片
			                	imgType=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
			                   file.transferTo(new File(savePath + house_id+"_0"+i+"."+imgType));
			                   im=new Images(house_id+"_0"+i, house_id, house_id+"_0"+i+"."+imgType);
			                   iservice.addImages(im);
			                	i++;
			                }
			            }
	
				}
		 
		 
		 //将上传传的图片信息添加到数据库，也就是house里面img属性的初始化，以及images表的insert
		 String img1_type= multipartfiles[0].getOriginalFilename().substring(multipartfiles[0].getOriginalFilename().lastIndexOf(".")+1);
		
		 hservice.updateHouseImg(house_id, house_id+"_0"+1+"."+img1_type);
		 
		 
		 
	House_view h=	 hvservice.findOneHouse_view(house_id);
	List<Images> imageslist = iservice.findAllImages(house_id);
	Location l=lservice.findOneLocation(house_id);
	request.setAttribute("h", h);
	request.setAttribute("l", l);
	request.setAttribute("imageslist", imageslist);
		return "provider/houseDetail";
	}
	
	
			
	
	@RequestMapping(value = "/agreeListmap",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String agreebyprovider(HttpServletRequest request) {
		HttpSession session = request.getSession();
	    p =(Provider) session.getAttribute("user");

		List<Agreement> list = aservice.findby_provider(p.getProvider_id());
	
		/*Gson gson = new Gson();*/
		Gson gson = new GsonBuilder()
		        .setDateFormat("yyyy-MM-dd")
		        .create();
		String HouseJson = gson.toJson(list);
		System.out.println(HouseJson);
		return HouseJson;
	}
	
	
	
	@RequestMapping(value = "/reservelist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String reserve(HttpServletRequest request) {
		HttpSession session = request.getSession();
	   String id =(String) session.getAttribute("id");

		List<Agreement> list = aservice.findby_provider2("已支付",id);
	
		//Gson gson = new Gson();
		Gson gson = new GsonBuilder()
		        .setDateFormat("yyyy-MM-dd")
		        .create();
		String HouseJson = gson.toJson(list);
	//	System.out.println(HouseJson);
		return HouseJson;
	}
	
	
	
	
	
	
	/*@RequestMapping(value = "/addOneAgree", method = RequestMethod.POST)
	public String addOneAgree(HttpServletRequest request,Agreement a){
		HttpSession session = request.getSession();
		p =(Provider) session.getAttribute("user");
		a.setProvider_id(p.getProvider_id());
		a.setStatus("生效");
		aservice.addAgreement(a);
		
		
		return "provider/agreelist";
	}*/
	
	@RequestMapping(value = "/getOneAgree/{agreement_id}",method = RequestMethod.GET)
	public String getOneAgree(@PathVariable("agreement_id") String agreement_id, HttpServletRequest request) {
		Agreement a=aservice.findOneAgreement(agreement_id);
		request.setAttribute("a", a);
		
		Customer c=cservice.findOneCustomer(a.getCustomer_id());
		request.setAttribute("c", c);
		
		
		HttpSession session = request.getSession();
		p =(Provider) session.getAttribute("user");

		List<House> list = hservice.findAllByProvider(p.getProvider_id());
		
		request.setAttribute("hlist", list);
		return "provider/agreeDetail";
		
		
	}
	@RequestMapping(value = "/makeAgree/{agreement_id}", method = RequestMethod.GET)
	public String makeAgree(@PathVariable("agreement_id") String agreement_id, HttpServletRequest request) {
		Agreement a=aservice.findOneAgreement(agreement_id);
		Mess m=new Mess("", a.getCustomer_id(), "合同编号："+agreement_id+",房屋:"+a.getHouse_id()+",预定成功，请您前往合同信息查看");
		
		mservice.addMess(m);
		//aservice.updateAgreeStatus(agreement_id, "生效");
		a.setStatus("生效");
		a.setDescription("押一付一，已经完全付清");
		a.setPaid_rent(a.getFee());//改变已付金额
		//aservice.updateAgreement(a);
		aservice.updateContent(agreement_id, "押一付一，已经完全付清", a.getFee(), "生效");
		hservice.updateHouseStatus(agreement_id,"入住");
		
		return "provider/agreelist";
		
	}

	@RequestMapping(value = "/disAgree/{agreement_id}", method = RequestMethod.GET)
	public String disAgree(@PathVariable("agreement_id") String agreement_id, HttpServletRequest request) {
		Agreement a=aservice.findOneAgreement(agreement_id);
		Mess m=new Mess("",  a.getCustomer_id(),  "合同编号："+agreement_id+",房屋:"+a.getHouse_id()+",预定失败，房东不同意预定，你预定的金额会转会您的账号");
		mservice.addMess(m);
		aservice.updateAgreeStatus(agreement_id, "失效");
		hservice.updateHouseStatus(agreement_id,"空闲");
		
		return "provider/agreelist";
		
	}
	
	
	
	@RequestMapping(value = "/getOneGuest/{customer_id}", method = RequestMethod.GET)
	public String getOneGuest(@PathVariable("customer_id") String customer_id, HttpServletRequest request) {
		Customer c=cservice.findOneCustomer(customer_id);
		request.setAttribute("c", c);
		return "provider/customerDetail";
		
	}

	
	@RequestMapping(value = "/getOneGuest2/{customer_id}", method = RequestMethod.GET)
	@ResponseBody
	public Customer getOneGuest2(@PathVariable("customer_id") String customer_id, HttpServletRequest request) {
		Customer c=cservice.findOneCustomer(customer_id);
		
		return c;
	}
	
	
	
	
	
	
	@RequestMapping(value = "/getid", method = RequestMethod.GET)
	public String getid(HttpServletRequest request,String house_id){
		System.out.println(house_id);
		request.setAttribute("house_id", house_id);
		House h=hservice.findOneHouse(house_id);
		
		request.setAttribute("type", h.getType());
		request.setAttribute("fee", h.getPrice());
		request.setAttribute("paid_rent", h.getPrice()*4);
		return "provider/addAgree";
		
	}
	
	
			
			
	//顾客信息
	@RequestMapping(value = "/customerlist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String cusomerList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		p =(Provider) session.getAttribute("user");

	
		 List<Customer> list = pservice.findAllCustomer(p.getProvider_id());
		Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}
	
	@RequestMapping(value = "/proplist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String propList(HttpServletRequest request) {
	
		HttpSession session = request.getSession();
		p =(Provider) session.getAttribute("user");
		List<Property> list = pservice.findAllProperty(p.getProvider_id());
	
		
		//Gson gson = new Gson();
		Gson gson = new GsonBuilder()
		        .setDateFormat("yyyy-MM-dd hh:mm:ss")
		        .create();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}//proplist
	
	@RequestMapping(value = "/frendlist_p",method = RequestMethod.GET)
	public String freelist_p(HttpServletRequest request) {
		HttpSession session = request.getSession();
		   String id= (String)session.getAttribute("id");
		  List<Customer> clist=cservice.findallFriend(id);
		  request.setAttribute("clist", clist);
		
		return "provider/addnotice";
	} 
	
	@RequestMapping(value = "/updateInfo",method = RequestMethod.POST)
	public String updateInfo(@RequestParam("headImage") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
	
		HttpSession session = request.getSession();
		Provider p2= (Provider)session.getAttribute("user");
		
		String nickname= request.getParameter("nickname");
		String sex= request.getParameter("sex");
		String qq = request.getParameter("qq");
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		System.out.println(nickname);
		p2.setNickname(nickname);
		p2.setSex(sex);
		p2.setQq(qq);
		p2.setMobile(mobile);
		p2.setAddress(address);;
		//request
	String headImage=null;
		if (file.isEmpty()) {
			headImage = p2.getImg();
		} else {
			//houseUtil.deleteImg(p2.getProvider_id(), headpath);
			poiUtil.excelDelete(headpath+p2.getImg());
			String imgName = file.getOriginalFilename();
			System.out.println();
			String imgType = imgName.substring(imgName.lastIndexOf(".")+1);
			System.out.println("ss:"+headImage);
			headImage = p2.getProvider_id()+new SimpleDateFormat("_MMdd_HHmmss").format(new Date())+ "." + imgType;//学号加扩展名的方式命名
			//System.out.println("ss:"+imgType );
			//E:\\Tomcat ruanjian\\head\\
			File newFile = new File(headpath+headImage);//   /usr/lib/tomcat/head/

			file.transferTo(newFile);
			p2.setImg(headImage);
		}
		pservice.updateProvider(p2);
		session.setAttribute("user", p2);
		
		return "provider/info";
	} 

	@RequestMapping(value = "/addInfo",method = RequestMethod.POST)
	public String addInfo(@RequestParam("headImage") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
	//Provider p在前面已经有了定义
		Provider p2=new Provider();
		int num=pservice.findAllProvider().size();
	//	System.out.println("mysqlsixe:"+num);
		String id=IDutil.getID("p00", num+1);
	//	System.out.println(id);
		p2.setProvider_id(id);
	String name= request.getParameter("name");
		String idcard= request.getParameter("idcard");
		String password= request.getParameter("password");
		String nickname= request.getParameter("nickname");
		String sex= request.getParameter("sex");
		String qq = request.getParameter("qq");
		String mobile = request.getParameter("phone");
		String address = request.getParameter("address");
		//System.out.println(nickname);
	p2.setAddress(address);
	p2.setSex(sex);
	p2.setIdcard(idcard);
p2.setNickname(nickname);
	p2.setName(name);
	p2.setPassword(password);
	p2.setMobile(mobile);
	p2.setQq(qq);
		//request
	String headImage=null;
		if (file.isEmpty()) {
			//headImage = p2.getImg();
		} else {
			String imgNmae = file.getOriginalFilename();
			String imgType = imgNmae.substring(imgNmae.lastIndexOf(".")+1);
			headImage =id+ "." + imgType;//学号加扩展名的方式命名
			//E:\\Tomcat ruanjian\\head\\
			File newFile = new File(headpath+headImage);//   /usr/lib/tomcat/head/

			file.transferTo(newFile);
			p2.setImg(headImage);
		}
		pservice.addProvider(p2);;
		
		
		return "login";
	} 
	
	@RequestMapping(value = "/changPass",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String changPass(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String result="";
		String id=(String) session.getAttribute("id");
		String name=(String) session.getAttribute("currentUser");
		if(StringUtil.isEmpty(id)) result="error";
		
		String old=request.getParameter("old");
		String pass=request.getParameter("p1");
	
		Provider p=pservice.check(name,old);
		if(p==null) result="原密码错误";
		else{
			pservice.changPass(id, pass);
			result="修改密码成功";
		}
		
		
		return result;
	}
	
	@RequestMapping(value = "/commentlist/{house_id}",produces = {"text/html;charset=UTF-8;"})
	public String commentlist(@PathVariable("house_id") String house_id, HttpServletRequest request) {
		//String house_id=request.getParameter("house_id");
		List<Comment> list=pservice.findCommentbyhid(house_id);
		request.setAttribute("list", list);
		
		return "provider/commentlist";
	}

	@RequestMapping(value = "/qiuzulist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String qiuzulist(HttpServletRequest request) {
		
	   List<Qiuzu> list=pservice.findAllQiuzu();
		
	   Gson gson = new GsonBuilder()
		        .setDateFormat("yyyy-MM-dd hh:mm:ss")
		        .create();
		String HouseJson = gson.toJson(list);
		System.out.println(HouseJson);
		return HouseJson;
	} 
	
	
	
}
