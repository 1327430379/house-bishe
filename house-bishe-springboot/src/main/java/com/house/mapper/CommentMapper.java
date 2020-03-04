package com.house.mapper;

import com.house.bean.eo.Comment;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface CommentMapper {//改类已经移到custmer
	@Insert("insert into Comment(comment_id,house_id,customer_id ,nickname, description,maketime, star)"
			+" values(#{c.comment_id},#{c.house_id}, #{c.customer_id}, #{c.nickname}, #{c.description},now() , #{c.star} )")	
	public void addComment(@Param("c") Comment c);

		@Delete("delete from Comment where Comment_id=#{Comment_id}")
	public void deleteComments(@Param("Comment_id") String Comment_id);

		@Update("update comment set house_id=#{c.house_id},nickname=#{c.nickname},checkin_time=now(),star=#{c.star}"+
		"  where comment_id=#{c.comment_id}")
		public void updateComment(@Param("a") Comment a);

		
	@Select("select * from comment where comment_id=#{comment_id}")
	public Comment findOneComment(@Param("comment_id") String comment_id);

	@Select("select * from comment ")
	public List<Comment> findAllComment();

	@Select("select * from Comment where house_id=#{house_id}")
	public List<Comment> findCommentbyhid(@Param("house_id") String house_id);
	
	
	
	
}
