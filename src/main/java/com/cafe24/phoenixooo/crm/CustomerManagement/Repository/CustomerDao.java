package com.cafe24.phoenixooo.crm.CustomerManagement.Repository;

import java.util.List;

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
	
	/**
	 * (Repository) crm고객목록
	 * @return
	 */
	List<CrmCustomer> getCustomerList();
	
	/**
	 * (Repository) crm고객수정
	 * @return
	 */
	int updateCustomer(CrmCustomer customer);
	
	/**
	 * (Repository) crm고객선택(수정용)
	 * @param customer
	 * @return
	 */
	CrmCustomer selectForUpdateCustomer(CrmCustomer customer);
	
	/**
	 * (Repository) crm고객삭제
	 * @param customer
	 * @return
	 */
	int deleteCustomer(CrmCustomer customer);
}
