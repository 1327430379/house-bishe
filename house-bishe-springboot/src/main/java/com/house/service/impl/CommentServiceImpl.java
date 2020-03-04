package com.house.service.impl;

import com.house.bean.eo.Comment;
import com.house.mapper.CommentMapper;
import com.house.service.CommentService;
import com.house.util.IDutil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentMapper mapper;
	@Override
	public void addComment(Comment c) {
		int num=findAllComment().size();
		String id=IDutil.getID("com00", num+1);
        c.setComment_id(id);
        
        mapper.addComment(c);

	}

	@Override
	public void deleteComments(String ids[]) {
		for(String id:ids){
			mapper.deleteComments(id);
		}
		

	}

	@Override
	public void updateComment(Comment a) {
		mapper.updateComment(a);

	}

	@Override
	public Comment findOneComment(String Comment_id) {
		
		return mapper.findOneComment(Comment_id);
	}

	@Override
	public List<Comment> findCommentbyhid(String house_id){
		
		return mapper.findCommentbyhid(house_id);
	}

	@Override
	public List<Comment> findAllComment() {
		
		return mapper.findAllComment();
	}

}
