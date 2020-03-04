package com.house.bean.entity;

public class Product2 {
	  
    private String name;    //类别名称
    private int value;        //销量
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	public Product2(String name, int value) {
		super();
		this.name = name;
		this.value = value;
	}
	public Product2() {
		super();
		
	}
    
    
    
}
