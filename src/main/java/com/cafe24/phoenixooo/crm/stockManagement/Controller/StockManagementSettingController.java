package com.cafe24.phoenixooo.crm.stockManagement.Controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;
import com.cafe24.phoenixooo.crm.stockManagement.Service.StockManagementSettingService;



@Controller
public class StockManagementSettingController {
	
	@Autowired
	StockManagementSettingService stockManagementSettingService;
	
	//거래처 내역을 보여주고, 거래처 등록 버튼이 있는 화면으로. 그러니까 첫 화면.
	@RequestMapping(value = "/phoenix/crm/form/stockManagementSetting", method = RequestMethod.GET)
	public String moveToStockManagementSetting(Model model) 
	{ 
		return "/phoenix/crm/stockManagement/stockManagementSetting";
	}
	
	//거래처를 등록하면 화면으로
	@RequestMapping(value = "/phoenix/crm/form/insertingAccount", method = RequestMethod.GET)
	public String moveToInsertingAccount(Account account,Model model) 
	{ 
		return "/phoenix/crm/stockManagement/insertingAccount";
	}
	
	//거래처 등록 처리
	@RequestMapping(value = "/phoenix/crm/process/insertAccount", method = RequestMethod.POST)
	public String insertAccount(Account account,Model model) 
	{ 
		account.setShopCode("CRM_SHOP_1");
		stockManagementSettingService.insertAccount(account);
		return "redirect:/phoenix/crm/form/stockManagementSetting";
	}
}
