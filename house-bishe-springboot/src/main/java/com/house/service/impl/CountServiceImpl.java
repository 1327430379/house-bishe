package com.house.service.impl;

import com.house.bean.entity.Product;
import com.house.bean.entity.Product2;
import com.house.mapper.CountMapper;
import com.house.service.CountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountServiceImpl implements CountService {
	@Autowired
	private CountMapper mapper;
	@Override
	public int CityCount(String city) {
		
		return mapper.cityCount(city);
	}

	@Override
	public int QuCount(String qu) {
		
		return mapper.quCount(qu);
	}

	@Override
	public int[] qucountTotal(String[] qu) {
		int a[]=new int[qu.length];
		for(int i=0;i<qu.length;i++){
			a[i]=QuCount(qu[i]);
			
		}
		return a;
	}

	@Override
	public int[] cityCountTotal(String[] city) {
		
		int a[]=new int[city.length];
		for(int i=0;i<city.length;i++){
			a[i]=QuCount(city[i]);
			
		}
		return a;
	}

	@Override
	public int customerCount(String qu) {
		
		return mapper.customerCount(qu);
	}

	@Override
	public int priceavg(String city, String area) {//某个城市按照房屋面积进行统计
		
		return mapper.priceavg(city, area);
	}

	@Override
	public List<Product2> housecountnum1() {
	
		return mapper.housecountnum1();
	}

	@Override
	public List<Product> cityhousecount(String city) {
		
		return mapper.cityhousecount(city);
	}

	@Override
	public List<Product2> cityhousecount2(String city) {
		// TODO Auto-generated method stub
		return mapper.cityhousecount2(city);
	}

	@Override
	public List<Product> Areacount(String city) {
		
		return mapper.Areacount(city);
	}

	@Override
	public List<Product> Areaprice(String city) {
		
		return mapper.Areaprice(city);
	}

	/*@Override
	public List<Integer> qucountTotal(String[] qu) {
		List<Integer> list=new ArrayList<Integer>();
	
		for(String q:qu){
			list.add(QuCount(q));
		}
		
		
		return list;
	}

	@Override
	public List<Integer> cityCountTotal(String[] city) {
		List<Integer> list=new ArrayList<Integer>();
		
		for(String q:city){
			list.add(CityCount(q));
		}
		return list;
	}*/

	

}
