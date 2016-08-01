package com.cafe24.phoenixooo.crm.CustomerManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Repository.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	/**
	 * (Service구현) crm고객등록
	 */
	@Override
	public int insertCustomer(CrmCustomer customer) {
		String customerCode = customerDao.getCustomerCode();
		customer.setCustomerCode(customerCode);
		// 커뮤니티회원과 구분하는 것은 나중에 구현할 것
		customer.setUserCode("미용실회원");
		return customerDao.insertCustomer(customer);
	}

	/**
	 * (Service구현) crm고객목록
	 */
	@Override
	public List<CrmCustomer> getCustomerList() {
		return customerDao.getCustomerList();
	}

	/**
	 * (Service구현) crm고객수정
	 */
	@Override
	public int updateCustomer(CrmCustomer customer) {
		return customerDao.updateCustomer(customer);
	}

	/**
	 * (Service구현) crm고객선택(수정용)
	 */
	@Override
	public CrmCustomer selectForUpdateCustomer(CrmCustomer customer) {
		return customerDao.selectForUpdateCustomer(customer);
	}
	
}