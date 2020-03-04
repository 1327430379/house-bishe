package com.house.mapper;


import com.house.bean.eo.Property;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface PropertyMapper {
	@Insert("insert into Property(Property_id,house_id,pro_fee,water_rent,sanitary_fee,elevator,power,total,status,deadline)"
			+" values(#{p.property_id},#{p.house_id},#{p.pro_fee},#{p.water_rent}, #{p.sanitary_fee},#{p.elevator},#{p.power},#{p.total},#{p.status},'2018-6-20')")	
	public void addProperty(@Param("p") Property p);

		@Delete("delete from Property where Property_id=#{Property_id}")
	public void deletePropertys(@Param("Property_id") String Property_id);

		@Update("update Property set house_id=#{p.house_id},pro_fee=#{p.pro_fee},water_rent=#{p.water_rent},sanitary_fee=#{p.sanitary_fee},elevator=#{p.elevator}"+
		" ,power=#{p.power},total=#{p.total} where property_id=#{p.property_id}")
		public void updateProperty(@Param("p") Property p);
		
	@Select("select * from Property where Property_id=#{Property_id}")
	public Property findOneProperty(@Param("Property_id") String Property_id);


	@Select("select * from Property")
	public List<Property> findAllProperty();
	
	
	
}
