package com.house.service.impl;

import com.house.bean.eo.Mess;
import com.house.mapper.MessMapper;
import com.house.service.MessService;
import com.house.util.IDutil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessServiceImpl implements MessService {
	@Autowired
	private MessMapper mapper;
	@Override
	public Mess findOneMess(String mess_id) {
	
		return mapper.findOneMess(mess_id);
	}

	@Override
	public void addMess(Mess m) {
		int num=findAllMess().size();
		String id=IDutil.getID("m000", num+1);
		m.setMess_id(id);
		mapper.addMess(m);
	}

	@Override
	public List<Mess> findMyMess(String pid) {
	
		return mapper.findMyMess(pid);
	}

	@Override
	public List<Mess> findAllMess() {
	
		return mapper.findAllMess();
	}

}
