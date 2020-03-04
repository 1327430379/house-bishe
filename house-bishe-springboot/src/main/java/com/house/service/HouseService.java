package com.house.service;

import com.house.bean.eo.House;

import java.util.List;

public interface HouseService {
	
	public void addHouse(House h);

	
	public void deleteHouses(String ids[]);

	
		public void updateHouse(House h);


	public House findOneHouse(String House_id);


	public List<House> findAllHouse();

	public List<House> findAllByProvider(String pid);
	public List<House> f_pid_status(String pid, String status);
	public void updateHouseImg(String house_id, String img);

	public void updateHouseStatus(String agreement_id, String status);//改变房屋状态
	public void updateHouseStatus2(String house_id, String status);//改变房屋状态

	public List<House> findhouseBystatus(String status);
	public void deletemyHouses(String provider_id);

	public void deleteOneHouses(String house_id, String path);
}
