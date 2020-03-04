package com.house.mapper;

import com.house.bean.eo.*;
import com.house.bean.eo.Property;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ProviderMapper {
	@Insert("insert into Provider(provider_id,name,nickname,idcard,img, password,sex,mobile,address ,createtime,updatetime)"
			+" values(#{p.provider_id},#{p.name},#{p.nickname},#{p.idcard},#{p.img}, #{p.password},#{p.sex},#{p.mobile}, #{p.address},now(),now())")	
	public void addProvider(@Param("p") Provider p);

		@Delete("delete from Provider where Provider_id=#{Provider_id}")
	public void deleteProviders(@Param("Provider_id") String Provider_id);

		@Update("update Provider set nickname=#{p.nickname},password=#{p.password},sex=#{p.sex},mobile=#{p.mobile},qq=#{p.qq},img=#{p.img},address=#{p.address},updatetime=now()"+
		"  where provider_id=#{p.provider_id}")
		public void updateProvider(@Param("p") Provider p);

	@Select("select * from Provider where provider_id=#{provider_id}")
	public Provider findOneProvider(@Param("provider_id") String provider_id);


	@Select("select * from Provider")
	public List<Provider> findAllProvider();


	@Select("select * from Provider where name = #{name} and password = #{password}")
	public Provider check(@Param("name") String name, @Param("password") String password);

	@Update("update Provider set password=#{password}  where provider_id=#{provider_id}")
	public void changPass(@Param("provider_id") String provider_id, @Param("password") String password);

	@Select(" SELECT *from property where   house_id in(SELECT house_id from house where provider_id=#{pid})")
	public List<Property> findAllProperty(@Param("pid") String pid);


	@Select("select * from House  where provider_id=#{pid} ")
	public List<House> findAllhouse(@Param("pid") String pid);


	@Select("select * from Customer where customer_id in(select customer_id from agreement where provider_id=#{pid} )   ")
	public List<Customer> findAllCustomer(@Param("pid") String pid);

	@Select("SELECT * from provider where provider_id in(select provider_id from agreement where customer_id=#{customer_id}) or  "
+"provider_id  in(select sender_id from notice where rece_id=#{customer_id}) or "
+"provider_id  in(select  rece_id from notice where sender_id=#{customer_id})")
	public List<Provider> findallFriend(@Param("customer_id") String customer_id);
	
	//查看自己房屋的评论
	@Select("select * from Comment where house_id=#{house_id}")
	public List<Comment> findCommentbyhid(@Param("house_id") String house_id);
	
	
	@Select("select * from Qiuzu ")
	public List<Qiuzu> findAllQiuzu();
	
}
