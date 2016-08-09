package com.cafe24.phoenixooo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	/**
	 * 피닉스 메인
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "phoenix";
	}
	
	/**
	 * 피닉스 메인
	 * @return
	 */
	@RequestMapping(value = "/phoenix", method = RequestMethod.GET)
	public String phoenix() {
		return "phoenix";
	}
	
	/**
	 * CRM 메인
	 * @return
	 */
	@RequestMapping(value = "/crm", method = RequestMethod.GET)
	public String crm() {
		return "redirect:/phoenix/crm/form/procedurePaymentCustomerList";
	}
	
}