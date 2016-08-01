package com.cafe24.phoenixooo.crm.CustomerManagement.Repository;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;

public interface CustomerDao {
	
	/**
	 * (Repository) crm고객등록
	 * @return
	 */
	int insertCustomer(CrmCustomer customer);
	
	/**
	 * (Repository) crm고객코드가져오기
	 * @return
	 */
	String getCustomerCode();
}
