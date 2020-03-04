package com.house.bean.entity;

import lombok.Data;

import java.util.Date;

@Data
public class House_view {
	private String house_id;
	private String address;
	private String address2;
	private String provider_id;//
	private String p_name;
	private String ceng;
	private String area;//面积
	private String type;//户型
	private String paytype;
	private String status;//(Y：已出租， F：未出租)
	//private String describe;//个性描述
	private Float score;//评分
	private float price;
	private String img;
	private Date createtime;//发布时间

	private String describe;//比如：靠近医院，美食街，公园，公交站
	private String transport;//交通情况:地铁，公交站
	private  String park;
	private String eat;
	private String hospital;


	private String kitchen_ware;//厨具 ： 做饭、做菜的用具
	private String hot_shower;//热水淋浴
	private String wifi;//无线网络
	private String air_conditioner;
	private String   lift;//电梯
	private String  fridge;//冰箱
	private String washing_machine;//洗衣机





}
