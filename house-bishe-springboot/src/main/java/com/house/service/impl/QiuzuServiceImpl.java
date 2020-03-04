package com.house.service.impl;

import com.house.bean.eo.Qiuzu;
import com.house.mapper.QiuzuMapper;
import com.house.service.QiuzuService;
import com.house.util.IDutil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QiuzuServiceImpl implements QiuzuService {
	@Autowired
	private QiuzuMapper mapper;

	@Override
	public void addQiuzu(Qiuzu q) {
		int num=findAllQiuzu().size();
		String id=IDutil.getID("qiu000", num+1);
		
		q.setQiuzu_id(id);
		mapper.addQiuzu(q);
	}

	@Override
	public void deleteQiuzus(String ids[]) {
		for(String id:ids){
			mapper.deleteQiuzus(id);
		}
		
	}

	@Override
	public void updateQiuzu(Qiuzu q) {
		mapper.updateQiuzu(q);
		
	}

	@Override
	public Qiuzu findOneQiuzu(String Qiuzu_id) {
		
		return mapper.findOneQiuzu(Qiuzu_id);
	}

	@Override
	public List<Qiuzu> findAllQiuzu() {
		
		return mapper.findAllQiuzu();
	}

	
	

}
