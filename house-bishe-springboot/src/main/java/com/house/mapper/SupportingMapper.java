package com.house.mapper;

import com.house.bean.eo.Supporting;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface SupportingMapper {
	@Insert("insert into Supporting(house_id,kitchen_ware, Hot_shower, wifi, Air_conditioner,lift,fridge,washing_machine)"
			+" values(#{s.house_id},#{s.kitchen_ware}, #{s.hot_shower}, #{s.wifi}, #{s.air_conditioner},#{s.lift},#{s.fridge},#{s.washing_machine} )")	
	public void addSupporting(@Param("s") Supporting s);

		@Delete("delete from Supporting where house_id=#{house_id}")
	public void deleteSupportings(@Param("house_id") String house_id);

		//少了","
		@Update("update Supporting set kitchen_ware=#{s.kitchen_ware},hot_shower=#{s.hot_shower},air_conditioner=#{s.air_conditioner},"+
				"lift=#{s.lift},fridge=#{s.fridge},washing_machine=#{s.washing_machine} where house_id=#{s.house_id}")
				public void updateSupporting(@Param("s") Supporting s);

	@Select("select * from Supporting where house_id=#{house_id}")
	public Supporting findOneSupporting(@Param("house_id") String house_id);



	@Select("select * from Supporting")
	public List<Supporting> findAllSupporting();

	//记住要在删除房屋之前执行
	@Delete("delete from Supporting where house_id in (select house_id from house where provider_id= #{provider_id})")
	public void deletemySupporting(@Param("provider_id") String provider_id);
	
	@Delete("delete from Supporting where  house_id=#{house_id} ")
	public void deleteSupportByhouse(@Param("house_id") String house_id);
}
