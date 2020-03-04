package com.house.controller.echarts;

import com.google.gson.Gson;
import com.house.service.CountService;
import com.house2.beans.Product;
import com.house2.beans.Product2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/*
select  address,count(1) num  from house where address LIKE '厦门%'
GROUP BY address


select  LEFT(address,3),count(1) num  
from house 
GROUP BY LEFT(address,3)


select area,avg(price) price
from house 
 where address LIKE '厦门%'
GROUP BY area




select area,avg(price) price
from house 

GROUP BY area

select area,avg(price) price
from house 
GROUP BY area



select paytype,count(1) num
from house 
GROUP BY paytype


select type,count(1) num
from house 
GROUP BY type
 */
@Controller
public class EchartController2 {

	
		@Autowired
		private CountService countservice;
	//桂林市房屋按区分布饼图
		
		@RequestMapping(value = "/gui_cityqu_pie",produces = {"application/json;charset=UTF-8;"})
		@ResponseBody
		public List<Product2>  pie() {
			
			 List<Product2> list =  countservice.cityhousecount2("福州");
		        Gson gson = new Gson();
				String HouseJson = gson.toJson(list);
				
				//return HouseJson;
				return list;
		}
		
		
		
		
		@RequestMapping(value = "/gui_cityqu_bar",produces = {"application/json;charset=UTF-8;"})
		@ResponseBody
		public List<Product>  houseList() {
			
			 //List<Product> list =  countservice.housecountnum1();
			
			List<Product> list =  countservice.cityhousecount("福州");
		      
		        Gson gson = new Gson();
				String HouseJson = gson.toJson(list);
				
				//return HouseJson;
				return list;
		}
		
		
		
	
		
		
		@RequestMapping(value = "/liu_huan",produces = {"application/json;charset=UTF-8;"})
		@ResponseBody
		public List<Product2>  liu_custqu_pie() {
			
			List<Product2> list =  countservice.cityhousecount2("厦门");
			
		      
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
		}
		
		@RequestMapping(value = "/nan_cityqu_pie",produces = {"application/json;charset=UTF-8;"})
		@ResponseBody
		public List<Product2>  nan_cityqu_pie() {
			
      List<Product2> list =  countservice.housecountnum1();
                    			
			//List<Product> list =  countservice.cityhousecount("福州");
		      
		        Gson gson = new Gson();
				String HouseJson = gson.toJson(list);
				
				//return HouseJson;
				return list;
		}
		@RequestMapping(value = "/nan_cityqu_bar",produces = {"application/json;charset=UTF-8;"})
		@ResponseBody
		public List<Product>  nan_cityqu_bar() {
			
			 List<Product> list =  countservice.Areacount("福建");
				
		      
		        Gson gson = new Gson();
				String HouseJson = gson.toJson(list);
				
				//return HouseJson;
				return list;
		}
		
		@RequestMapping(value = "/liu_cityqu_bar",produces = {"application/json;charset=UTF-8;"})
		@ResponseBody
		public List<Product>  liu_cityqu_bar() {
			
			 List<Product> list =  countservice.cityhousecount("厦门");
				
		      
		        Gson gson = new Gson();
				String HouseJson = gson.toJson(list);
				
				//return HouseJson;
				return list;
		}
		
		/*
    <!-- <tr>
    <td><div id="gui_custqu_pie" style="width: 600px;height:400px;"></div></td>
   <td>  <div id="liu_custqu_pie" style="width: 600px;height:400px;"></div></td>
    <td>  <div id="nan_custqu_pie" style="width: 600px;height:400px;"></div></td>
    </tr> -->
    
*/
		
		
		@RequestMapping(value = "/area_price",produces = {"application/json;charset=UTF-8;"})
		@ResponseBody
		public List<Product>  area_price() {
			
			 List<Product> list =  countservice.Areaprice("福建");
				
		      
		        Gson gson = new Gson();
				String HouseJson = gson.toJson(list);
				
				//return HouseJson;
				return list;
		}
}
