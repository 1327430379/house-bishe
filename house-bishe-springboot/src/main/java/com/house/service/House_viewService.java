package com.house.service;

import com.house.bean.entity.House_view;
import com.house.bean.eo.House;

import java.util.List;

public interface House_viewService {
	
	public House_view findOneHouse_view(String House_id);



	public List<House_view> findAllHouse_view();
	public List<House> findAllview_size(String city);
	public List<House_view> findhouse_fen(int start, int num);
	public List<House_view> findAllview_city(String city);
	public List<House_view> findAllview_gui();
	public List<House_view> findAllByProvider(String pid);


	public List<House_view> f_pid_status(String pid, String status);



	public List<House_view> findAllFree_House();


	public List<House_view> findAll_full();



	public void updateHouse_viewStatus(String House_id, String status);


	public List<House_view> findview_key(String city, String key);



	public List<House_view> searchprice(String city, int p1, int p2);


	public List<House_view> searcharea(String city, int a1, int a2);


	public List<House_view> searchshi(String city, String type);


	public List<House_view> searchqu(String address);



	public List<House_view> findmutiple1(String city, String address, String type);

	public List<House_view> findmutiple2(String city, String address, String paytype);

	public List<House_view> findmutiple3(String city, String type, String paytype);


	public List<House_view> findmutiple_all(String city, String address, String type, String paytype);

	public List<House_view> findpaytype(String city, String paytype);



	public List<House_view> findhouse_limit12(String city, String status);

	public List<House_view> findhouse_limit(String city, String status, int start, int num);
	
	
}
