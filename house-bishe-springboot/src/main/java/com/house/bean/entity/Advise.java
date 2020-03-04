package com.house.bean.entity;
import lombok.Data;

import java.sql.Timestamp;

@Data
public class Advise {

	/***
	 * 主键id
	 */
	private int advise_id;

	/***
	 * 发送者id
	 */
	private String send_id;

	/***
	 * 名称
	 */
	private String name;
	private String type;
	private String email;
	private String content;
	private Timestamp createtime;

	
	
	
	
}
