package com.house.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.house.bean.eo.*;
import com.house.beans.*;
import com.house.service.*;
import com.house.util.IDutil;
import com.house.util.StringUtil;
import com.house.util.poiUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("customer")
public class CustomerController {//  E:\\Tomcat ruanjian\\head\\
	public final String headpath="F:\\bishe_file\\head\\";///usr/lib/tomcat/head/
	Customer c=null;
	
	@Autowired
	private CustomerService cservice;
	
	
	@Autowired
	private ImagesService iservice;
	
	@Autowired
	private HouseService hservice;
	
	@Autowired
	private ProviderService prservice;
	
	
	@Autowired
	private ProviderService pservice;
	
	
	@Autowired
	private SupportService sservice;
	@Autowired
	private LocationService lservice;
	
	@Autowired
	private QiuzuService qservice;
	@Autowired
	private AgreementService aservice;
	@Autowired
	private MessService mservice;
	/*
	 合同 agreeList getOneAgree
	 
	 评论 addcomment:
	 1.逻辑显示与我有关的房屋，只能评论一次，不能评论多次，但是评论list好像没有
	 2.评论现在是可以反复添加的
	 
	  求租 qiuzulist addQiuzu  getOneQiuzu updateQiuzu  QiuzuDeletes  
	  预定消息: messList:房屋同意预定或者不同意预定
	 个人:updateInfo,changPass
	房屋 houselist:cservice.findmyHouse(customer_id);
	
	房东:getOneProvider
	 留言：freelist_p：查询个人好友
	 */
	//我的合同信息
	@RequestMapping(value = "/agreeList",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String agreeList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String customer_id= (String)session.getAttribute("id");

		List<Agreement> list=cservice.findAllAgreement(customer_id);
	
		//Gson gson = new Gson();
		Gson gson = new GsonBuilder()
		        .setDateFormat("yyyy-MM-dd hh:mm:ss")
		        .create();
		String HouseJson = gson.toJson(list);
		System.out.println(HouseJson);
		return HouseJson;
	}
	
	
	@RequestMapping(value = "/getOneAgree/{agreement_id}", method = RequestMethod.GET)
	public String getOneAgree(@RequestParam("agreement_id") String agreement_id, HttpServletRequest request) {
		Agreement a=aservice.findOneAgreement(agreement_id);
		request.setAttribute("a", a);
		
	/*	Customer c=cservice.findOneCustomer(a.getCustomer_id());
		request.setAttribute("c", c);
		
		
		HttpSession session = request.getSession();
		p =(Provider) session.getAttribute("user");*/
Provider p=pservice.findOneProvider(a.getProvider_id());
request.setAttribute("p", p);
		
		return "customer/agreeDetail";
		
		
	}
	
	@RequestMapping(value = "/qiuzulist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String qiuzulist(HttpServletRequest request) {
		HttpSession session = request.getSession();
	   String customer_id= (String)session.getAttribute("id");
	   List<Qiuzu> list=cservice.findAllQiuzu(customer_id);
		
	
	 //  Gson gson = new Gson();
	   Gson gson = new GsonBuilder()
		        .setDateFormat("yyyy-MM-dd hh:mm:ss")
		        .create();
		String HouseJson = gson.toJson(list);
		System.out.println(HouseJson);
		return HouseJson;
	} 
	

	
	//发布求租信息  
	@RequestMapping(value = "/addQiuzu", method = RequestMethod.POST)
	public String addQiuzu(HttpServletRequest request){
		/*int num=qservice.findAllQiuzu().size();
		String qiuzu_id=IDutil.getID("qiu_00", num+1);*/
		HttpSession session = request.getSession();
		   String customer_id= (String)session.getAttribute("id");
		String name=request.getParameter("name");
		String email=request.getParameter("contact");
		String house_type=request.getParameter("house_type");
		String area=request.getParameter("area");
		String price=request.getParameter("price");
		String  description=request.getParameter("description");
		//java.sql.Timestamp	createtime=new Timestamp(new java.util.Date().getTime());
		String address=request.getParameter("address");
		System.out.println(address);
		Qiuzu q=new Qiuzu("", customer_id, name, email, house_type,address, area, price, description, null);
	System.out.println(q.toString());
		qservice.addQiuzu(q);
		
		return "customer/Qiuzulist";
	}
	
	
	//修改求租信息 
	@RequestMapping(value = "/updateQiuzu", method = RequestMethod.POST)
	public String updateQiuzu(HttpServletRequest request){
		
		System.out.println("修改求租信息");
		String qiuzu_id=request.getParameter("qiuzu_id");
		
		HttpSession session = request.getSession();
		   String customer_id= (String)session.getAttribute("id");
		String name=request.getParameter("name");
		String email=request.getParameter("contact");
		String house_type=request.getParameter("house_type");
		String area=request.getParameter("area");
		String price=request.getParameter("price");
		String  description=request.getParameter("description");
		//java.sql.Timestamp	createtime=new Timestamp(new java.util.Date().getTime());
		String address=request.getParameter("address");
		Timestamp	createtime=new Timestamp(new Date().getTime());
		Qiuzu q=new Qiuzu(qiuzu_id, customer_id, name, email, house_type,address, area, price, description, null);
		q.setCreatetime(createtime);

		qservice.updateQiuzu(q);

		return "customer/Qiuzulist";
	}

