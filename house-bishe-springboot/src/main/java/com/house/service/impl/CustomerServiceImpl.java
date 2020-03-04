package com.house.service.impl;

import com.house.bean.eo.*;
import com.house.mapper.CustomerMapper;
import com.house.service.CustomerService;
import com.house.util.IDutil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper mapper;
	@Override
	public void addCustomer(Customer c) {
		int num=findAllCustomer().size();
		String id=IDutil.getID("c00", num+1);
        c.setCustomer_id(id);
        
        mapper.addCustomer(c);
	}

	@Override
	public void deleteCustomers(String ids[]) {
		for(String id:ids){
			mapper.deleteCustomers(id);
		}

	}

	@Override
	public void updateCustomer(Customer c) {
		mapper.updateCustomer(c);

	}

	@Override
	public Customer findOneCustomer(String Customer_id) {
		
		return mapper.findOneCustomer(Customer_id);
	}

	@Override
	public List<Customer> findAllCustomer() {
		
		return mapper.findAllCustomer();
	}

	@Override
	public Customer check(String name, String password) {
		
		return mapper.check(name, password);
	}

	@Override
	public Customer findByidcard(String idcard) {
		
		return mapper.findByidcard(idcard);
	}

	@Override
	public List<Agreement> findAllAgreement(String customer_id) {
		
		return mapper.findAllAgreement(customer_id);
	}

	@Override
	public List<Qiuzu> findAllQiuzu(String customer_id) {
		
		return mapper.findAllQiuzu(customer_id);
	}

	@Override
	public List<House> findmyHouse(String customer_id) {
		
		return mapper.findmyHouse(customer_id);
	}

	@Override
	public void addComment(Comment c) {
		int num=findAllComment().size();
		String id=IDutil.getID("com00", num+1);
		c.setComment_id(id);
		mapper.addComment(c);
		
	}

	@Override
	public void deleteComments(String[] ids) {
		for (String id : ids) {
			mapper.deleteComments(id);
		}
		
	}

	@Override
	public List<Comment> findCommentbyhid(String house_id) {
		
		return mapper.findCommentbyhid(house_id);
	}

	@Override
	public List<Comment> findAllComment() {
		
		return mapper.findAllComment();
	}

	@Override
	public List<Customer> findallFriend(String provider_id) {
	
		return mapper.findallFriend(provider_id);
	}

	@Override
	public void changPass(String customer_id, String password) {
		mapper.changPass(customer_id, password);
		
	}

	@Override
	public List<Comment> findMyComment(String customer_id) {
		
		return mapper.findMyComment(customer_id);
	}

	@Override
	public Comment findOneComment(String customer_id, String house_id) {
		
		return mapper.findOneComment(customer_id, house_id);
	}

	@Override
	public void updateComment(String comment_id, String description, String star) {
		
		mapper.updateComment(comment_id, description, star);
	}

}
