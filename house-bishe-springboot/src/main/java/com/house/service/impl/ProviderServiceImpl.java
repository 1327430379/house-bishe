package com.house.service.impl;

import com.house.bean.eo.*;
import com.house.mapper.HouseMapper;
import com.house.mapper.PropertyMapper;
import com.house.mapper.ProviderMapper;
import com.house.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProviderServiceImpl implements ProviderService {
	@Autowired
	private ProviderMapper mapper;
	
	@Autowired
	private PropertyMapper pmapper;
	
	@Autowired
	private HouseMapper hmapper;

	@Override
	public void addProvider(Provider p) {
		
		mapper.addProvider(p);
	}

	@Override
	public void deleteProviders(String ids[]) {
		for(String id:ids){
			mapper.deleteProviders(id);
		}
		
		
		
	}

	@Override
	public void updateProvider(Provider p) {
		
		mapper.updateProvider(p);
	}

	@Override
	public Provider findOneProvider(String Provider_id) {
		
		return mapper.findOneProvider(Provider_id);
	}

	@Override
	public List<Provider> findAllProvider() {
		
		return mapper.findAllProvider();
	}

	@Override
	public Provider check(String name, String password) {
		
		return mapper.check(name, password);
	}

	
	
	
public List<House> findAllHouse(String pid) {
		
		return mapper.findAllhouse(pid);
	}
	
	@Override
	public List<Property> findAllProperty(String pid) {
		/*List<House> hlist= findAllHouse(pid);
		List<Property> list=new ArrayList<Property>();*/
		return mapper.findAllProperty(pid);
	}

	@Override
	public List<Customer> findAllCustomer(String pid) {
		
		return mapper.findAllCustomer(pid);
	}

	@Override
	public List<Provider> findallFriend(String customer_id) {
		
		return mapper.findallFriend(customer_id);
	}

	@Override
	public void changPass(String provider_id, String password) {
		mapper.changPass(provider_id, password);
		
	}

	@Override
	public List<Comment> findCommentbyhid(String house_id) {
		
		return mapper.findCommentbyhid(house_id);
	}

	@Override
	public List<Qiuzu> findAllQiuzu() {
		
		return mapper.findAllQiuzu();
	}
	

}
