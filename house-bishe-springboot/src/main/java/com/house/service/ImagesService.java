package com.house.service;

import com.house.bean.eo.Images;

import java.util.List;

public interface ImagesService {
	
	public void addImages(Images i);

	public void deleteImagess(String Images_id);

		
		
	
	public Images findOneImages(String Images_id);



	public List<Images> findAllImages(String house_id);
	public   List<Images> findAll();
	public void deleteImagebyhouse(String house_id);
}
