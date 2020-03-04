package com.house.service;

import com.house.bean.entity.Product;
import com.house.bean.entity.Product2;

import java.util.List;

public interface CountService {

    public int CityCount(String city);//计算某个城市所有房屋数量
    public int QuCount(String qu);//计算某个区
    public int[] qucountTotal(String qu[]);
    public int[] cityCountTotal(String city[]);

    public int customerCount(String qu);
    public int priceavg(String city, String area);//查询某个城市的某个面积的房价
    public  List<Product2> housecountnum1();
    public  List<Product> cityhousecount(String city);
    public  List<Product2> cityhousecount2(String city);
    public  List<Product> Areacount(String city);
    public  List<Product> Areaprice(String city);
}
