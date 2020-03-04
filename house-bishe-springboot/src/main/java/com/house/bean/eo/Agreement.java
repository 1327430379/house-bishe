package com.house.bean.eo;


import lombok.Data;

import java.util.Date;

/**
 * 合同
 */
@Data
public class Agreement {

	/***
	 * 生成格式要求:a000
	 */
	private String agreement_id;
	/***
	 * 房东Id
	 */
	private String provider_id;

	/***
	 * 租客id
	 */
	private String customer_id;

	/***
	 * 房源id
	 */
	private String house_id;

	/***
	 * 描述
	 */
	private String description;

	/***
	 * 应缴租金
	 */
	private String   fee;

	/***
	 * 已交租金
	 */
	private String  paid_rent;

	/***
	 * 合同状态:生效，失效
	 */
	private String status;

	/***
	 * 合同创建时间
	 */
	private Date creatime;

	/***
	 * 合同生效时间
	 */
	private Date starttime;

	/***
	 * 合同失效日期
	 */
	private Date deadline;


}
