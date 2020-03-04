package com.house.bean.eo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/***
 * 房源位置表
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Location {

    private String house_id;

    private String description;//比如：靠近医院，美食街，公园，公交站

    private String transport;//交通情况:地铁，公交站

    private  String park;

    private String eat;

    private String hospital;



}
