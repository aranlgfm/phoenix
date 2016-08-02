package com.cafe24.phoenixooo.crm.stockManagement.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EtcCostController {
	
	@RequestMapping(value = "/phoenix/crm/stockManagement/stockManagement", method = RequestMethod.GET)
	public String crmFormStockManagement(){
		return "/phoenix/crm/stockManagement/stockManagement";
	}
	
	/**
	 * CRM-Controller 기타지출설정
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/stockManagement/etcCostSetting", method = RequestMethod.GET)
	public String crmFormEtcCostSetting(){
		return "/phoenix/crm/stockManagement/etcCostSetting";
	}
	
	/**
	 * CRM-Controller 기타지출항목등록
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/stockManagement/insertEtcCostItem", method = RequestMethod.POST)
	public String crmProcessInsertEtcCostItem(){
		return "/phoenix/crm/stockManagement/etcCostSetting";
	}
	
}
