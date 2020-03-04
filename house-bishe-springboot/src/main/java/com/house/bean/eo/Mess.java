package com.house.bean.eo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Mess {

	private String mess_id;
	private String pid;
	private String content;
	//private Date createtime;


}
