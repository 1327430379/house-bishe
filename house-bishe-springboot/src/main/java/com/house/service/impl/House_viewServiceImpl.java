package com.house.service.impl;

import com.house.bean.entity.House_view;
import com.house.bean.eo.House;
import com.house.mapper.House_viewMapper;
import com.house.service.House_viewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class House_viewServiceImpl implements House_viewService {
	@Autowired
	private House_viewMapper mapper;
	@Override
	public House_view findOneHouse_view(String house_id) {
		
		return mapper.findOneHouse_view(house_id);
	}

	@Override
	public List<House_view> findAllHouse_view() {
		
		return null;
	}

	@Override
	public List<House_view> findAllByProvider(String pid) {
		
		return null;
	}

	@Override
	public List<House_view> f_pid_status(String pid, String status) {
		
		return null;
	}

	@Override
	public List<House_view> findAllFree_House() {
		
		return null;
	}

	@Override
	public List<House_view> findAll_full() {
		
		return null;
	}

	@Override
	public void updateHouse_viewStatus(String House_id, String status) {
		

	}

	@Override
	public List<House_view> findview_key(String city,String key) {
	
		return mapper.findview_key(city,key);
	}

	@Override
	public List<House_view> findAllview_gui() {
		
		return mapper.findAllview_gui();
	}

	@Override
	public List<House_view> findhouse_fen(int start, int num) {
		
		return mapper.findhouse_fen(start, num);
	}

	@Override
	public List<House> findAllview_size(String city) {
		
		return mapper.findAllview_size(city);
	}

	@Override
	public List<House_view> findAllview_city(String city) {
		
		return mapper.findAllview_city(city);
	}

	@Override
	public List<House_view> searchprice(String city, int p1, int p2) {
	
		return mapper.searchprice(city, p1, p2);
	}

	@Override
	public List<House_view> searcharea(String city, int a1, int a2) {
		
		return mapper.searcharea(city, a1, a2);
	}

	@Override
	public List<House_view> searchshi(String city, String type) {
		
		return mapper.searchshi(city, type);
	}

	@Override
	public List<House_view> searchqu(String address) {
	
		return mapper.searchqu(address);
	}

	@Override
	public List<House_view> findmutiple1(String city, String address, String type) {
		
		return mapper.findmutiple1(city, address, type);
	}

	@Override
	public List<House_view> findmutiple2(String city, String address, String paytype) {
		
		return mapper.findmutiple2(city, address, paytype);
	}

	@Override
	public List<House_view> findmutiple3(String city, String type, String paytype) {
		
		return mapper.findmutiple3(city, type, paytype);
	}

	@Override
	public List<House_view> findmutiple_all(String city, String address, String type,String paytype) {
		
		return mapper.findmutiple_all(city, address, type,paytype);
	}

	@Override
	public List<House_view> findpaytype(String city, String paytype) {
	
		return mapper.findpaytype(city, paytype);
	}

	@Override
	public List<House_view> findhouse_limit12(String city, String status) {
		
		return mapper.findhouse_limit12(city, status);
	}

	@Override
	public List<House_view> findhouse_limit(String city, String status, int start, int num) {
		
		return mapper.findhouse_limit(city, status, start, num);
	}

}
