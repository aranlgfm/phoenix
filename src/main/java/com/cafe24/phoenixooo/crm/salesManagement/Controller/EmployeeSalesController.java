package com.cafe24.phoenixooo.crm.salesManagement.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String crmFormSalesManagementDailyEmployeeSales(EmployeeListForSales emp, Model model){
		emp.setShopCode("CRM_SHOP_1");
		List<EmployeeListForSales> empList = empService.selectEmployeeList(emp);
		List<EmployeeSales> empSales = empService.selectAllEmpSales();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empList", empList);
		map.put("empSales", empSales);
		model.addAttribute("emp", map);
		return "/phoenix/crm/salesManagement/dailyEmployeeSales";
	}
}