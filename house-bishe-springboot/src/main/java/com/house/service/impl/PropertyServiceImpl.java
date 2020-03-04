package com.house.service.impl;

import com.house.bean.eo.Property;
import com.house.mapper.PropertyMapper;
import com.house.service.PropertyService;
import com.house.util.IDutil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PropertyServiceImpl implements PropertyService {//物业费
	@Autowired
	private PropertyMapper mapper;
	@Override
	public void addProperty(Property p) {
		int num=findAllProperty().size();
		String id=IDutil.getID("pr000", num+1);
        
		p.setProperty_id(id);
		mapper.addProperty(p);
	}

	@Override
	public void deletePropertys(String ids[]) {
		for(String id:ids){
			mapper.deletePropertys(id);
		}

	}

	@Override
	public void updateProperty(Property p) {
		mapper.updateProperty(p);

	}

	@Override
	public Property findOneProperty(String Property_id) {
		
		return mapper.findOneProperty(Property_id);
	}

	@Override
	public List<Property> findAllProperty() {
		
		return mapper.findAllProperty();
	}

}
