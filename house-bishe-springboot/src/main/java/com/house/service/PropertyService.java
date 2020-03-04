package com.house.service;


import com.house.bean.eo.Property;

import java.util.List;

public interface PropertyService {
	
	public void addProperty(Property p);


	public void deletePropertys(String ids[]);


		public void updateProperty(Property p);


	public Property findOneProperty(String Property_id);


	
	public List<Property> findAllProperty();
}
