package com.cafe24.phoenixooo.crm.businessManagement.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class BusinessManagementSettingController {
	
	@RequestMapping(value = "/phoenix/crm/form/login", method = RequestMethod.GET)
	public String crmFormBusiness(){
		return "/phoenix/crm/crmTemp";
	}
}
