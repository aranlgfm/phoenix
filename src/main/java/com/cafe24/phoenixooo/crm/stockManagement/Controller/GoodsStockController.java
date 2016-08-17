package com.cafe24.phoenixooo.crm.stockManagement.Controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsPayment;
import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStock;
import com.cafe24.phoenixooo.crm.stockManagement.Service.GoodsStockService;

@Controller
public class GoodsStockController 
{
	@Autowired
	private GoodsStockService goodsStockService;
	
	//미용용품 입고등록과 내역 첫 화면
	@RequestMapping(value = "/phoenix/crm/form/goodsStock", method = RequestMethod.GET)
	public String moveTogoodsStock(GoodsStock goodsStock,Model model,HttpSession session) 
	{ 
		goodsStock.setUserCode(((UserCustomer)(session.getAttribute("user"))).getUserCode());
		goodsStock.setShopCode(((UserCustomer)(session.getAttribute("user"))).getShopCode());
		
		List<GoodsStock> goodsStockList=goodsStockService.selectGoodsStockList(goodsStock);
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
	@RequestMapping(value = "/phoenix/crm/process/insertGoodsStock", method = RequestMethod.POST)
	public String insertGoodsStock(GoodsStock goodsStock,Model model,HttpSession session) 
	{ 
		/*System.out.println(goodsStockCommand.getStockDate()+"<----------getStockDate");
		System.out.println(goodsStockCommand.getEmployeeName()+"<----------getEmployeeName");
		System.out.println(goodsStockCommand.getAccountName()+"<----------getAccountName");
		System.out.println(goodsStockCommand.getGoodsName()+"<----------getGoodsName");
		System.out.println(goodsStockCommand.getBuyingGoodsUnitWon()+"<----------getBuyingGoodsUnitWon");
		System.out.println(goodsStockCommand.getGoodsQuantityNumber()+"<----------getGoodsQuantityNumber");*/
		
		goodsStock.setUserCode(((UserCustomer)(session.getAttribute("user"))).getUserCode());
		goodsStock.setShopCode(((UserCustomer)(session.getAttribute("user"))).getShopCode());
		goodsStockService.insertGoodsStock(goodsStock);
		return "redirect:/phoenix/crm/form/goodsStock";
	}
	
	//입고된 걸 결제하는 화면으로 이동
	@RequestMapping(value = "/phoenix/crm/form/goodsPayment", method = RequestMethod.POST)
	public String moveToGoodsPayment(GoodsStock goodsStock,Model model) 
	{ 
		model.addAttribute("goodsStock", goodsStock);
		System.out.println(goodsStock.getStockCode()+"                        stockCode");
		return "/phoenix/crm/stockManagement/goodsPayment";
	}
	
	//입고된 거 결제 처리
	@RequestMapping(value = "/phoenix/crm/process/insertGoodsPayment", method = RequestMethod.POST)
	public String insertGoodsPayment(GoodsPayment goodsPayment,Model model) 
	{ 
		goodsStockService.insertGoodsPayment(goodsPayment);
		return "redirect:/phoenix/crm/form/goodsStock";
	}
	
	//입고 된 거 수정,삭제하는 화면으로
	@RequestMapping(value = "/phoenix/crm/form/goodsStockDetail", method = RequestMethod.POST)
	public String moveToGoodsStockDetail(GoodsStock goodsStock,Model model) 
	{ 
		model.addAttribute("goodsStock", goodsStock);
		return "/phoenix/crm/stockManagement/goodsStockDetail";
	}
	
	//입고된 것 삭제 처리
	@RequestMapping(value = "/phoenix/crm/process/deleteGoodsStock", method = RequestMethod.POST)
	public String deleteGoodsStock(GoodsStock goodsStock,Model model) 
	{ 
		goodsStockService.deleteGoodsStock(goodsStock);
		model.addAttribute("goodsStock", goodsStock);
		return "redirect:/phoenix/crm/form/goodsStock";
	}
	
	//입고된 것 수정 처리
	@RequestMapping(value = "/phoenix/crm/process/updateGoodsStock", method = RequestMethod.POST)
	public String updateGoodsStock(GoodsStock goodsStock,Model model,HttpSession session) 
	{ 
		goodsStock.setUserCode(((UserCustomer)(session.getAttribute("user"))).getUserCode());
		goodsStock.setShopCode(((UserCustomer)(session.getAttribute("user"))).getShopCode());
		
		goodsStockService.updateGoodsStock(goodsStock);
		model.addAttribute("goodsStock", goodsStock);
		return "redirect:/phoenix/crm/form/goodsStock";
	}
}



































