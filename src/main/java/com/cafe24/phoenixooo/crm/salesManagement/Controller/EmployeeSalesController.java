package com.cafe24.phoenixooo.crm.salesManagement.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeListForSales;
import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeSales;
import com.cafe24.phoenixooo.crm.salesManagement.Service.EmployeeSalesService;

@Controller
public class EmployeeSalesController {
	
	@Autowired
	EmployeeSalesService empService;
	
	/**
	 * CRM-Controller 일간직원매출화면
	 * @param emp
	 * @param date
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/salesManagement/dailyEmployeeSales", method = RequestMethod.GET)
	public String crmFormSalesManagementDailyEmployeeSales(EmployeeListForSales emp, String date, Model model, HttpSession session){
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String realToday = format.format(today);
		if(date == null || date == ""){
			date = realToday;
		}
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		emp.setShopCode(user.getShopCode());
		List<EmployeeListForSales> empList = empService.selectEmployeeList(emp);
		EmployeeSales empS = new EmployeeSales();
		empS.setPaymentDate(date);
		empS.setEmployeeCode(emp.getEmployeeCode());
		empS.setShopCode(user.getShopCode());
		List<EmployeeSales> empSales = empService.selectDaliyEmpSales(empS);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empList", empList);
		map.put("empSales", empSales);
		map.put("today", date);
		model.addAttribute("emp", map);
		return "/phoenix/crm/salesManagement/dailyEmployeeSales";
	}
	
	/**
	 * CRM-Controller 일간직원매출검색
	 * @param emp
	 * @param date
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/salesManagement/dailyEmployeeSales", method = RequestMethod.POST)
	public String crmProcessSalesManagementDailyEmployeeSales(EmployeeListForSales emp, String date, Model model, HttpSession session){
		// 입력날짜가 없을 때 오늘날짜를 자동으로 입력하기 위한 코드
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String realToday = format.format(today);
		if(date == null || date == ""){
			date = realToday;
		}
		// 샵코드를 받아오기 위한 코드
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		emp.setShopCode(user.getShopCode());
		// 직원리스트를 받아옴
		List<EmployeeListForSales> empList = empService.selectEmployeeList(emp);
		// 날짜별 매출내역을 알기 위해 날짜 입력
		EmployeeSales empS = new EmployeeSales();
		empS.setPaymentDate(date);
		empS.setShopCode(user.getShopCode());
		empS.setEmployeeCode(emp.getEmployeeCode());
		List<EmployeeSales> empSales = empService.selectDaliyEmpSales(empS);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empList", empList);
		map.put("empSales", empSales);
		map.put("today", date);
		model.addAttribute("emp", map);
		return "/phoenix/crm/salesManagement/dailyEmployeeSales";
	}
	
	/**
	 * CRM-Controller 월간직원매출화면
	 * @param emp
	 * @param date
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/salesManagement/monthlyEmployeeSales", method = RequestMethod.GET) 
	public String crmFormSalesManagementMonthlyEmployeeSales(EmployeeListForSales emp, String date, Model model, HttpSession session){
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		String realToday = format.format(today);
		if(date == null || date == ""){
			date = realToday;
		}

		UserCustomer user = (UserCustomer)session.getAttribute("user");
		emp.setShopCode(user.getShopCode());
		List<EmployeeListForSales> empList = empService.selectEmployeeList(emp);
		EmployeeSales empS = new EmployeeSales();
		empS.setPaymentMonth(date);
		empS.setShopCode(user.getShopCode());
		empS.setEmployeeCode(emp.getEmployeeCode());
		List<EmployeeSales> empSales = empService.selectMonthlyEmpSales(empS);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empList", empList);
		map.put("empSales", empSales);
		map.put("today", date);
		model.addAttribute("emp", map);
		return "/phoenix/crm/salesManagement/monthlyEmployeeSales";
	}
	
	/**
	 * CRM-Controller 월간직원매출검색
	 * @param emp
	 * @param date
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/salesManagement/monthlyEmployeeSales", method = RequestMethod.POST) 
	public String crmProcessSalesManagementMonthlyEmployeeSales(EmployeeListForSales emp, String date, Model model, HttpSession session){
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		String realToday = format.format(today);
		if(date == null || date == ""){
			date = realToday;
		}
		
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		emp.setShopCode(user.getShopCode());
		List<EmployeeListForSales> empList = empService.selectEmployeeList(emp);
		EmployeeSales empS = new EmployeeSales();
		empS.setPaymentMonth(date);
		empS.setShopCode(user.getShopCode());
		empS.setEmployeeCode(emp.getEmployeeCode());
		List<EmployeeSales> empSales = empService.selectMonthlyEmpSales(empS);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empList", empList);
		map.put("empSales", empSales);
		map.put("today", date);
		model.addAttribute("emp", map);
		return "/phoenix/crm/salesManagement/monthlyEmployeeSales";
	}
	
	/**
	 * CRM-Controller 연간직원매출검색
	 * @param emp
	 * @param date
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/salesManagement/yearEmployeeSales", method = RequestMethod.GET) 
	public String crmFormSalesManagementYearEmployeeSales(EmployeeListForSales emp, String date, Model model, HttpSession session){
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy");
		String realToday = format.format(today);
		if(date == null || date == ""){
			date = realToday;
		}

		UserCustomer user = (UserCustomer)session.getAttribute("user");
		emp.setShopCode(user.getShopCode());
		List<EmployeeListForSales> empList = empService.selectEmployeeList(emp);
		EmployeeSales empS = new EmployeeSales();
		empS.setPaymentMonth(date);
		empS.setShopCode(user.getShopCode());
		empS.setEmployeeCode(emp.getEmployeeCode());
		List<EmployeeSales> empSales = empService.selectMonthlyEmpSales(empS);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empList", empList);
		map.put("empSales", empSales);
		map.put("today", date);
		model.addAttribute("emp", map);
		return "/phoenix/crm/salesManagement/yearEmployeeSales";
	}
	
	/**
	 * CRM-Controller 연간직원매출검색
	 * @param emp
	 * @param date
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/salesManagement/yearEmployeeSales", method = RequestMethod.POST) 
	public String crmProcessSalesManagementYearEmployeeSales(EmployeeListForSales emp, String date, Model model, HttpSession session){
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy");
		String realToday = format.format(today);
		if(date == null || date == ""){
			date = realToday;
		}

		UserCustomer user = (UserCustomer)session.getAttribute("user");
		emp.setShopCode(user.getShopCode());
		List<EmployeeListForSales> empList = empService.selectEmployeeList(emp);
		EmployeeSales empS = new EmployeeSales();
		empS.setPaymentMonth(date);
		empS.setShopCode(user.getShopCode());
		empS.setEmployeeCode(emp.getEmployeeCode());
		List<EmployeeSales> empSales = empService.selectMonthlyEmpSales(empS);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empList", empList);
		map.put("empSales", empSales);
		map.put("today", date);
		model.addAttribute("emp", map);
		return "/phoenix/crm/salesManagement/yearEmployeeSales";
	}
}