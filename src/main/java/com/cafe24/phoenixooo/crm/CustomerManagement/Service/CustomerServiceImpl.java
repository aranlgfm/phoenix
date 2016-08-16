package com.cafe24.phoenixooo.crm.CustomerManagement.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CustomerPageHelper;
import com.cafe24.phoenixooo.crm.CustomerManagement.Repository.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {

	private CustomerPageHelper pageHelper;
	@Autowired
	private CustomerDao customerDao;
	
	/**
	 * (Service구현) crm고객등록
	 */
	@Override
	@Transactional
	public int insertCustomer(CrmCustomer customer) {
//		String customerCode = customerDao.getCustomerCode();
//		customer.setCustomerCode(customerCode);
		// 커뮤니티회원과 구분하는 것은 나중에 구현할 것
		CrmCustomer emp = new CrmCustomer();
		if(customer.getEmployeeCode() != null && customer.getEmployeeCode() != ""){
			emp = customerDao.selectForCustomer(customer);
			customer.setEmployeeName(emp.getEmployeeName());
		}
		customer.setUserCode("미용실회원");
		return customerDao.insertCustomer(customer);
	}
	
	/**
	 * (Service구현) crm고객 수
	 */
//	@Override
//	public int countCustomer(String shopCode) {
//		return customerDao.countCustomer(shopCode);
//	}

	/**
	 * (Service구현) crm고객목록
	 */
	@Override
	public Map<String, Object> getCustomerList(String shopCode, CustomerPageHelper pageHelper, CrmCustomer customer, String word, String phone) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("shopCode", shopCode);
		// 검색 : employeeCode, customerSexFlag
		map.put("word", word);
		map.put("phone", phone);
		map.put("employeeCode", customer.getEmployeeCode());
		map.put("customerSexFlag", customer.getCustomerSexFlag());
		pageHelper.setStartRow(pageHelper.getPageNo());
		
		pageHelper.setLastPageNo(customerDao.countCustomer(map));
		
		map.put("startRow", pageHelper.getStartRow());
		map.put("endRow", pageHelper.getEndRow());

		List<CrmCustomer> list = customerDao.getCustomerList(map);
		
		map.put("list", list);
		map.put("pageHelper", pageHelper);
		return map;
	}

	/**
	 * (Service구현) crm고객수정
	 */
	@Override
	public int updateCustomer(CrmCustomer customer) {
		CrmCustomer emp = new CrmCustomer();
		if(customer.getEmployeeCode() != null && customer.getEmployeeCode() != ""){
			emp = customerDao.selectForCustomer(customer);
			customer.setEmployeeName(emp.getEmployeeName());
		}
		return customerDao.updateCustomer(customer);
	}

	/**
	 * (Service구현) crm고객선택(수정용)
	 */
	@Override
	public CrmCustomer selectForUpdateCustomer(CrmCustomer customer) {
		CrmCustomer emp = new CrmCustomer();
		if(customer.getEmployeeCode() != null && customer.getEmployeeCode() != ""){
			emp = customerDao.selectForCustomer(customer);
			customer.setEmployeeName(emp.getEmployeeName());
		}
		customer = customerDao.selectForUpdateCustomer(customer);
		return customer;
	}

	/**
	 * (Service구현) crm고객삭제
	 */
	@Override
	public int deleteCustomer(CrmCustomer customer) {
		return customerDao.deleteCustomer(customer);
	}

}