package com.house.service;

import com.house.bean.eo.*;

import java.util.List;

public interface ProviderService {
	public Provider check(String name, String password);
	public void addProvider(Provider p);


	public void deleteProviders(String ids[]);


	public void updateProvider(Provider p);


	public Provider findOneProvider(String Provider_id);



	public List<Provider> findAllProvider();
	public List<House> findAllHouse(String pid);
	public List<Property> findAllProperty(String pid);
	public List<Customer> findAllCustomer(String pid);

	public List<Provider> findallFriend(String customer_id);
	public void changPass(String provider_id, String password);
	
	//查看自己房屋的评论
	
		public List<Comment> findCommentbyhid(String house_id);
		public List<Qiuzu> findAllQiuzu();
}
