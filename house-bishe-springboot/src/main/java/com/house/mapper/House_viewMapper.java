package com.house.mapper;

import com.house.bean.entity.House_view;
import com.house.bean.eo.House;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

;

public interface House_viewMapper {
	
	/*
	 查询板块1:
	 城市分页相关的
	 */
	//查询某一套房子
	@Select("select * from house_view where house_id=#{house_id} ")
	public House_view findOneHouse_view(@Param("house_id") String house_id);

   //查询所有房子
	@Select("select * from house_view")
	public List<House_view> findAllHouse_view();
	@Select("select * from House_view  where status='空闲' ")
	public List<House_view> findAllFree_House();
	
	@Select("select * from House_view  where status='入住' ")
	public List<House_view> findAll_full();
	
	//查询一个城市所有的房子
	@Select("select * from House where address  like CONCAT(#{city},'%')   ")
	public List<House_view> findAllview_city(@Param("city") String city);
	@Select("select * from House where address  like CONCAT(#{city},'%') and status='空闲'    ")
	public List<House> findAllview_size(@Param("city") String city);//求某个城市全部空闲的房子用于计算sizi
	
	//显示一个城市前12条记录
	@Select("select * from House_view where address  like CONCAT(#{city},'%')  and status=#{status} limit 12  ")//'福州%'
	public List<House_view> findhouse_limit12(@Param("city") String city, @Param("status") String status);
	//显示一个城市前记录进行分页
	@Select("select * from House_view where address  like CONCAT(#{city},'%') and status=#{status}  limit #{start},#{num} ")
	public List<House_view> findhouse_limit(@Param("city") String city, @Param("status") String status, @Param("start") int start, @Param("num") int num);


	/*
	 查询板块2：
	 房子与房东相关的查询
	 */

	//查询一个房东的全部房子
	@Select("select * from House_view  where provider_id=#{pid} ")
	public List<House_view> findAllByProvider(@Param("pid") String pid);

	//查询房东的全部房子，含房子状态
	@Select("select * from House_view  where provider_id=#{pid} and status=#{status} ")
	public List<House_view> f_pid_status(@Param("pid") String pid, @Param("status") String status);


	/*
	 查询板块3：
	 城市静态条件查询：
	 比如：按照房子的区域，价格，面积，房型，支付类型
	 */
	//城市 与搜索的关键词

	//城市与区域
	  @Select("select * from house_view where address  like CONCAT(#{address},'%') and status='空闲' limit 20  ")
	 public List<House_view> searchqu(@Param("address") String address);

		//城市与价格
		@Select("select * from house_view where address  like CONCAT(#{city},'%') and status='空闲'  and (price>=#{p1}  and price<=#{p2} ) limit 20  ")
		public List<House_view> searchprice(@Param("city") String city, @Param("p1") int p1, @Param("p2") int p2);

		//城市与面积
		@Select("select * from house_view where address  like CONCAT(#{city},'%') and status='空闲'  and (area>=#{a1}  and area<=#{a2}  ) ")
		public List<House_view> searcharea(@Param("city") String city, @Param("a1") int a1, @Param("a2") int a2);

		//城市，房型
		@Select("select * from house_view where address  like CONCAT(#{city},'%') and status='空闲'   and type like  CONCAT('',#{shi},'%') limit 20 ")
		public List<House_view> searchshi(@Param("city") String city, @Param("shi") String shi);
		//城市，支付类型
		@Select("select * from House_view where  address like CONCAT('',#{city},'%') and status='空闲' and  paytype like  CONCAT('%',#{paytype},'%')  limit 20 ")
		public List<House_view> findpaytype(@Param("city") String city, @Param("paytype") String paytype);






		/*查询板块4：
		按照搜索关键次进行搜索的
		 */
		/*一个关键词
		 直接对关键词进行无脑的全字段匹配
		 */

		@Select("select * from House_view where  address like CONCAT('',#{city},'%') and status='空闲' and (     park like  CONCAT('%',#{key},'%') "
				+ " or hospital like  CONCAT('%',#{key},'%')   or address like  CONCAT('%',#{key},'%')  or address2 like  CONCAT('%',#{key},'%') "
				+ "or type like  CONCAT('%',#{key},'%') ) limit 20 ")//limit 20
		public List<House_view> findview_key(@Param("city") String city, @Param("key") String key);

		/* 两个关键词
		比如  湖里区 一室一厅 (city参数是自动给的)
		 */
	@Select("select * from House_view where  address like CONCAT('',#{city},'%') and status='空闲' and  type like  CONCAT('%',#{type},'%') and( address like  CONCAT('%',#{address},'%')   "
			+ "   or address2 like  CONCAT('%',#{address},'%') or park like  CONCAT('%',#{address},'%')"
			+ ") limit 20 ")//limit 20
	public List<House_view> findmutiple1(@Param("city") String city, @Param("address") String address, @Param("type") String type);//按照地址房型

	/*两个关键词
	比如  湖里区 押一付一 (city参数是自动给的)
	 */
	@Select("select * from House_view where  address like CONCAT('',#{city},'%') and status='空闲' and  paytype like  CONCAT('%',#{paytype},'%') and( address like  CONCAT('%',#{address},'%')   "
			+ "   or address2 like  CONCAT('%',#{address},'%') or park like  CONCAT('%',#{address},'%')"
			+ ") limit 20 ")//limit 20
	public List<House_view> findmutiple2(@Param("city") String city, @Param("address") String address, @Param("paytype") String paytype);//按照地址房型

	/*两个关键词
	比如  湖里区     一室一厅   押一付一 (city参数是自动给的)
	 */
	@Select("select * from House_view where  address like CONCAT('',#{city},'%') and status='空闲' and type like CONCAT('%',#{type},'%') and paytype like CONCAT('%',#{paytype},'%') limit 20 ")//limit 20
	public List<House_view> findmutiple3(@Param("city") String city, @Param("type") String type, @Param("paytype") String paytype);//按照地址房型

	@Select("select * from House_view where  address like CONCAT('',#{city},'%') and status='空闲' and  type like  CONCAT('%',#{type},'%') and( address like  CONCAT('%',#{address},'%')   "
			+ "   or address2 like  CONCAT('%',#{address},'%') or park like  CONCAT('%',#{address},'%')"
			+ ") and paytype like  CONCAT('%',#{paytype},'%')    limit 20 ")//limit 20
	public List<House_view> findmutiple_all(@Param("city") String city, @Param("address") String address, @Param("type") String type, @Param("paytype") String paytype);//按照地址房型
	//address:包括address,park,address2的搜索

/*
 *查询末尾
 */
	@Select("select * from House_view where address  like '福州%'  and status='空闲' limit 12  ")//'福州%'
	public List<House_view> findAllview_gui();

	@Select("select * from House_view where address  like '福州%'  limit #{start},#{num} ")
	public List<House_view> findhouse_fen(@Param("start") int start, @Param("num") int num);
	@Update("update House_view set status=#{status}  where House_view_id=#{House_id}")
	public void updateHouse_viewStatus(@Param("House_id") String House_id, @Param("status") String status);
	
}
