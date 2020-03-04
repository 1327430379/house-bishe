package com.house.controller.echarts;

import com.house.beans.Property;
import com.house.service.PropertyService;
import com.house.util.poiUtil;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

@Controller
public class ExcelController {
	@Autowired
	private PropertyService pservice;
	
	//jsp/admin/addProperty_index.jsp：中调用
	@RequestMapping(value = "/excel_pro",method = RequestMethod.POST)
	public String updateInfo(@RequestParam("upfile") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException, InvalidFormatException, ParseException {
		// /usr/lib/tomcat/head/   E:\\Tomcat ruanjian\\head\\
		String path="F:\\bishe_file\\head\\";
		if (file.isEmpty()) {
		
		} else {
			poiUtil.excelDelete(path+"11.xlsx");
			String imgNmae = file.getOriginalFilename();
			System.out.println(imgNmae);
			String imgType = imgNmae.substring(imgNmae.lastIndexOf(".")+1);
			String filename ="11."+imgType ;//学号加扩展名的方式命名
			File newFile = new File(path+filename);//   /usr/lib/tomcat/userImage/

			file.transferTo(newFile);
			List<Property> list=poiUtil.readXls2(path+filename);
			
			for (Property p : list) {
				pservice.addProperty(p);
			}
		}
		
		
		
		return "admin/Propertylist";
	}
}
