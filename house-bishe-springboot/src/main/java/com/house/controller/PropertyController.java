package com.house.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.house.bean.eo.House;
import com.house.bean.eo.Property;
import com.house.service.AgreementService;
import com.house.service.HouseService;
import com.house.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("property")
public class PropertyController {
//添加物业信息之前，首先得查询所有房子，否者无妨查看房子的物业信息
	/*
	 1.对于添加页面:首先 
	 
	addProperty_index.jsp：含excel上传加房屋列表添加,excel上传(ExcelCOntroller)
	addproperty.jsp:
	 */

	
	@Autowired
	private HouseService hservice;
	
	@Autowired
	private PropertyService prservice;
	
	@Autowired
	private AgreementService aservice;
	
	@RequestMapping(value = "/HouseListmap",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String houseList() {
	
		List<House> list = hservice.findAllHouse();
	
		//Gson gson = new Gson();
		 Gson gson = new GsonBuilder()
			        .setDateFormat("yyyy-MM-dd")
			        .create();
		String HouseJson = gson.toJson(list);
		
		return HouseJson;
	}
	
	@RequestMapping(value = "/propertylist",produces = {"text/html;charset=UTF-8;"})
	@ResponseBody
	public String propertyList() {
		
		List<Property> list = prservice.findAllProperty();
	
		/*Gson gson = new Gson();*/
		Gson gson = new GsonBuilder()
		        .setDateFormat("yyyy-MM-dd hh:mm:ss")
		        .create();
		String propertyJson = gson.toJson(list);
		
		return propertyJson;
	}
	
	
	
	@RequestMapping(value="/gethouse_id/{house_id}",method= RequestMethod.GET)
	public String gethouse_id(@PathVariable("house_id") String house_id, HttpServletRequest request) {
/*
1.现在出现一个问题：当房子状态为入住是，怎么获取入住id,我觉得应该直接放到house表，反正也就只有一个：就是新最多三个
2.还有就是在合同表里面找

*/
		
request.setAttribute("house_id", house_id);
request.setAttribute("customer_id", "");
		return "admin/addProperty";
		
	}
	
	
	@RequestMapping(value="/addproperty",method= RequestMethod.POST)
	public String addproperty( HttpServletRequest request) throws ParseException {
		String house_id=request.getParameter("house_id");
		String pro_fee=request.getParameter("pro_fee");
		String water_rent=request.getParameter("water_rent");
		String sanitary_fee=request.getParameter("sanitary_fee");
		String elevator=request.getParameter("elevator");		
		String power=request.getParameter("power");
		String status=request.getParameter("status");
		String deadline=request.getParameter("deadline");
		Date dead=new SimpleDateFormat("yyyy-MM-dd").parse(deadline);
		Property pr1=new Property();
		pr1.setHouse_id(house_id);
		pr1.setStatus(status);
		pr1.setPro_fee(Double.parseDouble(pro_fee));
		pr1.setSanitary_fee(Double.parseDouble(sanitary_fee));
		pr1.setPower(Double.parseDouble(power));
		pr1.setWater_rent(Double.parseDouble(water_rent));
		pr1.setElevator(Double.parseDouble(elevator));
		pr1.setTotal(pr1.getPro_fee()+pr1.getElevator()+pr1.getSanitary_fee()+pr1.getWater_rent()+pr1.getPower());
		pr1.setDeadline(dead);
		prservice.addProperty(pr1);
		return "admin/Propertylist";
	}
	
	@RequestMapping(value="/updateproperty",method= RequestMethod.POST)
	public String updateproperty(HttpServletRequest request) throws ParseException {
		String property_id=request.getParameter("property_id");
		String house_id=request.getParameter("house_id");
		String pro_fee=request.getParameter("pro_fee");
		String water_rent=request.getParameter("water_rent");
		String sanitary_fee=request.getParameter("sanitary_fee");
		String elevator=request.getParameter("elevator");		
		String power=request.getParameter("power");
		String status=request.getParameter("status");
		String deadline=request.getParameter("deadline");
		Date dead=new SimpleDateFormat("yyyy-MM-dd").parse(deadline);
		
		
		Property p=new Property();
		p.setProperty_id(property_id);
		p.setHouse_id(house_id);
		p.setStatus(status);
		p.setPro_fee(Double.parseDouble(pro_fee));
		p.setSanitary_fee(Double.parseDouble(sanitary_fee));
		p.setPower(Double.parseDouble(power));
		p.setWater_rent(Double.parseDouble(water_rent));
		p.setElevator(Double.parseDouble(elevator));
		p.setTotal(p.getPro_fee()+p.getElevator()+p.getSanitary_fee()+p.getWater_rent()+p.getPower());
		
	p.setTotal(p.getPro_fee()+p.getElevator()+p.getSanitary_fee()+p.getWater_rent()+p.getPower());
	

		prservice.updateProperty(p);
		return "admin/Propertylist";
	}
	

	
	@RequestMapping(value="/getOneproperty/{property_id}",method= RequestMethod.GET)
	public String  getOneproperty(@PathVariable("property_id") String property_id, HttpServletRequest request) {


		System.out.println(property_id);
		Property p=prservice.findOneProperty(property_id);	

		Gson gson = new Gson();
		String HouseJson = gson.toJson(p);
		System.out.println(HouseJson);
		request.setAttribute("p",p);
		 String str= new SimpleDateFormat("yyyy-MM-dd").format(p.getDeadline());
		 request.setAttribute("str", str);
		//return HouseJson;
		return "admin/propertyDetail";
		
	}
	@RequestMapping(value="/getOneproperty_p/{property_id}",method= RequestMethod.GET)
	public String  getOneproperty_p(@PathVariable("property_id") String property_id, HttpServletRequest request) {


		System.out.println(property_id);
		Property p=prservice.findOneProperty(property_id);	

		Gson gson = new Gson();
		String HouseJson = gson.toJson(p);
		System.out.println(HouseJson);
		request.setAttribute("p",p);
		 String str= new SimpleDateFormat("yyyy-MM-dd").format(p.getDeadline());
		 request.setAttribute("str", str);
		//return HouseJson;
		return "provider/propertyDetail";
		
	}

	@RequestMapping(value="propertyDeletes")
	@ResponseBody
	public String  propertyDeletes(HttpServletRequest request) {

String idsStr=request.getParameter("property_idsStr");
String ids[]=idsStr.split(",");
prservice.deletePropertys(ids);
		return "success";
		
	}
	
}
