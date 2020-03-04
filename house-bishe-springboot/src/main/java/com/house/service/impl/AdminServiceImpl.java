package com.house.service.impl;

import com.house.bean.eo.Admin;
import com.house.mapper.AdminMapper;
import com.house.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper mapper;
	@Override
	public Admin check(String name, String password) {
		
		return mapper.check(name, password);
	}

	@Override
	public Admin findOneAdmin(String Admin_id) {
		
		return mapper.findOneAdmin(Admin_id);
	}

	@Override
	public void changPass(String admin_id, String password) {
	
		mapper.changPass(admin_id, password);
		
	}

}
