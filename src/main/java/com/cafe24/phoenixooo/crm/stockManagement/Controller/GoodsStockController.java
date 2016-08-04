package com.cafe24.phoenixooo.crm.stockManagement.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsPayment;
import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStock;
import com.cafe24.phoenixooo.crm.stockManagement.Service.GoodsStockService;

@Controller
public class GoodsStockController 
{
	@Autowired
	private GoodsStockService goodsStocdkService;
	
	//미용용품 입고등록과 내역 첫 화면
	@RequestMapping(value = "/phoenix/crm/form/goodsStock", method = RequestMethod.GET)
	public String moveTogoodsStock(GoodsStock goodsStock,Model model) 
	{ 
		goodsStock.setUserCode("COM_USER_6");
		goodsStock.setShopCode("CRM_SHOP_1");
		List<GoodsStock> goodsStockList=goodsStocdkService.selectGoodsStockList(goodsStock);
		model.addAttribute("goodsStockList", goodsStockList);
		return "/phoenix/crm/stockManagement/goodsStock";
	}
			
	//입고 등록 화면으로 이동
	@RequestMapping(value = "/phoenix/crm/form/insertingGoodsStock", method = RequestMethod.POST)
	public String moveToinsertingGoodsStock(Model model) 
	{ 
		return "/phoenix/crm/stockManagement/insertingGoodsStock";
	}
	
	//입고 등록 처리
	@RequestMapping(value = "/phoenix/crm/process/insertGoodsStock", method = RequestMethod.GET)
	public String insertGoodsStock(GoodsStock goodsStock,Model model) 
	{ 
		/*System.out.println(goodsStockCommand.getStockDate()+"<----------getStockDate");
		System.out.println(goodsStockCommand.getEmployeeName()+"<----------getEmployeeName");
		System.out.println(goodsStockCommand.getAccountName()+"<----------getAccountName");
		System.out.println(goodsStockCommand.getGoodsName()+"<----------getGoodsName");
		System.out.println(goodsStockCommand.getBuyingGoodsUnitWon()+"<----------getBuyingGoodsUnitWon");
		System.out.println(goodsStockCommand.getGoodsQuantityNumber()+"<----------getGoodsQuantityNumber");*/
		
		goodsStock.setUserCode("COM_USER_6");
		goodsStock.setShopCode("CRM_SHOP_1");
		goodsStocdkService.insertGoodsStock(goodsStock);
		return "redirect:/phoenix/crm/form/goodsStock";
	}
	
	//입고된 걸 결제하는 화면으로 이동
		@RequestMapping(value = "/phoenix/crm/form/goodsPayment", method = RequestMethod.POST)
		public String moveToGoodsPayment(GoodsStock goodsStock,Model model) 
		{ 
			model.addAttribute("goodsStock", goodsStock);
			return "/phoenix/crm/stockManagement/goodsPayment";
		}
}
