package com.house.service;

import com.house.bean.eo.Notice;

import java.util.List;

public interface NoticeService {

	public void addNotice(Notice n);

	public void deleteNotices(String notice_id);

	public void updatecontent(String notice_id, String content);

	public void updateStatus(String notice_id, String status);

	public Notice findOneNotice(String notice_id);

	public List<Notice> findAllNotice();

	public List<Notice> findmysend(String sender_id);

	public void updateSendStatus(String notice_id);

	public List<Notice> findmyrece(String rece_id);
	public List<Notice> findUnread(String rece_id);
	public void updateReceStatus(String notice_id);

	public void updateUnReadStatus(String id);

}
