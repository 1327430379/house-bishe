package com.house.mapper;

import com.house.bean.eo.House;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface HouseMapper {
	@Insert("insert into House(house_id, provider_id,address,address2,ceng,area,paytype,type,Status,score,Price,createtime,updatetime)"
			+" values(#{h.house_id},#{h.provider_id}, #{h.address}, #{h.address2}, #{h.ceng},#{h.area},#{h.type},#{h.type},"
			+ "#{h.status},#{h.score},#{h.price} ,now(),#{h.updatetime} )")	
	public void addHouse(@Param("h") House h);

		@Delete("delete from House where house_id=#{house_id}")
	public void deleteHouses(@Param("house_id") String house_id);

		@Update("update House set address=#{h.address},address2=#{h.address2},ceng=#{h.ceng},"
				+ "area=#{h.area},paytype=#{h.paytype},type=#{h.type},price=#{h.price},updatetime=now()"+
		"  where House_id=#{h.house_id}")
		public void updateHouse(@Param("h") House h);

	@Select("select * from House where house_id=#{house_id}")
	public House findOneHouse(@Param("house_id") String house_id);


	@Select("select * from House")
	public List<House> findAllHouse();

	@Select("select * from House  where provider_id=#{pid} ")
	public List<House> findAllByProvider(@Param("pid") String pid);

	@Select("select * from House  where provider_id=#{pid} and status=#{status} ")
	public List<House> f_pid_status(@Param("pid") String pid, @Param("status") String status);


	@Select("select * from House  where status='空闲' ")
	public List<House> findAllFree_House();

	@Select("select * from House  where status='入住' ")
	public List<House> findAll_full();

	@Select("select * from House  where status=#{status} ")
	public List<House> findhouseBystatus(@Param("status") String status);

	@Update("update House set status=#{status}  where house_id=#{house_id}")
	public void updateHouseStatus1(@Param("house_id") String house_id, @Param("status") String status);//改变房屋状态

	@Update("update House set status=#{status}  where house_id in (select house_id from agreement where agreement_id=#{agreement_id} )")
	public void updateHouseStatus2(@Param("agreement_id") String agreement_id, @Param("status") String status);//改变房屋状态

	@Update("update House set img=#{img}  where house_id=#{house_id}")
	public void updateHouseImg(@Param("house_id") String house_id, @Param("img") String img);



	@Delete("delete from Supporting where house_id in (select house_id from house where provider_id= #{provider_id})")
	public void deletemySupporting(@Param("provider_id") String provider_id);
	@Delete("delete from Location where house_id in (select house_id from house where provider_id= #{provider_id})")
	public void deletemyLocation(@Param("provider_id") String provider_id);

	@Delete("delete from house where provider_id= #{provider_id}")
	public void deletemyHouses(@Param("provider_id") String provider_id);
	
	@Delete("delete from Location where  house_id=#{house_id} ")
	public void deleteLocateByhouse(@Param("house_id") String house_id);
	
	@Delete("delete from Supporting where  house_id=#{house_id} ")
	public void deleteSupportByhouse(@Param("house_id") String house_id);
	
}
