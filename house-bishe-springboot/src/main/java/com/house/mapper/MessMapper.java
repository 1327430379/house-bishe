package com.house.mapper;

import com.house.bean.eo.Mess;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface MessMapper {
	@Select("select * from mess where mess_id=#{mess_id}")
	public Mess findOneMess(@Param("mess_id") String mess_id);
	
	@Insert("insert into Mess(mess_id,pid,content,createtime)"
			+" values(#{m.mess_id},#{m.pid},#{m.content},now())")	
	public void addMess(@Param("m") Mess m);
	
	@Select("select * from Mess  where pid=#{pid}   order by createtime  desc")
	public List<Mess> findMyMess(@Param("pid") String pid);
	
	
	@Select("select * from Mess")
	public List<Mess> findAllMess();//计算消息长度
}
