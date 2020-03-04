package com.house.service;

import com.house.bean.eo.Mess;

import java.util.List;

public interface MessService {
	
	public Mess findOneMess(String mess_id);


	public void addMess(Mess m);
	

	public List<Mess> findMyMess(String pid);
	

	public List<Mess> findAllMess();
}
