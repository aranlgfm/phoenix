package com.cafe24.phoenixooo.crm.CustomerManagement.Repository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;

public interface CustomerDao {
	
	/**
	 * (Repository) crm고객등록을 위한 직원검색
	 * @param customer
	 * @return
	 */
	CrmCustomer selectForCustomer(CrmCustomer customer);
	
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
	 * (Repository) crm고객 수
	 * @param shopCode
	 * @return
	 */
	int countCustomer(String shopCode);
	
	/**
	 * (Repository) crm고객목록
	 * @return
	 */
	List<CrmCustomer> getCustomerList(Map<String, Object> map);
	
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
