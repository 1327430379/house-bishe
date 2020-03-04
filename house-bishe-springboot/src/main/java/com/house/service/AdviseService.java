package com.house.service;

import com.house.bean.entity.Advise;

import java.util.List;

public interface AdviseService {

	public void addAdvise(Advise a);


	public void deleteAdvises(int advise_id);





	public Advise findOneAdvise(int advise_id);



	public List<Advise> findAllAdvise();

	public List<Advise> findmyAdvise(String send_id);//查找自己发送的建议
}
