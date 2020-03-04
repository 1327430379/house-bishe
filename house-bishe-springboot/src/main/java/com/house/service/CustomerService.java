package com.house.service;

import com.house.bean.eo.*;

import java.util.List;

public interface CustomerService {
	public void addCustomer(Customer c);

	public void deleteCustomers(String ids[]);

	
	public void updateCustomer(Customer c);

		
	
	public Customer findOneCustomer(String Customer_id);



	public List<Customer> findAllCustomer();
	public Customer check(String name, String password);

	public Customer findByidcard(String idcard);

	public List<Agreement> findAllAgreement(String customer_id);


	public List<Qiuzu> findAllQiuzu(String customer_id);
	public List<House> findmyHouse(String customer_id);

	public void addComment(Comment c);

	public void deleteComments(String ids[]);

	public List<Comment> findCommentbyhid(String house_id);
	public List<Comment> findAllComment();
	public List<Customer> findallFriend(String provider_id);

	public void changPass(String customer_id, String password);


	public List<Comment> findMyComment(String customer_id);


	public Comment findOneComment(String customer_id, String house_id);


			public void updateComment(String comment_id, String description, String star);
	
}
