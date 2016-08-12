package com.cafe24.phoenixooo.crm.CustomerManagement.Service;

import java.util.Map;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CustomerPageHelper;

public interface CustomerService {

	/**
	 * (Service) crm고객등록
	 * @param customer
	 * @return
	 */
	int insertCustomer(CrmCustomer customer);
	
	/**
	 * (Service) crm고객 수
	 * @param shopCode
	 * @return
	 */
	int countCustomer(String shopCode);
	
	/**
	 * (Service) crm고객목록
	 * @return
	 */
	Map<String, Object> getCustomerList(String shopCode, CustomerPageHelper pageHelper);
	
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
