package com.house.util;

import java.util.Random;
import java.util.UUID;

public class IDutil {
	
	public static String getRandnum(){
		String randnum="";
		 Random random = new Random();	
		 
		 int itmp = 0;
		 for (int i = 0; i < 2; i++) {
	            
	                itmp = random.nextInt(26) + 65;	//生成A~Z的字母
	           
	            char ctmp = (char) itmp;
	            randnum += String.valueOf(ctmp);
	           
	}
		 return randnum;
	}
	
	
	public  static String getID(String str,int num){
		String randnum=getRandnum();
		return str+num+randnum;
	}

	public static String getUUId(){
		return UUID.randomUUID().toString().replace("-", "");
	}
	
	
}