package com.cafe24.phoenixooo.crm.CustomerManagement.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Service.CustomerService;
import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeListForSales;

/**
 * CRM-Controller 회원등록화면
 * CRM-Controller 회원등록처리
 * CRM-Controller 회원리스트
 * CRM-Controller 회원정보수정화면
 * CRM-Controller 회원정보수정처리
 * CRM-Controller 회원삭제
 * CRM-Controller 회원상세검색화면
 * CRM-Controller 회원상세검색처리
 */

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = "/phoenix/crm/customerManagement/form/customerManagement", method = RequestMethod.GET)
	public String crmCustomerManagement(){
		return "redirect:/phoenix/crm/customerManagement/form/customerList";
	}
	
	
	/**
	 * CRM-Controller 회원등록화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/customerManagement/form/insertingCustomer", method = RequestMethod.GET)
	public String crmFormInsertingCustomer(Model model){
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String realToday = format.format(today);
		
		model.addAttribute("today", realToday);
		return "/phoenix/crm/customerManagement/insertingCustomer";
	}
	
	/**
	 * CRM-Controller 회원등록처리
	 * @param customer
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/customerManagement/process/insertCustomer", method = RequestMethod.POST)
	public String crmProcessInsertCustomer(HttpSession session, CrmCustomer customer){
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		customer.setShopCode(user.getShopCode());
		customerService.insertCustomer(customer);
		return "/phoenix/crm/customerManagement/customerManagement";
	}
	
	/**
	 * CRM-Controller 회원리스트
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/customerManagement/form/customerList", method = RequestMethod.GET)
	public String crmFormCustomerList(HttpSession session, Model model){
		UserCustomer userCus = new UserCustomer();
		CrmCustomer user = new CrmCustomer();
		userCus = (UserCustomer)session.getAttribute("user");
		user.setShopCode(userCus.getShopCode());
		List<CrmCustomer> list = customerService.getCustomerList(user);
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
	
	/**
	 * CRM-Controller 회원상세검색화면
	 * @param customer
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/searchingForCustomerByDetail", method = RequestMethod.GET)
	public String crmFormSearchingForCustomerByDetail(){
		return "/phoenix/crm/searchingForCustomerByDetail";
	}
	
	/**
	 * CRM-Controller 회원상세검색처리
	 * @param customer
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/searchForCustomerByDetail", method = RequestMethod.POST)
	public String crmProcesSearchForCustomerByDetail(CrmCustomer customer){
		return "/phoenix/crm/searchingForCustomerByDetail";
	}
}
