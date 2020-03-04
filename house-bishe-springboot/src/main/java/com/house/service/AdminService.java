package com.house.service;




import com.house.bean.eo.Admin;

public interface AdminService {
	
	public Admin check(String name, String password);


	public Admin findOneAdmin(String Admin_id);

	public void changPass(String admin_id, String password);
}
