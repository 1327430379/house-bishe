package com.house.mapper;

import com.house.bean.eo.Agreement;
import org.apache.ibatis.annotations.*;

import java.util.List;


public interface AgreementMapper {
	
	
	@Insert("insert into agreement(agreement_id,provider_id,customer_id, house_id, description, fee, paid_rent,status,creatime,starttime,deadline)"
			+" values(#{a.agreement_id},#{a.provider_id},#{a.customer_id}, #{a.house_id}, #{a.description}, #{a.fee}, #{a.paid_rent}, #{a.status},now(),#{a.starttime}, #{a.deadline} )")	
	public void addAgreement(@Param("a") Agreement a);

		@Delete("delete from agreement where agreement_id=#{agreement_id}")
	public void deleteAgreements(@Param("agreement_id") String agreement_id);


		@Update("update agreement set customer_id=#{a.customer_id},provider_id=#{a.provider_id},house_id=#{a.house_id},description=#{a.description},"+
		" status=#{a.status},fee=#{a.fee},paid_rent=#{a.paid_rent} where agreement_id=#{a.agreement_id}")
		public void updateAgreement(@Param("a") Agreement a);

		@Update("update agreement set description=#{description},"+
				" status=#{status},paid_rent=#{paid_rent} where agreement_id=#{agreement_id}")
		public void updateContent(@Param("agreement_id") String agreement_id, @Param("description") String description, @Param("paid_rent") String paid_rent, @Param("status") String status);

		@Update("update agreement set status=#{status} where agreement_id=#{agreement_id}")
public void updateAgreeStatus(@Param("agreement_id") String agreement_id, @Param("status") String status);


	@Select("select * from agreement where agreement_id=#{agreement_id}")
	public Agreement findOneAgreement(@Param("agreement_id") String agreement_id);

	@Select("select * from agreement where house_id=#{house_id} and status='生效'  ")
	public Agreement findbyhouse_id(@Param("house_id") String house_id);



	//select *from agreement where provider_id="p0001"
	@Select("select * from agreement where provider_id=#{provider_id}")
	public List<Agreement> findby_provider(@Param("provider_id") String provider_id);


	@Select("select * from agreement where customer_id=#{customer_id}")
	public List<Agreement> findby_customer(@Param("customer_id") String customer_id);

	@Select("select * from agreement")
	public List<Agreement> findAllAgreement();


	@Select("select * from agreement where provider_id=#{provider_id} and status=#{status} ")
	public List<Agreement> findby_provider2(@Param("status") String status, @Param("provider_id") String provider_id);

	@Update("update agreement   set status=#{status} where agreement_id=#{agreement_id}")
	public void updateStatus(@Param("agreement_id") String agreement_id, @Param("status") String status);

}
