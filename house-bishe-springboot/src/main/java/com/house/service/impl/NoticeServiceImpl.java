package com.house.service.impl;

import com.house.bean.eo.Notice;
import com.house.mapper.NoticeMapper;
import com.house.service.NoticeService;
import com.house.util.IDutil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeMapper mapper;
	@Override
	public void addNotice(Notice n) {
		int num=findAllNotice().size();
		String id=IDutil.getID("n000", num+1);
		n.setNotice_id(id);
		mapper.addNotice(n);
	}

	@Override
	public void deleteNotices(String notice_id) {
		mapper.deleteNotices(notice_id);

	}

	@Override
	public void updatecontent(String notice_id, String content) {
		
mapper.updatecontent(notice_id, content);
	}

	@Override
	public void updateStatus(String notice_id, String status) {
		

	}

	@Override
	public Notice findOneNotice(String notice_id) {
		
		return mapper.findOneNotice(notice_id);
	}

	@Override
	public List<Notice> findAllNotice() {
		
		return mapper.findAllNotice();
	}

	@Override
	public List<Notice> findmysend(String sender_id) {
		
		return mapper.findmysend(sender_id);
	}

	@Override
	public void updateSendStatus(String notice_id) {
		
mapper.updateSendStatus(notice_id);
	}

	@Override
	public List<Notice> findmyrece(String rece_id) {
		
		return mapper.findmyrece(rece_id);
	}

	@Override
	public void updateReceStatus(String notice_id) {
		
mapper.updateReceStatus(notice_id);
	}

	@Override
	public List<Notice> findUnread(String rece_id) {
		
		return mapper.findUnread(rece_id);
	}

	@Override
	public void updateUnReadStatus(String id) {//rece_id
		mapper.updateUnReadStatus(id);
		
	}

}
