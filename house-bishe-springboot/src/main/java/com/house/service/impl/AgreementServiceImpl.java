package com.house.service.impl;

import com.house.bean.eo.Agreement;
import com.house.mapper.AgreementMapper;
import com.house.service.AgreementService;
import com.house.util.IDutil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AgreementServiceImpl implements AgreementService {
	@Autowired
	private AgreementMapper mapper;
	@Override
	public void addAgreement(Agreement a) {
		
		int num=findAllAgreement().size();
		String agreement_id=IDutil.getID("a000", num+1);
		a.setAgreement_id(agreement_id);
		mapper.addAgreement(a);

	}

	@Override
	public void deleteAgreements(String ids[]) {
		for(String id:ids){
			mapper.deleteAgreements(id);
		}

	}

	@Override
	public void updateAgreement(Agreement a) {
		
mapper.updateAgreement(a);
	}

	@Override
	public Agreement findOneAgreement(String agreement_id) {
		
		return mapper.findOneAgreement(agreement_id);
	}

	@Override
	public List<Agreement> findAllAgreement() {
		
		return mapper.findAllAgreement();
	}

	@Override
	public List<Agreement> findby_provider(String provider_id) {

		return mapper.findby_provider(provider_id);
	}
	@Override
	public Agreement findbyhouse_id( String house_id){
		return mapper.findbyhouse_id(house_id);
	}

	@Override
	public void updateAgreeStatus(String agreement_id, String status) {
		mapper.updateAgreeStatus(agreement_id, status);
		
	}

	@Override
	public List<Agreement> findby_provider2(String status, String provider_id) {
	
		return mapper.findby_provider2(status, provider_id);
	}

	@Override
	public List<Agreement> findby_customer(String customer_id) {
		
		return mapper.findby_customer(customer_id);
	}

	

	@Override
	public void updateContent(String agreement_id, String description, String paid_rent, String status) {
		mapper.updateContent(agreement_id, description, paid_rent, status);
		
	}
	
}
