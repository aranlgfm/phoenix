package com.cafe24.phoenixooo.crm.stockManagement.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;
import com.cafe24.phoenixooo.crm.stockManagement.Service.EtcCostService;

@Controller
public class EtcCostController {
	
	@Autowired
	private EtcCostService costService;
	
	@RequestMapping(value = "/phoenix/crm/stockManagement/stockManagement", method = RequestMethod.GET)
	public String crmFormStockManagement(){
		return "/phoenix/crm/stockManagement/stockManagement";
	}
	
	/**
	 * CRM-Controller 기타지출설정
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/stockManagement/etcCostSetting", method = RequestMethod.GET)
	public String crmFormEtcCostSetting(Model model){
		// 기존의 기타지출항목 검색
		List<EtcCost> list = costService.selectEtcCostList();
		model.addAttribute("list", list);
		return "/phoenix/crm/stockManagement/etcCostSetting";
	}
	
	/**
	 * CRM-Controller 기타지출항목등록
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/stockManagement/insertEtcCostItem", method = RequestMethod.POST)
	public String crmProcessInsertEtcCostItem(EtcCost etcCost){
		
		return "/phoenix/crm/stockManagement/etcCostSetting";
	}
	
}