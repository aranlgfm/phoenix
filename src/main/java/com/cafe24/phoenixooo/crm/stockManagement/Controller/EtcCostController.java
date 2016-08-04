package com.cafe24.phoenixooo.crm.stockManagement.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;
import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCostType;
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
	 * CRM-Controller 기타지출항목설정
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/stockManagement/etcCostSetting", method = RequestMethod.GET)
	public String crmFormEtcCostSetting(EtcCost etcCost, Model model, HttpSession session){
		// 기존의 기타지출항목 검색
		etcCost.setShopCode((String)session.getAttribute("shopCode"));
		List<EtcCost> list = costService.selectEtcCostList(etcCost);
		model.addAttribute("list", list);
		return "/phoenix/crm/stockManagement/etcCostSetting";
	}
	
	/**
	 * CRM-Controller 기타지출항목등록
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/stockManagement/insertEtcCostItem", method = RequestMethod.POST)
	public String crmProcessInsertEtcCostItem(EtcCost etcCost, Model model){
		costService.insertEtcCost(etcCost);
		return "redirect:/phoenix/crm/form/stockManagement/etcCostSetting";
	}
	
	/**
	 * CRM-Controller 기타지출항목삭제
	 * @param etcCost
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/stockManagement/deleteEtcCostItem", method = RequestMethod.GET)
	public String crmProcessStockManagementDeleteEtcCostItem(EtcCost etcCost, Model model){
		costService.deleteEtcCost(etcCost);
		model.addAttribute("shopCode", etcCost.getShopCode());
		return "redirect:/phoenix/crm/form/stockManagement/etcCostSetting";
	}
	
	/**
	 * CRM-Controller 기타지출세부항목설정화면
	 * @param etcCost
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/stockManagement/etcCostTypeSetting", method = RequestMethod.GET)
	public String crmFormStockManagementEtcCostTypeSetting(EtcCost etcCost, Model model, HttpSession session){
		etcCost.setShopCode((String)session.getAttribute("shopCode"));
		List<EtcCost> list = costService.selectEtcCostList(etcCost);
		List<EtcCostType> typeList = costService.selectEtcCostTypeList(etcCost);
		Map<String, Object> cost = new HashMap<String, Object>();
		cost.put("list", list);
		cost.put("typeList", typeList);
		model.addAttribute("cost", cost);
		return "/phoenix/crm/stockManagement/etcCostTypeSetting";
	}
	
	/**
	 * CRM-Controller 기타지출세부항목등록
	 * @param costType
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/stockManagement/insertEtcCostType", method = RequestMethod.POST)
	public String crmProcessStockManagementInsertEtcCostType(EtcCostType costType, Model model){
		costService.insertEtcCostType(costType);
		return "redirect:/phoenix/crm/form/stockManagement/etcCostTypeSetting";
	}
	
	/**
	 * CRM-Controller 기타지출세부항목삭제
	 * @param costType
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/stockManagement/deleteEtcCostType", method = RequestMethod.GET)
	public String crmProcessStockManagementDeleteEtcCostType(EtcCostType costType, Model model){
		costService.deleteEtcCostType(costType);
		return "redirect:/phoenix/crm/form/stockManagement/etcCostTypeSetting";
	}
}