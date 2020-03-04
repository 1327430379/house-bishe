package com.house.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.house.bean.eo.*;
import com.house.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("admin")
public class AdminController {
	public String path="";
	@Autowired
	private ProviderService prservice;

	
	@Autowired
	private ImagesService iservice;
	
	@Autowired
	private LocationService lservice;
	
	@Autowired
	private CustomerService cservice;
	
	@Autowired
	private AgreementService aservice;
	
	
	@Autowired
	private HouseService hservice;
	
	@Autowired
	private QiuzuService qservice;
	
	@Autowired
	private SupportService sservice;
	
	
	@Autowired
	private StaffService stservice;
	/*
	 房屋  houseList getOneHouse
	 合同  agreelist AgreeDeletes getOneAgree
	 求租 qiuzulist QiuzuDeletes
	 员工 stafflist staffDeletes  getOneStaff addStaff
	 房东 providerlist providerDeletes getOneProvider
	 房客 customerlist custDeletes getOneGuest
	 物业 :在PropertyController,ExcelController

houseCheckList  houseagree houseDisagree
	 */

	@RequestMapping(value = "/houseCheckList",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String houseCheckList() {
		System.out.println("调用list");
		List<House> list = hservice.findhouseBystatus("待审核");
	
		Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}
	
	@RequestMapping(value="/houseagree/{house_id}",method= RequestMethod.GET,produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String houseagree(@PathVariable("house_id") String house_id, HttpServletRequest request) {
		hservice.updateHouseStatus2(house_id, "空闲");
		return "审核通过";
	}
	@RequestMapping(value="/houseDisagree/{house_id}",method= RequestMethod.GET,produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String houseDisagree(@PathVariable("house_id") String house_id, HttpServletRequest request) {
		hservice.updateHouseStatus2(house_id, "审核未过");
		return "审核未过";
	}
	
	
	@RequestMapping(value = "/HouseList",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String houseList() {
		System.out.println("调用list");
		List<House> list = hservice.findAllHouse();
	
		Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}
	
	
	@RequestMapping(value="/getOneHouse/{house_id}",method= RequestMethod.GET)
	public String getOneHouse(@PathVariable("house_id") String house_id, HttpServletRequest request) {
		
		House h=hservice.findOneHouse(house_id);
		Supporting s=sservice.findOneSupporting(house_id);

		Provider p=prservice.findOneProvider(h.getProvider_id());
	   Location l=lservice.findOneLocation(house_id);
	   List<Images> imageslist = iservice.findAllImages(house_id);
	   
		request.setAttribute("h", h);
		request.setAttribute("s", s);
		request.setAttribute("p", p);
		request.setAttribute("l", l);
		request.setAttribute("imageslist", imageslist);

	
		return "admin/houseDetail";
		
	}
	
	@RequestMapping(value = "/agreelist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String agreelist(HttpServletRequest request) {
		

		List<Agreement> list=aservice.findAllAgreement();
	
		//Gson gson = new Gson();
		 Gson gson = new GsonBuilder()
			        .setDateFormat("yyyy-MM-dd")
			        .create();
		String aJson = gson.toJson(list);
		
		return aJson;
	}
	@RequestMapping(value = "/agreeDeletes", method = RequestMethod.GET)
	@ResponseBody
	public String AgreeDeletes(@RequestParam("idsStr") String idsStr, HttpServletRequest request) {
	String ids[]=idsStr.split(",");
		//qservice.deleteQiuzus(ids);
	System.out.println(idsStr);
		return ids.length+"rows";
		
	}
	
	@RequestMapping(value = "/getOneAgree/{agreement_id}", method = RequestMethod.GET)
	public String getOneAgree(@RequestParam("agreement_id") String agreement_id, HttpServletRequest request) {
		Agreement a=aservice.findOneAgreement(agreement_id);
		
		request.setAttribute("a", a);
		return "admin/agreeDetail";
		
		
	}
	
	@RequestMapping(value = "/updateAgree", method = RequestMethod.POST)
	public String updateAgree(HttpServletRequest request) throws ParseException {
	String agreement_id=request.getParameter("agreement_id");
		//String provider_id=request.getParameter("provider_id");
		//String customer_id=request.getParameter("customer_id");
		//String house_id=request.getParameter("house_id");
		String description=request.getParameter("description");
		String fee=request.getParameter("fee");
		String paid_rent=request.getParameter("paid_rent");
		String status=request.getParameter("status");
		String starttime=request.getParameter("starttime");
		 Calendar calendar = Calendar.getInstance();
    Date date=new SimpleDateFormat("yyyy-MM-dd").parse(starttime);
		calendar.setTime(date);

		calendar.add(Calendar.MONTH, 2);
		//a2.setDeadline(new java.sql.Date(calendar.getTime().getTime()));
	
		
		
		Agreement a2=aservice.findOneAgreement(agreement_id);
		a2.setDeadline(new java.sql.Date(calendar.getTime().getTime()));
		a2.setStarttime(new java.sql.Date(date.getTime()));
		a2.setDescription(description);
		a2.setStatus(status);
		a2.setPaid_rent(paid_rent);
		a2.setFee(fee);
		aservice.updateAgreement(a2);
		return "admin/agreelist";
		
		
	}
	
	
	@RequestMapping(value = "/qiuzulist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String qiuzulistr(HttpServletRequest request) {
		
	   List<Qiuzu> list=qservice.findAllQiuzu();
		
	
	   Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		System.out.println(HouseJson);
		return HouseJson;
	} 
	
	
	@RequestMapping(value = "/QiuzuDeletes", method = RequestMethod.GET)
	public String deleteOneQiuzu(@RequestParam("qiuzu_idsStr") String qiuzu_ids, HttpServletRequest request) {
	String ids[]=qiuzu_ids.split(",");
		qservice.deleteQiuzus(ids);
		return "customer/qiuzulist";
		
	}
	
	
	//
	@RequestMapping(value = "/stafflist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String staffList() {
		System.out.println("调用list");
		List<Staff> list =stservice.findAllStaff();
	
		Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}
	@RequestMapping(value = "/staffDeletes", method = RequestMethod.GET)
	@ResponseBody
	public String staffDeletes(@RequestParam("idsStr") String idsStr, HttpServletRequest request) {
	String ids[]=idsStr.split(",");
		//qservice.deleteQiuzus(ids);
	stservice.deleteStaffs(ids);
	System.out.println(idsStr);
		return ids.length+"rows";
		
	}
	
	
	@RequestMapping(value = "/getOneStaff/{staff_id}", method = RequestMethod.GET)
	public String getOneStaff(@PathVariable("staff_id") String staff_id, HttpServletRequest request) {
		System.out.println("stafDetail");
		Staff s=stservice.findOneStaff(staff_id);
		request.setAttribute("s", s);
		return "admin/staffDetail";
		
		
	}
	@RequestMapping(value = "/addStaff", method = RequestMethod.POST)
	public String addStaff(Staff a,HttpServletRequest request) {
		//Staff a,
		stservice.addStaff(a);
		//System.out.println("调用");
		return "admin/stafflist";
		
		
	}
	
	@RequestMapping(value = "/updateStaff", method = RequestMethod.POST)
	public String updateStaff(Staff a,HttpServletRequest request) {
		//Staff a,
		stservice.updateStaff(a);
		/*String staff_id=request.getParameter("staf_id");
		String name=request.getParameter("name");
		String position=request.getParameter("position");
		String department=request.getParameter("department");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		String service=request.getParameter("service");
		String description=request.getParameter("mobile");
		Staff s=new Staff(staff_id, name, position, department, mobile, email, service, description);*/
		
		//System.out.println("调用");
		return "admin/stafflist";
		
		
	}
	
	
	@RequestMapping(value = "/providerlist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String providerList(HttpServletRequest request) {
		

		List<Provider> list=prservice.findAllProvider();
	
		Gson gson = new Gson();
		String providerJson = gson.toJson(list);
		
		return providerJson;
	}
	@RequestMapping(value = "/providerDeletes", method = RequestMethod.GET)
	@ResponseBody
	public String providerDeletes(@RequestParam("idsStr") String idsStr, HttpServletRequest request) {
	String ids[]=idsStr.split(",");
	/*for (String id : ids) {
		prservice.findAllHouse(id);
	}
	*/
		
	//prservice.deleteProviders(ids);
	//hservice.deletemyHouses(provider_id);//删除房屋以及其他相关
	System.out.println(idsStr);
		return ids.length+"rows";
		
	}
	

	@RequestMapping(value = "/getOneProvider/{provider_id}", method = RequestMethod.GET)
	public String getOneProvider(@RequestParam("provider_id") String provider_id, HttpServletRequest request) {
		
		Provider p=prservice.findOneProvider(provider_id);
		request.setAttribute("p", p);
		return "admin/providerDetail";
		
		
	}
	
	
	@RequestMapping(value = "/customerlist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String customerList(HttpServletRequest request) {
		

		List<Customer> list=cservice.findAllCustomer();
	
		Gson gson = new Gson();
		String customerJson = gson.toJson(list);
		
		return customerJson;
	}
	
	
	
	
	
	@RequestMapping(value = "/custDeletes", method = RequestMethod.GET)
	@ResponseBody
	public String CustDeletes(@RequestParam("idsStr") String idsStr, HttpServletRequest request) {
	String ids[]=idsStr.split(",");
		//qservice.deleteQiuzus(ids);
	//cservice.deleteCustomers(ids);
	System.out.println(idsStr);
		return ids.length+"rows";
		
	}
	
	
	@RequestMapping(value = "/getOneGuest/{customer_id}", method = RequestMethod.GET)
	public String getOneGuest(@RequestParam("customer_id") String customer_id, HttpServletRequest request) {
		Customer c=cservice.findOneCustomer(customer_id);
	
		request.setAttribute("c", c);
		return "admin/customerDetail";
		
		
	}
	
}
