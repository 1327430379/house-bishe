package com.house.controller;

import com.house.bean.eo.Agreement;
import com.house.bean.eo.Customer;
import com.house.bean.eo.House;
import com.house.service.AgreementService;
import com.house.service.HouseService;
import com.house.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


@Controller
@RequestMapping("pay")
public class PayController {
	@Autowired
	private HouseService hservice;
	
	@Autowired
	private AgreementService aservice;
	
	@RequestMapping(value="/gethouse",method= RequestMethod.POST)
	public String getOneHouse(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		//判断是否登录
	    String id=(String) session.getAttribute("id");
	    if(StringUtil.isEmpty(id)) return "login";
		
	     Calendar now = Calendar.getInstance();  
	    
		
	     //获取提交信息
	     String customer_id=request.getParameter("customer_id");
	     String house_id=request.getParameter("house_id");
	     String description=request.getParameter("description");
	     String starttime=request.getParameter("starttime");
      System.out.println(customer_id+house_id+description+starttime);
		
		
		
	Date d=new Date();
	String t=String.valueOf(now.get(Calendar.YEAR))+String.valueOf(now.get(Calendar.MONTH)+1)
	+String.valueOf(now.get(Calendar.DAY_OF_MONTH)+1)+String.valueOf(now.get(Calendar.HOUR_OF_DAY))
	+String.valueOf(now.get(Calendar.MINUTE))+String.valueOf(now.get(Calendar.SECOND))
	;

	
		
		//java.sql.Timestamp t=new Timestamp(new Date().getTime());
		
		
		session.setAttribute("hid", house_id);
		session.setAttribute("starttime", starttime);
		String WIDout_trade_no=t;//商户订单号 ：
		System.out.println(WIDout_trade_no);
		String WIDsubject=house_id;//订单名称
		
		String WIDtotal_amount="200";//订单价格
		String WIDbody="商品描述";//商品描述
		request.setAttribute("WIDout_trade_no", WIDout_trade_no);//WIDout_trade_no
		request.setAttribute("WIDsubject",WIDsubject);
		request.setAttribute("WIDtotal_amount", WIDtotal_amount);
		request.setAttribute("WIDbody", WIDbody);
		
		
		return "pay";
		
	}
	
	
	//只要支付成功才会调用它
	@RequestMapping(value="/addAgree",method= RequestMethod.GET)
	public String addAgree(HttpServletRequest request) throws ParseException {
		HttpSession session = request.getSession();
	    String hid=(String) session.getAttribute("hid");
	   Customer c=(Customer) session.getAttribute("user");//
	   //java.sql.Date starttime=(java.sql.Date) session.getAttribute("starttime");
	   String start=(String) session.getAttribute("starttime");
	   House h=hservice.findOneHouse(hid);
	   Agreement a=new Agreement();
	   
	   a.setProvider_id(h.getProvider_id());
	   a.setCustomer_id(c.getCustomer_id());
	   a.setHouse_id(hid);
	   a.setDescription(h.getPaytype()+",已支付定金");
	   float fee = 0;
	   //应该在House 里面添加一个属性，就是paytype:
	 //  a.setFee();
	   int m=0;
	   if("押一付一".equals(h.getPaytype())){fee=h.getPrice()*2;m=2;}
	   else if("无押金".equals(h.getPaytype())){fee=h.getPrice();m=1;}
	   else if("押一付二".equals(h.getPaytype())){fee=h.getPrice()*3;m=3;}
	   else if("押一付三".equals(h.getPaytype())){fee=h.getPrice()*4;m=4;}
	   a.setPaid_rent("200");
	   a.setFee(String.valueOf(fee));
	   a.setStatus("已支付");//支付成功，房东收到信息，然后房东确认后，状态改为生效
	   //a.setCreatime(new java.sql.Date(new java.util.Date().getTime()));
	   
	   
	   
	   
	   Calendar calendar = Calendar.getInstance();
    Date date=new SimpleDateFormat("yyyy-MM-dd").parse(start);
		calendar.setTime(date);

		calendar.add(Calendar.MONTH, m);
		a.setDeadline(new java.sql.Date(calendar.getTime().getTime()));
		a.setStarttime(new java.sql.Date(date.getTime()));
		aservice.addAgreement(a);
		
		return "customer/main";
	}
}
