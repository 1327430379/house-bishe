package com.house.bean.eo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.sql.Timestamp;
import java.util.Date;

/***
 * 求租
 */
@Data
@AllArgsConstructor
public class Qiuzu {

    /***
     * 主键
     */
    private String qiuzu_id;

    /***
     * 租客id
     */
    private String customer_id;

    /***
     * 名称
     */
    private String name;

    /***
     * 邮箱
     */
    private String email;

    /***
     * 房源类型
     */
    private String house_type;

    /***
     * 地址
     */
    private String address;

    /***
     * 区域
     */
    private String area;

    /***
     * 期待价格
     */
    private String price;

    /***
     * 描述
     */
    private String description;

    /***
     * 创建时间
     */
    Date createtime;




}
