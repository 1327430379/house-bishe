package com.house.bean.eo;


import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

/**
 * 评论实体类
 */
@Data
@AllArgsConstructor
public class Comment {

	/***
	 * 主键id
	 */
	private String comment_id;

	/***
	 * 房源id
	 */
	private String house_id;

	/***
	 * 评论表
	 */
	private String customer_id;

	/***
	 * 昵称
	 */
	private String nickname;

	/***
	 * 评论内容
	 */
	private String description;

	/***
	 * 评论时间
	 */
	private Date maketime;

	/***
	 * 入住时间
	 */
	private Date livetime;


	/***
	 * 分数
	 */
	private String star;




}
