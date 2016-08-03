package com.cafe24.phoenixooo.crm.salesManagement.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.salesManagement.Model.SalesInfo;
import com.cafe24.phoenixooo.crm.salesManagement.Service.TotalSalesService;

@Controller
public class TotalSalesController {

	@Autowired
	private TotalSalesService totalSalesService;
	
	
	//매출관리 기본 홈
	@RequestMapping(value = "/phoenix/crm/salesManagement/salesManagementHome", method = RequestMethod.GET)
	public String salesManagementHome() {
		return "/phoenix/crm/salesManagement/salesManagementHome";
	}
	
	//기간검색
	@RequestMapping(value = "/phoenix/crm/salesManagement/periodSearch", method = RequestMethod.GET)
	public String periodSearch() {
		return "/phoenix/crm/salesManagement/periodSearch";
	}
	
	//기간검색 -> 일간매출내역 처리
	@RequestMapping(value = "/phoenix/crm/salesManagement/periodSearch", method = RequestMethod.POST)
	public String periodSearch(String paymentDate, Model model) {
		SalesInfo salesInfo = totalSalesService.SelectDailySales(paymentDate);
		
		
		return "/phoenix/crm/salesManagement/periodSearch";
	}
	
	
	
	
	//기간별 매출 그래프
	@RequestMapping(value = "/phoenix/crm/salesManagement/periodSalesGraph", method = RequestMethod.GET)
	public String periodSalesGraph() {
		return "/phoenix/crm/salesManagement/periodSalesGraph";
	}
	
	
	//기간별 매출 내역
	@RequestMapping(value = "/phoenix/crm/salesManagement/periodSalesList", method = RequestMethod.GET)
	public String periodSalesList() {
		return "/phoenix/crm/salesManagement/periodSalesList";
	}
	
	
	
	//일간총매출
	@RequestMapping(value = "/phoenix/crm/salesManagement/dailySales", method = RequestMethod.GET)
	public String dailySales() {
		return "/phoenix/crm/salesManagement/dailySales";
	}

	
	//월간총매출
	@RequestMapping(value = "/phoenix/crm/salesManagement/monthlySales", method = RequestMethod.GET)
	public String monthlySales() {
		return "/phoenix/crm/salesManagement/monthlySales";
	}

	//년간총매출
	@RequestMapping(value = "/phoenix/crm/salesManagement/yearlySales", method = RequestMethod.GET)
	public String yearlySales() {
		return "/phoenix/crm/salesManagement/yearlySales";
	}
	
}
