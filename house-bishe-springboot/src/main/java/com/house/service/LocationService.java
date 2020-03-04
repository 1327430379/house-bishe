package com.house.service;

import com.house.bean.eo.Location;

import java.util.List;

public interface LocationService {
	
	public void addLocation(Location l);


	public void deleteLocations(String house_id);


		public void updateLocation(Location l);


	public Location findOneLocation(String house_id);



	public List<Location> findAllLocation();
}
