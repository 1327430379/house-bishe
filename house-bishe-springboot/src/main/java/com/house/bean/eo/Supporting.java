package com.house.bean.eo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/***
 * 房屋配套设施表
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Supporting {


	/***
	 * 就等于house_id,这里采用的分表策略
	 */
	private String house_id;

	/***
	 * 厨具 ： 做饭、做菜的用具
	 */
	private String kitchen_ware;

	/***
	 * 热水淋浴
	 */
	private String hot_shower;

	/***
	 * 无线网络
	 */
	private String wifi;

	/***
	 * 空调
	 */
	private String air_conditioner;

	/***
	 * 电梯
	 */
	private String   lift;

	/***
	 * 冰箱
	 */
	private String  fridge;

	/**
	 * 洗衣机
	 */
	private String washing_machine;

	/***
	 * /图片
	 */
	//private String description;



}
