package com.cafe24.phoenixooo.crm.salesManagement.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe24.phoenixooo.community.Model.Payment;
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
		
		return "/phoenix/crm/salesManagement/ds";
	}
	
	
	
	//일간검색 -> 일간매출내역 처리
	@RequestMapping(value = "/phoenix/crm/salesManagement/dailySearch", method = RequestMethod.POST)
	public String dailySearch(String paymentDate, Model model) {
		System.out.println("dailySearch에서 넘긴 현재날짜 : "+paymentDate);
		List<DaySalesInfo> list = totalSalesService.SelectDailySales(paymentDate);
		model.addAttribute("list", list);
		System.out.println("model : "+model);
		return "/phoenix/crm/salesManagement/dailySalesList";
	}
	
	
	
	//일간 매출 내역
	@RequestMapping(value = "/phoenix/crm/salesManagement/dailySalesList", method = RequestMethod.GET)
	public String dailySalesList() {
		return "/phoenix/crm/salesManagement/dailySalesList";
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
	
	
	
	
	//월간총매출 페이지 요청
	@RequestMapping(value = "/phoenix/crm/salesManagement/monthlySales", method = RequestMethod.GET)
	public String monthlySales() {
		return "redirect:/phoenix/crm/salesManagement/monthlySalesList";
	}

	//월간총매출 리스트 요청
	@RequestMapping(value="/phoenix/crm/salesManagement/monthlySalesList", method=RequestMethod.GET)
	public String monthlySalesList(MonthSalesInfo month, Model model){
		System.out.println("월간총매출내역 페이지 요청함");
		// get요청 했을 시 셀렉트 박스가 자동으로 값이 지정되게 만들려면
		// 여기서 date 생성해서 넘기면 됨
		Date toMonth = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMM");
		String paymentYearMonth = format.format(toMonth);
		System.out.println("월간총매출 리스트로 가는 값 : "+paymentYearMonth);
		
		month.setPaymentYearMonth(paymentYearMonth);
		List<MonthSalesInfo> list = totalSalesService.selectMonthlyList(month);
		
		model.addAttribute("list", list);
		System.out.println("A태그 -> 월간총매출내역 페이지 요청함");
		System.out.println("A태그 가져온 데이터값 : "+model);
		System.out.println("A태그 -> 월간리스트 포워딩");
		return "/phoenix/crm/salesManagement/monthlySalesList";
		
	}
	
	
	//월간총매출 검색 ->처리
	@RequestMapping(value="/phoenix/crm/salesManagement/monthlySearch", method=RequestMethod.POST)
	public String monthlySearch(MonthSalesInfo month, Model model){
		System.out.println("월간총매출 검색 처리 요청함");
		System.out.println("월간 검색 년,월 : "+month);
		String sumYM = month.getPaymentYear()+month.getPaymentMonth();
		month.setPaymentYearMonth(sumYM);
		System.out.println("가공된 년,월 : "+month.getPaymentYearMonth());
		
		List<MonthSalesInfo> list = totalSalesService.selectMonthlyList(month);
		model.addAttribute("list", list);
		System.out.println("월간검색 -> 월간총매출내역 페이지 요청함");
		System.out.println("월간검색 가져온 데이터값 : "+model);
		System.out.println("월간검색 -> 월간리스트 포워딩");
		return "/phoenix/crm/salesManagement/monthlySalesList";
	}
	
	
	
	
	
	
	
	//년간총매출 페이지 요청
	@RequestMapping(value = "/phoenix/crm/salesManagement/yearlySales", method = RequestMethod.GET)
	public String yearlySales() {
		System.out.println("년간총매출 페이지 요청됨");
		return "redirect:/phoenix/crm/salesManagement/yearlySalesList";
	}

	//년간총매출 리스트 요청
	@RequestMapping(value="/phoenix/crm/salesManagement/yearlySalesList",method=RequestMethod.GET)
	public String yearlySalesList(MonthSalesInfo year, Model model){
		// get요청 했을 시 셀렉트 박스가 자동으로 값이 지정되게 만들려면
		// 여기서 date 생성해서 넘기면 됨(데이터를 서비스로 넘겨서 처리하고 리턴받던가)
		Date toYear = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy");
		String paymentYear = format.format(toYear);
		year.setPaymentYear(paymentYear);
		List<MonthSalesInfo> list = totalSalesService.selectYearlySearch(year);
		model.addAttribute("list", list);
		System.out.println("A태그 -> 최종 년간총매출내역 : "+model);
		System.out.println("A태그 -> 년간검색 데이터 포워딩");
		return "/phoenix/crm/salesManagement/yearlySalesList";
	}
	
	//년간총매출 검색 - >처리
	@RequestMapping(value="/phoenix/crm/salesManagement/yearlySearch", method=RequestMethod.POST)
	public String yearlySearch(MonthSalesInfo year, Model model){
		System.out.println("년간총매출 년간 검색처리 요청됨");
		System.out.println("년감총매출 검색 년 : "+year.getPaymentYear());
		
		List<MonthSalesInfo> list = totalSalesService.selectYearlySearch(year);
		model.addAttribute("list", list);
		System.out.println("년간검색 -> 년간총매출내역 : "+model);
		System.out.println("년간검색 -> 년간검색 데이터 포워딩");
		return "/phoenix/crm/salesManagement/yearlySalesList";
	}
	
	
	//기간별매출통계 페이지 요청
	
	@RequestMapping(value="/phoenix/crm/salesManagement/periodSales", method=RequestMethod.GET)
	public String periodSales(){
		System.out.println("기간별매출통계 페이지 요청됨");
		return "/phoenix/crm/salesManagement/periodSalesList";
	}
	
	
	//기간별매출통계 리스트 요청시
	
	@RequestMapping(value="/phoenix/crm/salesManagement/periodSalesList", method=RequestMethod.GET)
	public String periodSalesList(MonthSalesInfo period, Model model){
		System.out.println("기간별매출통계 페이지 요청됨");
		//
	/*	Date endDay = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyymmdd");
		String paymentEndDay = format.format(endDay);
		period.setPaymentEndDay(paymentEndDay);
		System.out.println("기간별매출통계리스트에서 첫페이지에 보여줄 오늘날짜 입력값 : "+period);
		
		List<MonthSalesInfo> list = totalSalesService.selectPeriodList(period);
		model.addAttribute("list", list);*/
		
		return "/phoenix/crm/salesManagement/periodSalesList";
	}
	
	
	
	//기간검색 요청됨
		@RequestMapping(value = "/phoenix/crm/salesManagement/periodSearch", method = RequestMethod.POST)
		public String periodSearch(MonthSalesInfo period, Model model) {
			System.out.println("기간별매출통계 검색 요청됨");
			System.out.println("기간별매출 시작일 : "+period.getPaymentStartDay());
			System.out.println("기간별매출 종료일 : "+period.getPaymentEndDay());
			
			List<MonthSalesInfo> list =  totalSalesService.selectPeriodList(period);
			model.addAttribute("list", list);
			
			return "/phoenix/crm/salesManagement/periodSalesList";
		}
	
		
		// 매출 그래프
		@RequestMapping(value = "/phoenix/crm/salesManagement/SalesGraph", method = RequestMethod.GET)
		public String SalesGraph() {
			return "/phoenix/crm/salesManagement/SalesGraph";
		}	
		
		
		
		//Ajax -> 일일매출리스트 출력하기
		@ResponseBody
		@RequestMapping(value = "/phoenix/crm/salesManagement/ds", method = RequestMethod.POST)
		public List<DaySalesInfo> daysList(DaySalesInfo daySalesInfo) {
		   System.out.println("ajax메서드 실행");
		   System.out.println("----->"+daySalesInfo );
		    
		   List<DaySalesInfo> list = totalSalesService.daysList(daySalesInfo);
		   
		   System.out.println("list---> "+list);
		    
		    return list;
		}
		
		
		@RequestMapping(value = "/phoenix/crm/salesManagement/ds", method = RequestMethod.GET)
		public String daysList(){
			
			return "/phoenix/crm/salesManagement/ds";
		}
		
		
		
		
		
		
		
		
		
		
}
