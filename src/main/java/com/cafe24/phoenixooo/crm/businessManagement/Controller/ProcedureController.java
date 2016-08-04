package com.cafe24.phoenixooo.crm.businessManagement.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Service.CustomerService;

/**
 * 시술내역 시술내역리스트 등 영업관리의 첫페이지 작동시키는 컨트롤러 
 * @author 201-04
 *
 */
@Controller
public class ProcedureController {
	@Autowired
	private CustomerService customerService;
	
	
	
	
	//임시메인
	@RequestMapping(value = "/phoenix/crm/businessManagement/businessManagement", method = RequestMethod.GET)
	public String businessManagement(CrmCustomer customer,Model model) {
		List<CrmCustomer> list = customerService.getCustomerList();
		model.addAttribute("list", list);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
	
	
	//시술내역	
	@RequestMapping(value = "/phoenix/crm/form/procedurePayment", method = RequestMethod.GET)
	public String procedurePayment(CrmCustomer customer,Model model) {
		List<CrmCustomer> list = customerService.getCustomerList();
		model.addAttribute("list", list);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
}	
