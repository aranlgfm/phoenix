package com.cafe24.phoenixooo.crm.CustomerManagement.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = "/phoenix/crm/customerManagement/form/customerManagement", method = RequestMethod.GET)
	public String crmCustomerManagement(){
		return "/phoenix/crm/customerManagement/customerManagement";
	}
	
	
	/**
	 * CRM-Controller 회원등록화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/customerManagement/form/insertingCustomer", method = RequestMethod.GET)
	public String crmFormInsertingCustomer(){
		return "/phoenix/crm/customerManagement/insertingCustomer";
	}
	
	/**
	 * CRM-Controller 회원등록처리
	 * @param customer
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/customerManagement/process/insertCustomer", method = RequestMethod.POST)
	public String crmProcessInsertCustomer(CrmCustomer customer){
		customerService.insertCustomer(customer);
		return "/phoenix/crm/customerManagement/customerManagement";
	}
	
	/**
	 * CRM-Controller 회원리스트
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/customerManagement/form/customerList", method = RequestMethod.GET)
	public String crmFormCustomerList(Model model){
		List<CrmCustomer> list = customerService.getCustomerList();
		model.addAttribute("list", list);
		return "/phoenix/crm/customerManagement/customerList";
	}
	
	/**
	 * CRM-Controller 회원정보수정화면
	 * @param customer
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/customerManagement/form/modifyCustomer", method = RequestMethod.GET)
	public String crmFormModifyCustomer(CrmCustomer customer, Model model){
		customer = customerService.selectForUpdateCustomer(customer);
		model.addAttribute("customer", customer);
		return "/phoenix/crm/customerManagement/modifyCustomer";
	}
	
	/**
	 * CRM-Controller 회원정보수정처리
	 * @param customer
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/customerManagement/process/modifyCustomer", method = RequestMethod.POST)
	public String crmProcessModifyCustomer(CrmCustomer customer){
		customerService.updateCustomer(customer);
		return "redirect:/phoenix/crm/customerManagement/form/customerList";
	}
	
	/**
	 * CRM-Controller 회원삭제
	 */
	@RequestMapping(value = "/phoenix/crm/customerManagement/process/deleteCustomer", method = RequestMethod.GET)
	public String crmCustomerManagementProcessDeleteCustomer(CrmCustomer customer){
		customerService.deleteCustomer(customer);
		return "redirect:/phoenix/crm/customerManagement/form/customerList";
	}
}
