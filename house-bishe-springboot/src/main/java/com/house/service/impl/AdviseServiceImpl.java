package com.house.service.impl;

import com.house.bean.entity.Advise;
import com.house.mapper.AdviseMapper;
import com.house.service.AdviseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdviseServiceImpl implements AdviseService {
	@Autowired
	private AdviseMapper mapper;
	@Override
	public void addAdvise(Advise a) {
		
		mapper.addAdvise(a);
	}

	@Override
	public void deleteAdvises(int advise_id) {
		mapper.deleteAdvises(advise_id);
		
	}

	@Override
	public Advise findOneAdvise(int advise_id) {//int而不是String
		
		return mapper.findOneAdvise(advise_id);
	}

	@Override
	public List<Advise> findAllAdvise() {
		
		return mapper.findAllAdvise();
	}

	@Override
	public List<Advise> findmyAdvise(String send_id) {
		
		return mapper.findmyAdvise(send_id);
	}

}
