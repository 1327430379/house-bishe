package com.house.bean.eo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

/***
 * 租客表
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customer {

	/**
	 * 主键id
	 */
	private String customer_id;

	/***
	 * 身份证号码
	 */
	private String idcard;

	/***
	 * 名字
	 */
	private String name;

	/***
	 * 昵称
	 */
	private String nickname;

	/***
	 * 头像
	 */
	private String img;

	/***
	 * 密码
	 */
	private String password;

	/***
	 * 性别
	 */
	private String sex;

	/***
	 * 手机
	 */
	private String mobile;

	/***
	 * QQ
	 */
	private String qq;

	/***
	 * 职业
	 */
	private String job;
	/***
	 * 地址
	 */
	private String address;

	/***
	 * 创建时间
	 */
	private Date createtime;

	/***
	 * 更新时间
	 */
	//private Date updatetime;



}
