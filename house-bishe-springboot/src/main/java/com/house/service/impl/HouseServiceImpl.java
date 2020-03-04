package com.house.service.impl;

import com.house.bean.eo.House;
import com.house.mapper.HouseMapper;
import com.house.service.HouseService;
import com.house.util.houseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HouseServiceImpl implements HouseService {
	@Autowired
	private HouseMapper mapper;
	@Override
	public void addHouse(House h) {
		/*int num=findAllHouse().size();
		String id=IDutil.getID("h000", num+1);
        
		h.setHouse_id(id);*/
		mapper.addHouse(h);
	}

	@Override
	public void deleteHouses(String ids[]) {
		for(String id:ids){
			mapper.deleteHouses(id);
		}
	

	}

	@Override
	public void updateHouse(House h) {
		mapper.updateHouse(h);

	}

	@Override
	public House findOneHouse(String House_id) {
		
		return mapper.findOneHouse(House_id);
	}

	@Override
	public List<House> findAllHouse() {
		
		return mapper.findAllHouse();
	}

	@Override
	public List<House> findAllByProvider(String pid) {
		
		return mapper.findAllByProvider(pid);
	}

	@Override
	public List<House> f_pid_status(String pid, String status) {
		
		return mapper.f_pid_status(pid, status);
	}

	@Override
	public void updateHouseImg(String house_id, String img) {
		mapper.updateHouseImg(house_id, img);
		
	}
//按照合同改变的,预定的时候使用
	@Override
	public void updateHouseStatus(String agreement_id, String status) {//house_id:为合同id
	mapper.updateHouseStatus2(agreement_id, status);
		
	}
	//按照房子找到的,管理员时候的时候，使用
	@Override
	public void updateHouseStatus2(String house_id, String status) {
		mapper.updateHouseStatus1(house_id, status);
		
	}
	@Override
	public List<House> findhouseBystatus(String status) {
		
		return mapper.findhouseBystatus(status);
	}

	@Override
	public void deletemyHouses(String provider_id) {
		
	/*	//删除房屋图片，其次删除房屋设施表的内容，其次删除位置表的内容，再然后删除房屋信息
	 * List<House> hlist=findAllByProvider(provider_id);
		for (House h : hlist) {
			houseUtil.deleteImg(h.getHouse_id(), "E://E:\\Tomcat ruanjian\\iamges_house\\");
		}
		*/
		
	mapper.deletemySupporting(provider_id);
	mapper.deletemyLocation(provider_id);
	mapper.deletemyHouses(provider_id);
		
	}

	@Override
	public void deleteOneHouses(String house_id,String path) {
	
		houseUtil.deleteImg(house_id,path);
		mapper.deleteLocateByhouse(house_id);
		mapper.deleteSupportByhouse(house_id);
		mapper.deleteHouses(house_id);
	}

	

}
