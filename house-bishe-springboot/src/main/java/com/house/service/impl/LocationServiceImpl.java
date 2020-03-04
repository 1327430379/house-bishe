package com.house.service.impl;

import com.house.bean.eo.Location;
import com.house.mapper.LocationMapper;
import com.house.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LocationServiceImpl implements LocationService {
	@Autowired
	private LocationMapper mapper;
	@Override
	public void addLocation(Location l) {
		/*int num=findAllLocation().size();
		String id=IDutil.getID("l000", num+1);
         
		l.setHouse_id(house_id);*/
		mapper.addLocation(l);
	}

	@Override
	public void deleteLocations(String house_id) {
		
mapper.deleteLocations(house_id);
	}

	@Override
	public void updateLocation(Location l) {
		mapper.updateLocation(l);

	}

	@Override
	public Location findOneLocation(String house_id) {
		
		return mapper.findOneLocation(house_id);
	}

	@Override
	public List<Location> findAllLocation() {
		
		return mapper.findAllLocation();
	}

}
