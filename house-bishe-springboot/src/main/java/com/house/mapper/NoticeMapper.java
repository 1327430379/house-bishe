package com.house.mapper;

import com.house.bean.eo.Notice;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface NoticeMapper {//senderstatus,recestatus
	/*private String senderstatus;//1不显示,0:显示，
	private String recestatus;//0：未读，1：已读， 2：不显示
*/	@Insert("insert into Notice(notice_id,sender_id,nickname1, img1,rece_id,nickname2,img2,content,senderstatus,recestatus,createtime)"
			+" values(#{n.notice_id},#{n.sender_id},#{n.nickname1},#{n.img1},#{n.rece_id},#{n.nickname2},#{n.img2},#{n.content},#{n.senderstatus},#{n.recestatus},now())")	
	public void addNotice(@Param("n") Notice n);

		@Delete("delete from notice where notice_id=#{notice_id}")
	public void deleteNotices(@Param("notice_id") String notice_id);


		@Update("update notice set content=#{content}"+
		"  where notice_id=#{c.notice_id}")
		public void updatecontent(@Param("notice_id") String notice_id, @Param("content") String content);


		@Update("update notice set status=#{status}"+
				"  where notice_id=#{notice_id}")
				public void updateStatus(@Param("notice_id") String notice_id, @Param("status") String status);


	@Select("select * from notice where notice_id=#{notice_id}")
	public Notice findOneNotice(@Param("notice_id") String notice_id);


	@Select("select * from notice order by createtime  desc")
	public List<Notice> findAllNotice();



	@Select("select * from notice where sender_id=#{sender_id} and senderstatus='0'  order by createtime  desc")
	public List<Notice> findmysend(@Param("sender_id") String sender_id);//查询发件箱所有东西,0为显示


	@Update("update notice set senderstatus='1' "+
			"  where notice_id=#{notice_id}")
	public void updateSendStatus(@Param("notice_id") String notice_id);//将发件的状态改为不显示


	//recestatus !='0'  or recestatus !='1'
	@Select("select * from notice  where rece_id=#{rece_id} and recestatus !='2' order by createtime  desc")
	public List<Notice> findmyrece(@Param("rece_id") String rece_id);//查询自己收件箱所有,查询所有需要要显示的notice


	@Select("select * from notice  where rece_id=#{rece_id} and recestatus='0' order by createtime  desc")
	public List<Notice> findUnread(@Param("rece_id") String rece_id);//查询所有未读的

	@Update("update notice set recestatus='2' "+
			"  where notice_id=#{notice_id}")
	public void updateReceStatus(@Param("notice_id") String notice_id);


	@Update("update notice set recestatus='1' "+
			"  where rece_id=#{rece_id}")
	public void updateUnReadStatus(@Param("rece_id") String rece_id);//将所有信息变为已读
	
	
}
