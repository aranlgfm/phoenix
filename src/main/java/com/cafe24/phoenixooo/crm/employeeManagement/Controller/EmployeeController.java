package com.cafe24.phoenixooo.crm.employeeManagement.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.Employee;
import com.cafe24.phoenixooo.crm.employeeManagement.Service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	/**
	 * 직원 리스트
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/employeeList", method=RequestMethod.GET)
	public String employeeList() {
		return "/phoenix/crm/employeeManagement/employeeList";
	}
	
	/**
	 * 직원 입력 폼
	 * @param employee
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/insertingEmployee", method=RequestMethod.GET)
	public String insertEmployee() {
		return "/phoenix/crm/employeeManagement/insertingEmployee";
	}
	
	/**
	 * 직원 입력
	 * @param employee
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/insertingEmployee", method=RequestMethod.POST)
	public String insertEmployee(Employee employee) {
		employeeService.insertEmployee(employee);
		return "/phoenix/crm/employeeManagement/employeeList";
	}
}
