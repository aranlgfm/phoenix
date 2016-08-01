package com.cafe24.phoenixooo.crm.CustomerManagement.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomerController {
	
	/**
	 * CRM-Controller 회원등록화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/insertingCustomer", method = RequestMethod.GET)
	public String CrmFormInsertingCustomer(){
		return "/phoenix/crm/insertingCustomer";
	}
}
