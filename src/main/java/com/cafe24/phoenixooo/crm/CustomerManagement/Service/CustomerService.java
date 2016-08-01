package com.cafe24.phoenixooo.crm.CustomerManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;

public interface CustomerService {

	/**
	 * (Service) crm고객등록
	 * @param customer
	 * @return
	 */
	int insertCustomer(CrmCustomer customer);
	
	/**
	 * (Service) crm고객목록
	 * @return
	 */
	List<CrmCustomer> getCustomerList();
	
	/**
	 * (Service) crm고객수정
	 * @param customer
	 * @return
	 */
	int updateCustomer(CrmCustomer customer);
	
	/**
	 * (Service) crm고객검색(수정용)
	 * @param customer
	 * @return
	 */
	CrmCustomer selectForUpdateCustomer(CrmCustomer customer);
	
	/**
	 * (Service) crm고객삭제
	 */
	int deleteCustomer(CrmCustomer customer);
}
