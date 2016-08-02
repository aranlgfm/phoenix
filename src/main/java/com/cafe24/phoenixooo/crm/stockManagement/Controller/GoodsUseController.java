package com.cafe24.phoenixooo.crm.stockManagement.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsUse;
import com.cafe24.phoenixooo.crm.stockManagement.Service.GoodsUseService;

@Controller
public class GoodsUseController {
	
	@Autowired
	private GoodsUseService goodsUseService;
	
	//미용용품 사용내역 및 등록 화면으로 이동
	@RequestMapping(value = "/phoenix/crm/form/goodsUseList", method = RequestMethod.GET)
	public String moveToGoodsUseList(GoodsUse goodsUse,Model model) 
	{ 
		goodsUse.setUserCode("COM_USER_1");
		List<GoodsUse> goodsUseList=goodsUseService.selectGoodsUseList(goodsUse);
		model.addAttribute("goodsUseList", goodsUseList);
		return "/phoenix/crm/stockManagement/goodsUseList";
	}
	
	//미용용품 사용을 등록하는 화면으로 이동
	@RequestMapping(value = "/phoenix/crm/form/insertingGoodsUse", method = RequestMethod.GET)
	public String moveToInsertingGoodsUse(GoodsUse goodsUse,Model model) 
	{ 
		return "/phoenix/crm/stockManagement/insertingGoodsUse";
	}
	
	//미용용품 사용을 등록하는 처리
	
}
