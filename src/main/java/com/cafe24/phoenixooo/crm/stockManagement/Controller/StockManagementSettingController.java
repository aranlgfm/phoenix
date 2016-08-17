package com.cafe24.phoenixooo.crm.stockManagement.Controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;
import com.cafe24.phoenixooo.crm.stockManagement.Model.Goods;
import com.cafe24.phoenixooo.crm.stockManagement.Service.StockManagementSettingService;



@Controller
public class StockManagementSettingController {
	
	@Autowired
	StockManagementSettingService stockManagementSettingService;
	
	//거래처 내역을 보여주고, 거래처 등록 버튼이 있는 화면으로. 그러니까 첫 화면.
	@RequestMapping(value = "/phoenix/crm/form/stockManagementSetting", method = RequestMethod.GET)
	public String moveToStockManagementSetting(Account account, Model model) 
	{ 
		List<Account> StockManagementSetting=stockManagementSettingService.selectStockManagementSetting(account);
		model.addAttribute("StockManagementSetting", StockManagementSetting);
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
	public String insertAccount(Account account,Model model,HttpSession session) 
	{ 
		account.setUserCode(((UserCustomer)(session.getAttribute("user"))).getUserCode());
		account.setShopCode(((UserCustomer)(session.getAttribute("user"))).getShopCode());
		
		System.out.println("------------------->"+account);
		stockManagementSettingService.insertAccount(account);
		return "redirect:/phoenix/crm/form/stockManagementSetting";
	}
	
	
	// 제품등록 첫 화면 아직은 버튼 하나밖에 없다
			@RequestMapping(value = "/phoenix/crm/form/stockManagementSettingGoods", method = RequestMethod.GET)
			public String moveToStockManagementSettingGoods(Model model) 
			{ 
				return "/phoenix/crm/stockManagement/stockManagementSettingGoods";
			}
		
		//제품등록화면
		@RequestMapping(value = "/phoenix/crm/form/insertingGoods", method = RequestMethod.GET)
		public String moveToInsertingGoods(Goods goods,Model model) 
		{ 
			
			return "/phoenix/crm/stockManagement/insertingGoods";
		}
		
		//제품등록처리
			@RequestMapping(value = "/phoenix/crm/process/insertGoods", method = RequestMethod.POST)
			public String insertGoods(Goods goods,Model model) 
			{ 
				
				System.out.println("------------->1"+goods);
				/*goods.setGoodsCode("CRM_GOODS_10")*/;
				goods.setShopCode("CRM_SHOP_10");
				goods.setEmployeeCode("CRM_EMPLOYEE_10");
				
				System.out.println("------------->2"+goods);
				stockManagementSettingService.insertGoods(goods);
				System.out.println("------------->3"+goods);
				return "redirect:/phoenix/crm/form/goodsSetting";
			}
			
			//미용용품설정목록화면
			@RequestMapping(value = "/phoenix/crm/form/goodsSetting", method = RequestMethod.GET)
			public String moveToGoodsSetting(Goods goods,Model model) 
			{ 
				//goods.setUserCode("COM_USER_1");
				List<Goods> goodsSetting=stockManagementSettingService.selectGoodsSetting(goods);
				model.addAttribute("goodsSetting", goodsSetting);
				return "/phoenix/crm/stockManagement/goodsSetting";
			}
}
