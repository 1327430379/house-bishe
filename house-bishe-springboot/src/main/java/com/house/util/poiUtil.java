package com.house.util;

import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.house.bean.eo.Property;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;


public class poiUtil {
	public static void	excelDelete(String path){
		File f=new File(path);
		if(f.exists()){
			f.delete();
		}
	}
	
	
	public static List<Property> readXls2(String path) throws IOException, InvalidFormatException, ParseException, org.apache.poi.openxml4j.exceptions.InvalidFormatException {
	//	String path="E://student.xlsx";
		InputStream is = new FileInputStream(path);
		//HSSFWorkbook hssfWorkbook = new HSSFWorkbook(is);
		org.apache.poi.ss.usermodel.Workbook workbook = WorkbookFactory.create(is);

		List<Property> list = new ArrayList<Property>();
		// 循环工作表Sheet
		for (int numSheet = 0; numSheet <workbook.getNumberOfSheets(); numSheet++) {
			org.apache.poi.ss.usermodel.Sheet sheet = workbook.getSheetAt(numSheet);
			if (sheet == null) {
				continue;
			}
			// 循环行Row
			for (int rowNum = 1; rowNum <=sheet.getLastRowNum(); rowNum++) {
				Row hssfRow =sheet.getRow(rowNum);
				if (hssfRow != null) {
				
					Cell house_id = hssfRow.getCell(0);
					Cell pro_fee = hssfRow.getCell(1);
					Cell water_rent= hssfRow.getCell(2);
					Cell power = hssfRow.getCell(3);
					Cell sanitary_fee = hssfRow.getCell(4);
					Cell elevator = hssfRow.getCell(5);
					Cell total = hssfRow.getCell(6);
					Cell status = hssfRow.getCell(7);
					Cell deadline = hssfRow.getCell(8);
					//Property p=new Property("", getValue2(house_id), getValue2(pro_fee), getValue2(water_rent), getValue2(power),getValue2(sanitary_fee) ,getValue2(elevator) , getValue2(total), "", null);
					Property p=new Property();
					p.setHouse_id(getValue2(house_id));
					p.setPro_fee(Double.parseDouble(getValue2(pro_fee)));
					p.setWater_rent(Double.parseDouble(getValue2(water_rent)));
					p.setPower(Double.parseDouble(getValue2(power)));
					p.setSanitary_fee(Double.parseDouble(getValue2(sanitary_fee)));
					p.setTotal(Double.parseDouble(getValue2(total)));
					p.setElevator(Double.parseDouble(getValue2(elevator)));
					p.setStatus(getValue2(status));
					System.out.println(status);
					String d=getValue2(deadline);
					System.out.println(deadline);
					//p.setDeadline(new java.sql.Date(TimeUtil.getDate(d).getTime()));
					list.add(p);
				}
			}
		}
		return list;
	}
	

	private static  String getValue2(Cell hssfCell) {
		hssfCell.setCellType(Cell.CELL_TYPE_STRING);
	        if (hssfCell.getCellType() == hssfCell.CELL_TYPE_BOOLEAN) {
	            // 返回布尔类型的值
	            return String.valueOf(hssfCell.getBooleanCellValue());
	        } else if (hssfCell.getCellType() == hssfCell.CELL_TYPE_NUMERIC) {
	            // 返回数值类型的值
	            return String.valueOf(hssfCell.getNumericCellValue());
	        } else {
	            // 返回字符串类型的值
	            return String.valueOf(hssfCell.getStringCellValue());
	        }
	    }
	public static void main(String[] args) throws InvalidFormatException, IOException, ParseException {
		/*List<Property> list=readXls2("E://物业1.xlsx");
		for (Property p : list) {
			System.out.println(p.toString());
		}*/
		
		poiUtil.excelDelete("E://test.txt");
	}
}
