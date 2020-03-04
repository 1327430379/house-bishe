package com.house.mapper;

import com.house.bean.entity.Advise;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AdviseMapper {
	@Insert("insert into Advise(send_id,name,type,email,content,createtime)"
			+" values(#{a.send_id},#{a.name},#{a.type},#{a.email},#{a.content},now() )")	
	public void addAdvise(@Param("a") Advise a);
	
		@Delete("delete from Advise where advise_id=#{advise_id}")
	public void deleteAdvises(@Param("advise_id") int advise_id);

	

		
	@Select("select * from advise where advise_id=#{advise_id}")
	public Advise findOneAdvise(@Param("advise_id") int advise_id);//advise_id是Int型



	@Select("select * from advise order by createtime desc")
	public List<Advise> findAllAdvise();
	
	
	@Select("select * from advise where send_id=#{send_id} order by createtime desc ")
	public List<Advise> findmyAdvise(@Param("send_id") String send_id);//查找自己发送的建议
}
