package com.house.mapper;

import com.house.bean.eo.Qiuzu;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface QiuzuMapper {

/*	@Insert("insert into Qiuzu(qiuzu_id,customer_id,name, contact, house_type, area, price, description, createtime)"
			+" values(#{q.qiuzu_id},#{q.customer_id},#{q.name}, #{q.contact}, #{q.house_type},#{q.area} , #{p.price}, #{q.description},now() )")	
	public void addQiuzu(@Param("q")Qiuzu q);*/

	@Insert("insert into Qiuzu(qiuzu_id,customer_id, name,email,house_type,address,area,price,description, createtime)"
			+" values(#{q.qiuzu_id},#{q.customer_id},#{q.name},#{q.email},#{q.house_type},#{q.area},#{q.area},#{q.price}, #{q.description},now() )")	
	public void addQiuzu(@Param("q") Qiuzu q);
	
		@Delete("delete from Qiuzu where Qiuzu_id=#{Qiuzu_id}")
	public void deleteQiuzus(@Param("Qiuzu_id") String Qiuzu_id);

		@Update("update qiuzu set name=#{q.name},email=#{q.email},house_type=#{q.house_type},area=#{q.area},"+
		" price=#{q.price},description=#{q.description} where qiuzu_id=#{q.qiuzu_id}")
		public void updateQiuzu(@Param("q") Qiuzu q);

		
	@Select("select * from Qiuzu where qiuzu_id=#{qiuzu_id}")
	public Qiuzu findOneQiuzu(@Param("qiuzu_id") String qiuzu_id);



	@Select("select * from Qiuzu")
	public List<Qiuzu> findAllQiuzu();
	
	
}
