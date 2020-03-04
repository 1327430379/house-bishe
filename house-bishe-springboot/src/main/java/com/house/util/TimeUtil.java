package com.house.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {

public	static Date getDate(String str) throws ParseException{
	Date current =null;
	
	 current= new SimpleDateFormat("yyyy/MM/dd").parse(str);
	 
	 return current;
	}
	public static void main(String[] args) {
		/*Date date=new Date();
		Calendar calendar = Calendar.getInstance();

		calendar.setTime(date);

		calendar.add(Calendar.MONTH, 3);

		System.out.println("增加月份后的日期："+calendar.getTime());
		java.sql.Date d=new java.sql.Date(calendar.getTime().getTime());
		System.out.println(d);
*/
		
		String str1 = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
		System.out.println(new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()));
	}
}
