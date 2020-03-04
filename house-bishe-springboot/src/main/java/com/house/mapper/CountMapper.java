package com.house.mapper;


import com.house.bean.entity.Product;
import com.house.bean.entity.Product2;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface CountMapper {



	@Select("select COUNT(*) from House_view where  address like CONCAT('',#{city},'%')")//limit 20
	public int cityCount(@Param("city") String city);
	
	@Select("select COUNT(*) from House_view where  address like CONCAT('%',#{qu},'%')")//limit 20
	public int quCount(@Param("qu") String qu);
	
	@Select("select COUNT(*) from customer where  address like CONCAT('',#{qu},'%')")//limit 20
	public int customerCount(@Param("qu") String qu);
	
	@Select("select avg(price) from house where  address like CONCAT('',#{city},'%') and area=#{area} "  )//limit 20
	public int priceavg(@Param("city") String city, @Param("area") String area);//查询某个城市的某个面积的房价
	
	
	@Select("select  LEFT(address,3) name,count(1) value  from house  GROUP BY LEFT(address,3) "  )
	public  List<Product2> housecountnum1();
	
	@Select("select  right(address,3) name,count(1) value  from house where address like CONCAT('',#{city},'%')  GROUP BY address "  )
	public  List<Product2> cityhousecount2(@Param("city") String city);
	
	@Select("select  right(address,3) name,count(1) num  from house where address like CONCAT('',#{city},'%')  GROUP BY address "  )
	public  List<Product> cityhousecount(@Param("city") String city);
	
	
	@Select("select concat( area, '' , '平米' ) name,count(1) num   from house GROUP BY area "  )
	public  List<Product> Areacount(@Param("city") String city);
	
	
	@Select("select concat( area, '' , '平米' )name,CONVERT(avg(price),SIGNED)   num  from house  GROUP BY area"  )
	public  List<Product> Areaprice(@Param("city") String city);
}