	//删除自己的求租信息
		@RequestMapping(value = "/getOneQiuzu/{qiuzu_id}", method = RequestMethod.GET)
		public String getOneQiuzu(@RequestParam("qiuzu_id") String qiuzu_id, HttpServletRequest request) {

		Qiuzu q=qservice.findOneQiuzu(qiuzu_id);
		request.setAttribute("q", q);
			return "customer/QiuzuDetail";

		}



	//删除自己的求租信息
	@RequestMapping(value = "/QiuzuDeletes", method = RequestMethod.GET)
	@ResponseBody
	public String deleteOneQiuzu(@RequestParam("idsStr") String qiuzu_ids, HttpServletRequest request) {
	String ids[]=qiuzu_ids.split(",");
		qservice.deleteQiuzus(ids);
		return "success";

	}

/*	@RequestMapping(value = "/commentDeletes", method = RequestMethod.GET)
	@ResponseBody
	public String commentDeletes(@RequestParam("idsStr") String qiuzu_ids,HttpServletRequest request) {
	String ids[]=qiuzu_ids.split(",");
		cservice.deleteComments(ids);
		return "success";

	}*/

	@RequestMapping(value = "/myCommentList",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String agreelist(HttpServletRequest request) {

		HttpSession session = request.getSession();
		   String customer_id= (String)session.getAttribute("id");

		List<Comment> list=cservice.findMyComment(customer_id);

		//Gson gson = new Gson();
		 Gson gson = new GsonBuilder()
			        .setDateFormat("yyyy-MM-dd")
			        .create();
		String aJson = gson.toJson(list);

		return aJson;
	}

	@RequestMapping(value = "/addcomment",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String addcomment(HttpServletRequest request) {
		/*
		 算法：按照customer_id跟house_id查询是否有这样的Comment
		 Comment：有就查询没有就更新评论
		 */
		String result="";
		HttpSession session = request.getSession();
		   String customer_id= (String)session.getAttribute("id");
		   Customer cu= (Customer)session.getAttribute("user");

		String house_id=request.getParameter("house_id");
		String star=request.getParameter("star");
		String description=request.getParameter("description");
		System.out.println("house_id:"+house_id);
		System.out.println("star:"+star);
		System.out.println(cu.getNickname());
		Comment comment=cservice.findOneComment(customer_id, house_id);
		if(comment==null){
			Comment c=new Comment("",house_id,customer_id,cu.getNickname(),description,new Date(),null,star);
			System.out.println(c.toString());
			cservice.addComment(c);
			result="添加评论成功";
		}else{
			cservice.updateComment(comment.getComment_id(), description, star);
			result="修改评论成功";
		}
		
	
		return result;
		
	} 
	@RequestMapping(value = "/commentlist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody//管理员使用的
	public String commentlist(HttpServletRequest request) {
		
	   List<Comment> list=cservice.findAllComment();
	
	   Gson gson = new GsonBuilder()
		        .setDateFormat("yyyy-MM-dd ")
		        .create();
		String Json = gson.toJson(list);
		System.out.println(Json);
		return Json;
	} 
	
	@RequestMapping(value = "/commentDeletes", method = RequestMethod.GET)
	@ResponseBody
	public String commentDeletes(@RequestParam("idsStr") String idsStr, HttpServletRequest request) {
	String ids[]=idsStr.split(",");
		//qservice.deleteQiuzus(ids);
	System.out.println(idsStr);
	//cservice.deleteComments(ids);
		return ids.length+"rows";
		
	}
	
	
	@RequestMapping(value = "/messList",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String messList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String customer_id= (String)session.getAttribute("id");

		List<Mess> list=mservice.findMyMess(customer_id);
	
		//Gson gson = new Gson();
		Gson gson = new GsonBuilder()
		        .setDateFormat("yyyy-MM-dd hh:mm:ss")
		        .create();
		String HouseJson = gson.toJson(list);
		System.out.println(HouseJson);
		return HouseJson;
	}
	
	
	@RequestMapping(value = "/houselist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String houselist(HttpServletRequest request) {
		HttpSession session = request.getSession();
	   String customer_id= (String)session.getAttribute("id");
	   List<House> list=cservice.findmyHouse(customer_id);
		
	
	   Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		System.out.println(HouseJson);
		return HouseJson;
	} 
	
	
	@RequestMapping(value = "/getOneProvider/{provider_id}", method = RequestMethod.GET)
	public String getOneGuest(@RequestParam("provider_id") String provider_id, HttpServletRequest request) {
		Provider p=pservice.findOneProvider(provider_id);
		request.setAttribute("p", p);
				
				return "customer/providerDetail";
		
	}
	//我的求租信息
	
	
	

	
	
	
	
	@RequestMapping(value = "/frendlist_c",method = RequestMethod.GET)
	public String freelist_p(HttpServletRequest request) {
		HttpSession session = request.getSession();
		   String id= (String)session.getAttribute("id");
		  List<Provider> plist=pservice.findallFriend(id);
		  request.setAttribute("plist", plist);
		
		return "customer/addnotice";
	} 
	
	
	
	@RequestMapping(value = "/addInfo",method = RequestMethod.POST)
	public String addInfo(@RequestParam("headImage") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
	
		
		
		String name= request.getParameter("name");
		String nickname= request.getParameter("nickname");
		
		String sex= request.getParameter("sex");
		String qq = request.getParameter("qq");
		String mobile = request.getParameter("phone");
		String job = request.getParameter("job");
		String idcard= request.getParameter("idcard");
		String password= request.getParameter("password");
		String address = request.getParameter("address");
		int num =cservice.findAllCustomer().size();
		String id=IDutil.getID("c00", num+1);
		Customer c2= new Customer(id, idcard, name, nickname, "", password, sex, mobile, qq, job, address,null);//img  createtime
	
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

		
			c2.setImg(headImage);
		}
		cservice.addCustomer(c2);

		return "login";
	} 
	
	
	@RequestMapping(value = "/updateInfo",method = RequestMethod.POST)
	public String updateInfo(@RequestParam("headImage") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
	
		HttpSession session = request.getSession();
		Customer c2= (Customer)session.getAttribute("user");
		
		String nickname= request.getParameter("nickname");
		String sex= request.getParameter("sex");
		String qq = request.getParameter("qq");
		String mobile = request.getParameter("mobile");
		String job = request.getParameter("job");
		
		c2.setNickname(nickname);
		c2.setSex(sex);
		c2.setQq(qq);
		c2.setMobile(mobile);
		c2.setJob(job);
		//request
	String headImage=null;
		if (file.isEmpty()) {
			System.out.println("等于空");
			headImage = c2.getImg();
		} else {
			//houseUtil.deleteImg(c2.getCustomer_id(), headpath);
			poiUtil.excelDelete(headpath+c2.getImg());
			System.out.println(headpath+c2.getImg());
			String imgNmae = file.getOriginalFilename();
			String imgType = imgNmae.substring(imgNmae.lastIndexOf(".")+1);
			//headImage = c2.getCustomer_id() + "." + imgType;//学号加扩展名的方式命名
			headImage = c2.getCustomer_id() +new SimpleDateFormat("_MMdd_HHmmss").format(new Date())+ "." + imgType;//学号加扩展名的方式命名
			File newFile = new File(headpath+headImage);//   /usr/lib/tomcat/head/  E:\\Tomcat ruanjian\\head\\

			file.transferTo(newFile);
			c2.setImg(headImage);
		}
		cservice.updateCustomer(c2);
		session.setAttribute("user", c2);
		return "customer/info";
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
		Customer c=cservice.check(name,old);
		if(c==null) result="原密码错误";
		else{
			cservice.changPass(id, old);
			result="修改密码成功";
		}
		
		
		return result;
	}

	
}
