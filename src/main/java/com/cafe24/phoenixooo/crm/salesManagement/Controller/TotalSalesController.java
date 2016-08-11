package com.cafe24.phoenixooo.crm.salesManagement.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.salesManagement.Model.DaySalesInfo;
import com.cafe24.phoenixooo.crm.salesManagement.Model.MonthSalesInfo;
import com.cafe24.phoenixooo.crm.salesManagement.Service.TotalSalesService;

@Controller
public class TotalSalesController {

	@Autowired
	private TotalSalesService totalSalesService;
	
	
	//매출관리 기본 홈
	@RequestMapping(value = "/phoenix/crm/salesManagement/salesManagementMain", method = RequestMethod.GET)
	public String salesManagementHome(Model model) {
		System.out.println("매출관리 메인 요청함");
		
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String paymentDate = format.format(today);
		System.out.println("매출관리 메인 요청시 현재 날짜(paymentDate):"+paymentDate); // 
				
		List<DaySalesInfo> list = totalSalesService.SelectDailySales(paymentDate);
		model.addAttribute("list", list);
		
		return "/phoenix/crm/salesManagement/periodSalesList";
	}
	
	//기간검색
	/*@RequestMapping(value = "/phoenix/crm/salesManagement/periodSearch", method = RequestMethod.GET)
	public String periodSearch(Model model) {
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String realToday = format.format(today);
		System.out.println(">>>>>>>>>>>>>>>>>>>>>"+realToday); // 
		
		model.addAttribute("serverTime", realToday );
		
		
		return "/phoenix/crm/salesManagement/periodSearch";
	}*/
	
	//일간검색 -> 일간매출내역 처리
	@RequestMapping(value = "/phoenix/crm/salesManagement/periodSearch", method = RequestMethod.POST)
	public String periodSearch(String paymentDate, Model model) {
		System.out.println("periodSearch에서 넘긴 현재날짜 : "+paymentDate);
		List<DaySalesInfo> list = totalSalesService.SelectDailySales(paymentDate);
		model.addAttribute("list", list);
		System.out.println("model : "+model);
		return "/phoenix/crm/salesManagement/periodSalesList";
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
	public String dailySales(Model model1) {
		System.out.println("일간총매출 페이지 요청함");
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String model = format.format(today);
		model1.addAttribute("model", model);
		
		return "redirect:/phoenix/crm/salesManagement/salesManagementMain";
	}
	
	//월간총매출
	@RequestMapping(value = "/phoenix/crm/salesManagement/monthlySales", method = RequestMethod.GET)
	public String monthlySales() {
		System.out.println("월간총매출 페이지 요청함");
		// get요청 했을 시 셀렉트 박스가 자동으로 값이 지정되게 만들려면
		// 여기서 date 생성해서 넘기면 됨
		
		return "/phoenix/crm/salesManagement/monthlySalesList";
	}

	@RequestMapping(value="/phoenix/crm/salesManagement/monthlySearch", method=RequestMethod.POST)
	public String monthlySearch(MonthSalesInfo month, Model model){
		System.out.println("월간총매출 검색 처리 요청함");
		System.out.println("월간 검색 년,월 : "+month);
		String sumYM = month.getPaymentYear()+month.getPaymentMonth();
		month.setPaymentYearMonth(sumYM);
		
		System.out.println("가공된 년,월 : "+month.getPaymentYearMonth());
		
		List<MonthSalesInfo> list = totalSalesService.selectMonthlyList(month);
		model.addAttribute("list", list);
		System.out.println("최종 월간검색내역 : "+model);
		System.out.println("월간검색 데이터 포워딩");
		return "/phoenix/crm/salesManagement/monthlySalesList";
	}
	
	
	
	//년간총매출
	@RequestMapping(value = "/phoenix/crm/salesManagement/yearlySales", method = RequestMethod.GET)
	public String yearlySales() {
		return "/phoenix/crm/salesManagement/yearlySales";
	}
	
}
