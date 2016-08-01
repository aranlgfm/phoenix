package com.cafe24.phoenixooo.crm.CustomerManagement.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = "/phoenix/crm/customerManagement", method = RequestMethod.GET)
	public String crmCustomerManagement(){
		return "/phoenix/crm/customerManagement";
	}
	
	
	/**
	 * CRM-Controller 회원등록화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/insertingCustomer", method = RequestMethod.GET)
	public String crmFormInsertingCustomer(){
		return "/phoenix/crm/insertingCustomer";
	}
	
	/**
	 * CRM-Controller 회원등록처리
	 * @param customer
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/insertCustomer", method = RequestMethod.POST)
	public String crmProcessInsertCustomer(CrmCustomer customer){
		customerService.insertCustomer(customer);
		return "/phoenix/crm/customerManagement";
	}
	
	/**
	 * CRM-Controller 회원리스트
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/customerList", method = RequestMethod.GET)
	public String crmFormCustomerList(){
		return "/phoenix/crm/customerList";
	}
}
