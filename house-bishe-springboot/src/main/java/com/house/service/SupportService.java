package com.house.service;

import com.house.bean.eo.Supporting;

import java.util.List;

public interface SupportService {
	
	public void addSupporting(Supporting s);


	public void deleteSupportings(String house_id);


		public void updateSupporting(Supporting s);

		
	
	public Supporting findOneSupporting(String house_id);




	public List<Supporting> findAllSupporting();
}
