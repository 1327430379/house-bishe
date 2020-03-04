package com.house.service;

import com.house.bean.eo.Comment;

import java.util.List;

public interface CommentService {
	
	public void addComment(Comment c);

	public void deleteComments(String ids[]);

	
		public void updateComment(Comment a);

		
	
	public Comment findOneComment(String Comment_id);


	
	public List<Comment> findCommentbyhid(String house_id);
	public List<Comment> findAllComment();
	
}
