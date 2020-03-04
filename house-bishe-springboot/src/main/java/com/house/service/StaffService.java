package com.house.service;

import com.house.bean.eo.Staff;

import java.util.List;

public interface StaffService {

	public void addStaff(Staff s);

		
	public void deleteStaffs(String ids[]);

	
		public void updateStaff(Staff s);
		
	
	public Staff findOneStaff(String Staff_id);


	
	public List<Staff> findAllStaff();
}
