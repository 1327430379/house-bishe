package com.house.mapper;

import com.house.bean.eo.Images;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ImagesMapper {

	@Insert("insert into Images(Images_id,house_id, basepath)"
			+" values(#{c.images_id},#{c.house_id},#{c.basepath} )")	
	public void addImages(@Param("c") Images c);

		@Delete("delete from Images where Images_id=#{images_id}")
	public void deleteImagess(@Param("images_id") String images_id);

		@Delete("delete from Images where house_id=#{house_id}")
		public void deleteImagebyhouse(@Param("house_id") String house_id);

	@Select("select * from Images where Images_id=#{images_id}")
	public Images findOneImages(@Param("images_id") String images_id);


	@Select("select * from Images where house_id=#{house_id}")
	public List<Images> findAllImagesbyhouseid(@Param("house_id") String house_id);
	
	@Select("select * from Images ")
	public   List<Images> findAll();
	
}
