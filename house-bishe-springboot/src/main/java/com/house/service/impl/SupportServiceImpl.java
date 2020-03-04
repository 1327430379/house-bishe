package com.house.service.impl;

import com.house.bean.eo.Supporting;
import com.house.mapper.SupportingMapper;
import com.house.service.SupportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupportServiceImpl implements SupportService {
	@Autowired
	private SupportingMapper mapper;
	@Override
	public void addSupporting(Supporting s) {
		/*int num=findAllSupporting().size();
		String id=IDutil.getID("su000", num+1);*/
		
		mapper.addSupporting(s);

	}

	@Override
	public void deleteSupportings(String house_id) {
		
mapper.deleteSupportings(house_id);
	}

	@Override
	public void updateSupporting(Supporting s) {
		System.out.println("修改"+s.getHouse_id());
mapper.updateSupporting(s);
	}

	@Override
	public Supporting findOneSupporting(String house_id) {
		
		return mapper.findOneSupporting(house_id);
	}

	@Override
	public List<Supporting> findAllSupporting() {
		
		return mapper.findAllSupporting();
	}

}
