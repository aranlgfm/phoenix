package com.cafe24.phoenixooo.crm.CustomerManagement.Service;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;

public interface CustomerService {

	/**
	 * (Service) crm고객등록
	 * @param customer
	 * @return
	 */
	int insertCustomer(CrmCustomer customer);
}
