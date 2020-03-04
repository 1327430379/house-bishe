package com.house.bean.eo;

import lombok.Data;

import java.util.Date;

/***
 * 房屋物业表
 */
@Data
public class Property {

    private String property_id;

    private String house_id;

    private String customer_id;

    private Double pro_fee;//待缴物业费

    private Double water_rent;//水费

    private Double power;

    private Double sanitary_fee;//卫生费

    private Double elevator;//电梯费

    private Double total;//总费用

    private String status;//缴费状态

    private Date deadline;//截至时间



}
