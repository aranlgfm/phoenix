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
		List<EmployeeSales> empSales = empService.selectAllEmpSales(empS);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empList", empList);
		map.put("empSales", empSales);
		map.put("today", date);
		model.addAttribute("emp", map);
		return "/phoenix/crm/salesManagement/dailyEmployeeSales";
	}
	
	@RequestMapping(value = "/phoenix/crm/process/salesManagement/dailyEmployeeSales", method = RequestMethod.POST)
	public String crmProcessSalesManagementDailyEmployeeSales(EmployeeListForSales emp, String date, Model model, HttpSession session){
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
		List<EmployeeSales> empSales = empService.selectAllEmpSales(empS);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empList", empList);
		map.put("empSales", empSales);
		map.put("today", date);
		model.addAttribute("emp", map);
		return "/phoenix/crm/salesManagement/dailyEmployeeSales";
	}
}