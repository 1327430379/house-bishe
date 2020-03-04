package com.house.bean.eo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/***
 * 通知实体
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Notice {
	private String notice_id;
	private String sender_id;
	private String nickname1;
	private String img1;
	private String rece_id;
	private String nickname2;
	private String img2;
	private String content;
	private String senderstatus;//1不显示,0:显示，
	private String recestatus;//0：未读，1：已读， 2：不显示
	private Date createtime;

}
