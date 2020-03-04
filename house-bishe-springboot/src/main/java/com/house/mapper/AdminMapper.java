package com.house.mapper;

import com.house.bean.eo.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


public interface AdminMapper {
	@Select("select * from admin where admin_name = #{name} and password = #{password}")
	public Admin check(@Param("name") String name, @Param("password") String password);

	@Select("select * from Admin where admin_id = #{admin_id} ")
	public Admin findOneAdmin(@Param("admin_id ") String admin_id);

	@Update("update admin set password=#{password}  where admin_id=#{admin_id}")
	public void changPass(@Param("admin_id ") String admin_id, @Param("password") String password);
}
