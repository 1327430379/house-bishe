package com.house.mapper;

import com.house.bean.eo.Location;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface LocationMapper {
	@Insert("insert into Location(house_id,description,transport,park,eat ,hospital)"
			+" values(#{l.house_id},#{l.description}, #{l.transport},#{l.park},#{l.eat},#{l.hospital})")	
	public void addLocation(@Param("l") Location l);

		@Delete("delete from Location where Location_id=#{location_id}")
	public void deleteLocations(@Param("location_id") String location_id);

		@Update("update Location set description=#{l.description},transport=#{l.transport},park=#{l.park},eat=#{l.eat},hospital=#{l.hospital}"+
		"  where house_id=#{l.house_id}")
		public void updateLocation(@Param("l") Location l);

	@Select("select * from Location where house_id=#{house_id}")
	public Location findOneLocation(@Param("house_id") String house_id);


	@Select("select * from Location")
	public List<Location> findAllLocation();
	//记住要在删除房屋之前执行
	@Delete("delete from Location where house_id in (select house_id from house where provider_id= #{provider_id})")
	public void deletemyLocation(@Param("provider_id") String provider_id);
	
	@Delete("delete from Location where  house_id=#{house_id} ")
	public void deleteLocateByhouse(@Param("house_id") String house_id);
}
