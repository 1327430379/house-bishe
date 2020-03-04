package com.house.service;

import com.house.bean.eo.Qiuzu;

import java.util.List;

public interface QiuzuService {
	
	public void addQiuzu(Qiuzu q);

	
	public void deleteQiuzus(String ids[]);

		
		public void updateQiuzu(Qiuzu q);
		
	
	public Qiuzu findOneQiuzu(String Qiuzu_id);


	public List<Qiuzu> findAllQiuzu();
	
	
	
}
