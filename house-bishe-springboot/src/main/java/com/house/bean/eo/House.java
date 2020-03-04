package com.house.bean.eo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class House {


	private String house_id;
	private String provider_id;//
	private String address;
	private String address2;
	private String ceng;
	private String area;//面积
	private String paytype;
	private String type;//户型

	private String status;//入住，待审核：待审核-->空闲-->入住状态,待审核-->审核未过(审核未过,入住,待审核,空闲)
	//private String describe;//个性描述
	private Float score;//评分
	private float price;
	private String img;
	private Date createtime;//发布时间
	private Date updatetime;






}
