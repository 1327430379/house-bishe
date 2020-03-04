package com.house.util;

import java.io.File;

public class ImgRename {
	
	static void fun(){
		 File file = new File("F:\\bishe_file\\img1\\"); 
		  File[] tempFile = file.listFiles(); 
		  int a=0;
		//  File file2;
		  String str="";
		  for(int i = 0; i < tempFile.length; i++){//tempFile[i].getName(
			  System.out.println(tempFile[i].getName());
			  a=421+i;
			  str="F:\\bishe_file\\img\\h0"+a+"_01.png";
			  File file2= new File("F:\\bishe_file\\img1\\"+tempFile[i].getName());  
		        //将原文件更改为f:\a\b.xlsx，其中路径是必要的。注意  
		        file2.renameTo(new File(str)); 
			  
		  }
	}
	static void fun2(){
		 File file = new File("F:\\bishe_file\\img2\\"); 
		  File[] tempFile = file.listFiles(); 
		  int a=0;
		//  File file2;
		  String str="";
		  for(int i = 0; i < tempFile.length; i++){//tempFile[i].getName(
			  System.out.println(tempFile[i].getName());
			  a=421+i;
			  str="F:\\bishe_file\\img\\h0"+a+"_02.png";
			  File file2= new File("F:\\bishe_file\\img2\\"+tempFile[i].getName());  
		        //将原文件更改为f:\a\b.xlsx，其中路径是必要的。注意  
		        file2.renameTo(new File(str)); 
		  }
	}
	
	
	static void fun3(){
		 File file = new File("F:\\bishe_file\\h1\\"); 
		  File[] tempFile = file.listFiles(); 
		  int a=0;
		//  File file2;
		  String str="";
		  for(int i = 0; i < tempFile.length; i++){//tempFile[i].getName(
			  System.out.println(tempFile[i].getName());
			  a=11+i;
			  str="F:\\bishe_file\\h1\\p00"+a+".jpg";
			  File file2= new File("F:\\bishe_file\\h1\\"+tempFile[i].getName());  
		        //将原文件更改为f:\a\b.xlsx，其中路径是必要的。注意  
		        file2.renameTo(new File(str)); 
		  }
	}
	
public static void main(String[] args) {
	
	fun3();

}
}
