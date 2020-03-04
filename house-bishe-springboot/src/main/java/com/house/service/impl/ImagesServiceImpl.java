package com.house.service.impl;

import com.house.bean.eo.Images;
import com.house.mapper.ImagesMapper;
import com.house.service.ImagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImagesServiceImpl implements ImagesService {
	@Autowired
	private ImagesMapper mapper;
	@Override
	public void addImages(Images i) {
		/*int num=findAll().size();
		String id=IDutil.getID("i000", num+1);
      
		i.setImage_id(id);*/
		mapper.addImages(i);
	}

	@Override
	public void deleteImagess(String Images_id) {
		

	}

	@Override
	public Images findOneImages(String Images_id) {
		
		return mapper.findOneImages(Images_id);
	}

	@Override
	public List<Images> findAllImages(String house_id) {
		
		return mapper.findAllImagesbyhouseid(house_id);
	}
	public   List<Images> findAll(){
		return mapper.findAll();
	}

	@Override
	public void deleteImagebyhouse(String house_id) {
		mapper.deleteImagebyhouse(house_id);
		
	}
}
