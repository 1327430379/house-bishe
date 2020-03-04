package com.house.service.impl;

import com.house.bean.eo.Staff;
import com.house.mapper.StaffMapper;
import com.house.service.StaffService;
import com.house.util.IDutil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {
	@Autowired
	private StaffMapper mapper;
	@Override
	public void addStaff(Staff s) {
		int num=findAllStaff().size();
		String id=IDutil.getID("st00", num+1);
           
		s.setStaff_id(id);
		mapper.addStaff(s);
	}

	@Override
	public void deleteStaffs(String ids[]) {
		for(String id:ids){
			mapper.deleteStaffs(id);
		}

	}

	@Override
	public void updateStaff(Staff s) {
		
mapper.updateStaff(s);
	}

	@Override
	public Staff findOneStaff(String Staff_id) {
		
		return mapper.findOneStaff(Staff_id);
	}

	@Override
	public List<Staff> findAllStaff() {
		
		return mapper.findAllStaff();
	}

}
