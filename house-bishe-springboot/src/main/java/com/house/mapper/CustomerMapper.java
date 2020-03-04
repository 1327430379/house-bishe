package com.house.mapper;

import com.house.bean.eo.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface CustomerMapper {

	@Insert("insert into Customer(customer_id,idcard,name,nickname,img, password,sex,mobile,job,address,createtime)"
			+" values(#{c.customer_id},#{c.idcard},#{c.name},#{c.nickname},#{c.img},#{c.password},#{c.sex},#{c.mobile},#{c.job},#{c.address},now() )")	
	public void addCustomer(@Param("c") Customer c);

		@Delete("delete from Customer where Customer_id=#{Customer_id}")
	public void deleteCustomers(@Param("Customer_id") String Customer_id);



		@Update("update Customer set nickname=#{c.nickname},name=#{c.name},img=#{c.img},sex=#{c.sex},mobile=#{c.mobile},job=#{c.job},address=#{c.address},updatetime=now()"+
		"  where customer_id=#{c.customer_id}")
		public void updateCustomer(@Param("c") Customer c);

	@Select("select * from Customer where customer_id=#{customer_id}")
	public Customer findOneCustomer(@Param("customer_id") String customer_id);


	@Select("select * from Customer where idcard=#{idcard}")
	public Customer findByidcard(@Param("idcard") String idcard);


	@Select("select * from Customer")
	public List<Customer> findAllCustomer();


	@Select("select * from Customer where name = #{name} and password = #{password}")
	public Customer check(@Param("name") String name, @Param("password") String password);

	@Update("update Customer set password=#{password} where customer_id=#{customer_id}")
	public void changPass(@Param("customer_id") String customer_id, @Param("password") String password);

	@Select("select * from agreement where customer_id = #{customer_id} order by creatime desc ")
	public List<Agreement> findAllAgreement(@Param("customer_id") String customer_id);

	@Select("select * from Qiuzu where customer_id= #{customer_id}")
	public List<Qiuzu> findAllQiuzu(@Param("customer_id") String customer_id);

	@Select("select * from House where house_id in(select house_id from agreement where customer_id = #{customer_id}  ) ")
	public List<House> findmyHouse(@Param("customer_id") String customer_id);


	@Insert("insert into Comment(comment_id,house_id,customer_id ,nickname, description,maketime, star)"
			+" values(#{c.comment_id},#{c.house_id}, #{c.customer_id}, #{c.nickname}, #{c.description},#{c.maketime} , #{c.star} )")
	public void addComment(@Param("c") Comment c);

		@Delete("delete from Comment where comment_id=#{comment_id}")
	public void deleteComments(@Param("comment_id") String comment_id);




	@Select("select * from Comment ")
	public List<Comment> findAllComment();



	@Select("select * from Comment where house_id=#{house_id}")
	public List<Comment> findCommentbyhid(@Param("house_id") String house_id);
	@Select("select * from Comment where customer_id= #{customer_id}")
	public List<Comment> findMyComment(@Param("customer_id") String customer_id);

	@Select("select * from Comment where house_id=#{house_id} and customer_id= #{customer_id} ")
	public Comment findOneComment(@Param("customer_id") String customer_id, @Param("house_id") String house_id);

	@Update("update comment set description=#{description},star=#{star},maketime=now() "+
			"  where comment_id=#{comment_id}")
			public void updateComment(@Param("comment_id") String comment_id, @Param("description") String description, @Param("star") String star);


	@Select("SELECT * from customer where customer_id in(select customer_id from agreement where provider_id=#{provider_id}) or  "
+"customer_id in(select sender_id from notice where rece_id=#{provider_id}) or "
+"customer_id in(select  rece_id from notice where sender_id=#{provider_id})")
	public List<Customer> findallFriend(@Param("provider_id") String provider_id);
	
	
}
