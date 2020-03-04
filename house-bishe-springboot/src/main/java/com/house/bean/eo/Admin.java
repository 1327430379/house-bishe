package com.house.bean.eo;


import lombok.Data;

@Data
public class Admin {

	/***
	 * 主键id
	 */
	private String admin_id;

	/***
	 * 管理名称
	 */
	private String admin_name;

	/***
	 * 密码
	 */
	private String password;

	/***
	 * 邮箱
	 */
	private String email;

	/***
	 * 手机号码
	 */
	private String mobile;




}
