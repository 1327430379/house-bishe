package com.house.service;


import com.house.bean.eo.Agreement;

import java.util.List;

public interface AgreementService {

	
	public void addAgreement(Agreement a);


	public void deleteAgreements(String ids[]);


		public void updateAgreement(Agreement a);



	public Agreement findOneAgreement(String agreement_id);
	public Agreement findbyhouse_id(String house_id);



	public List<Agreement> findAllAgreement();
	public List<Agreement> findby_provider(String provider_id);
	public void updateAgreeStatus(String agreement_id, String status);
	public List<Agreement> findby_provider2(String status, String provider_id);
	public List<Agreement> findby_customer(String customer_id);
	public void updateContent(String agreement_id, String description, String paid_rent, String status);
}
