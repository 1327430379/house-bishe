package com.house.mapper;

import com.house.bean.eo.Staff;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface StaffMapper {


	@Insert("insert into Staff(Staff_id,name, position,department,mobile,email ,service,description)"
			+" values(#{s.staff_id},#{s.name}, #{s.position},#{s.department},#{s.mobile}, #{s.email},#{s.service}, #{s.description} )")	
	public void addStaff(@Param("s") Staff s);

		@Delete("delete from Staff where staff_id=#{staff_id}")
	public void deleteStaffs(@Param("staff_id") String staff_id);

		@Update("update Staff set name=#{s.name},position=#{s.position},department=#{s.department},mobile=#{s.mobile},email=#{s.email},service=#{s.service},description=#{s.description}"+
		"  where staff_id=#{s.staff_id}")
		public void updateStaff(@Param("s") Staff s);
		
	@Select("select * from staff where staff_id=#{staff_id}")
	public Staff findOneStaff(@Param("staff_id") String staff_id);


	@Select("select * from staff")
	public List<Staff> findAllStaff();
	
	
}
