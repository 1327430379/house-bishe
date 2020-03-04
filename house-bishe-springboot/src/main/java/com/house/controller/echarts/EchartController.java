package com.house.controller.echarts;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

;

@Controller
public class EchartController {
	@Autowired
	private CountService countservice;
	

	
	
	//桂林市房屋按区分布柱状图
	@RequestMapping(value = "/gui_cityqu_bar2",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public List<Product>  houseList() {
		
		 List<Product> list = new ArrayList<Product>();
         
	        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合
		 list.add(new Product("七星区", countservice.QuCount("桂林市七星区")));
	        list.add(new Product("秀峰区", countservice.QuCount("桂林市秀峰区")));
	        list.add(new Product("叠彩区", countservice.QuCount("桂林市叠彩区")));
	        list.add(new Product("象山区", 9));
	        list.add(new Product("雁山区", 2));
	        list.add(new Product("灵川县", 4));
		
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
	}
	
	
	//南宁市房屋按区分布柱状图
	@RequestMapping(value = "/nan_cityqu_bar2",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public List<Product>  nan_cityqu_bar() {
		
		 List<Product> list = new ArrayList<Product>();
         
	        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合
		 list.add(new Product("青秀区", 7));
	        list.add(new Product("良庆区",5));
	        list.add(new Product("西乡塘区",8));
	        list.add(new Product("兴宁区",8));
	        list.add(new Product("邕宁区", 2));
	        list.add(new Product("江南区", 1));
		
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
	}
	
	
	//柳州市房屋按区分布柱状图
	@RequestMapping(value = "/liu_cityqu_bar2",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public List<Product>  liu_cityqu_bar() {
		
		 List<Product> list = new ArrayList<Product>();
         
	        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合
		   list.add(new Product("柳南区", 17));
	        list.add(new Product("鱼峰区",15));
	        list.add(new Product("柳北区",8));
	        list.add(new Product("柳江区",11));
	        list.add(new Product("城中区", 6));
		
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
	}
	
	
	//桂林市房屋按区分布饼图
	@RequestMapping(value = "/gui_cityqu_pie2",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public List<Product2>  pie() {
		
		 List<Product2> list = new ArrayList<Product2>();
		
	        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合
	        list.add(new Product2("七星区", countservice.customerCount("桂林市七星区")));
	        list.add(new Product2("秀峰区", 15));
	        list.add(new Product2("叠彩区", 10));
	        list.add(new Product2("象山区", 9));
	        list.add(new Product2("雁山区", 2));
	        list.add(new Product2("灵川县", 4));
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
	}
	
	//桂林市房客按区分布饼图
	@RequestMapping(value = "/gui_custqu_pie",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public List<Product2>  gui_custqu_pie() {
		
		 List<Product2> list = new ArrayList<Product2>();
		
	        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合
	        list.add(new Product2("七星区", 25));
	        list.add(new Product2("秀峰区", 35));
	        list.add(new Product2("叠彩区",  21));
	        list.add(new Product2("象山区", 31));
	        list.add(new Product2("雁山区", 15));
	        list.add(new Product2("灵川县", 9));
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
	}
	
	//南宁市房客按区分布饼图
	@RequestMapping(value = "/nan_custqu_pie",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public List<Product2>  nan_custqu_pie() {
		
		 List<Product2> list = new ArrayList<Product2>();
		
	        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合
	        list.add(new Product2("青秀区", 25));
	        list.add(new Product2("西乡塘区", 35));
	        list.add(new Product2("兴宁区",  21));
	        list.add(new Product2("良庆区", 31));
	        list.add(new Product2("邕宁区", 15));
	        list.add(new Product2("江南区", 9));
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
	}
	
	
	//柳州市房客按区分布饼图
	@RequestMapping(value = "/liu_custqu_pie2",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public List<Product2>  liu_custqu_pie() {
		
		 List<Product2> list = new ArrayList<Product2>();
		
	        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合
	        list.add(new Product2("柳北区", 25));
	        list.add(new Product2("柳南区", 35));
	        list.add(new Product2("鱼峰区",  21));
	        list.add(new Product2("柳江区", 31));
	       
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
	}
	
	//南宁市房客按区分布饼图
	@RequestMapping(value = "/nan_cityqu_pie2",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public List<Product2>  nan_cityqu_pie() {
		
		 List<Product2> list = new ArrayList<Product2>();
		
	        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合
	      
	        list.add(new Product2("青秀区", 7));
	        list.add(new Product2("良庆区",5));
	        list.add(new Product2("西乡塘区",8));
	        list.add(new Product2("兴宁区",8));
	        list.add(new Product2("邕宁区", 2));
	        list.add(new Product2("江南区", 1));
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
	}
	//柳州市房客按区分布饼图
	
	@RequestMapping(value = "/liu_huan2",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public List<Product2>  liu_huan() {
		
		 List<Product2> list = new ArrayList<Product2>();
		
	        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合
	      
	        list.add(new Product2("柳南区", 17));
	        list.add(new Product2("鱼峰区",15));
	        list.add(new Product2("柳北区",8));
	        list.add(new Product2("柳江区",11));
	        list.add(new Product2("城中区", 6));
	      
	        Gson gson = new Gson();
			String HouseJson = gson.toJson(list);
			
			//return HouseJson;
			return list;
	}
	
	//价格面积趋势,使用层积图的原因:房价相近，线会重叠在一起，不好分辨
	@RequestMapping(value = "/line_2",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public String  line() {
		
		/*
		 select LEFT(address,3),concat( area, '' , '平米' )name,CONVERT(avg(price),SIGNED)   num  from house   
		   GROUP BY LEFT(address,3),area
		 */
		
		
		 List<Line> list = new ArrayList<Line>();
		 int d1[]={288,250,348,420,584,720,933,883,1049};//3,4,5, 6,7,8,9
		 int d2[]={285,250,353,420,586,721,944,883,1028};
		 int d3[]={297,250,346,420,533,668,975,883,1040};
		 int d4[]={285,250,347,420,580,711,933,883,1040};
		list.add(new Line("厦门", "line", "价格", d1));
		list.add(new Line("福州", "line", "价格", d2));
		list.add(new Line("泉州", "line", "价格", d3)); 
		list.add(new Line("漳州", "line", "价格", d4));
		Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		System.out.println(HouseJson);
			return HouseJson;
			//return list;
	}
	
	//网站访问量
	@RequestMapping(value = "/line_4",produces = {"application/json;charset=UTF-8;"})
	@ResponseBody
	public String  line4() {
		
		 List<Line3> list = new ArrayList<Line3>();
		 int d1[]={6200, 9320, 10100, 12340, 19000, 23000};//, 210
		 int d2[]={13200, 18820, 19100, 23400, 29000, 33000};//, 310
		 int d3[]={16500, 22320, 24500, 28000, 29000, 38000};//, 410
		 int d4[]={20000, 22320, 28000, 29000, 39000, 48000};//, 320
		list.add(new Line3("2015", "line", "总量", d1,new AreaStyle(new Normal(true,""))));
		list.add(new Line3("2016", "line", "总量", d2,new AreaStyle(new Normal(true,""))));
		list.add(new Line3("2017", "line", "总量", d3,new AreaStyle(new Normal(true,"")))); 
		list.add(new Line3("2018", "line", "总量", d4,new AreaStyle(new Normal(true,""))));
		Gson gson = new Gson();
		String HouseJson = gson.toJson(list);
		System.out.println(HouseJson);
			return HouseJson;
			//return list;
	}
	
	
	
}
