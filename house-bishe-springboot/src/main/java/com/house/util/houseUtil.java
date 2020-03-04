package com.house.util;


import com.house.bean.entity.HouseTest;

import java.io.File;

public class houseUtil {
	
	public static String getCity(String address1){
		String qu = address1.substring(0,3);
		
		return qu;
	}

	public static String getQu(String address1){
		String qu = address1.substring(address1.lastIndexOf("市")+1);
		
		return qu;
	}
	public static String getShi(String type){
		String shi = type.substring(0,2);
		
		return shi;
	}
	public static String getTing(String type){
		String shi = type.substring(2,4);
		
		return shi;
	}
	
	public static String getWei(String type){
		String shi = type.substring(4,6);
		
		return shi;
	}
	public static String getChu(String type){
		String shi = type.substring(6,8);
		
		return shi;
	}
	
	public static	HouseTest getHouseTest(String address1,String type){
		
		
		
		HouseTest h=new HouseTest(getCity(address1),getQu(address1), getShi(type), getTing(type), getWei(type), getChu(type));
		
		return h;
	}
	
	public static boolean deleteImg(String id,String path){//用来删除头像，图片
		
		
	
		  //参数说明---------path:要删除的文件的文件夹的路径---------str:要匹配的字符串的头
		  boolean b=false;
		  File file = new File(path); 
		  File[] tempFile = file.listFiles(); 
		  for(int i = 0; i < tempFile.length; i++){ 
		   if(tempFile[i].getName().startsWith(id)||tempFile[i].getName().endsWith(id)){ 
		   // System.out.println("将被删除的文件名:"+tempFile[i].getName());
		    boolean del=deleteFile(path+tempFile[i].getName());
		    if(del){
		    System.out.println("文件"+tempFile[i].getName()+"删除成功");
		     b=true;
		    }else{
		    System.out.println("文件"+tempFile[i].getName()+"删除失败");
		    }
		   }
		  }
		  return b;
		
	}
	 private static boolean deleteFile(String path){
		  System.out.println(path);
		  boolean del=false;
		  File file=new File(path);
		  if(file.isFile()){
		   file.delete();
		   del=true;
		  }
		  return del;
		 }
		 
	public static void main(String[] args) {
		/*System.out.println(getCity("桂林市西青区"));
		System.out.println(getQu("桂林市西青区"));
		System.out.println(getShi("二室一厅一卫一厨"));
		System.out.println(getTing("二室一厅一卫一厨"));
		System.out.println(getWei("二室一厅一卫一厨"));
		System.out.println(getChu("二室一厅一卫一厨"));*/
		
		//deleteImg("h0002","E:\\Tomcat ruanjian\\images_house\\");
	}
}
