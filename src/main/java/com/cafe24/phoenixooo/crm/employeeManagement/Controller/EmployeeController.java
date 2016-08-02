package com.cafe24.phoenixooo.crm.employeeManagement.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String employeeList(Model model,
				@RequestParam(value="page", defaultValue="1") int page,
				@RequestParam(value="word", required=false) String word) {
		List<Employee> employeeList = employeeService.getEmployeeList(page, word);
		model.addAttribute("employeeList", employeeList);
		model.addAttribute("page", page);
		model.addAttribute("lastPage", employeeService.getLastPage());
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
	
	/**
	 * 직원 상세보기
	 * @param employee
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/employeeDetail", method=RequestMethod.GET)
	public String employeeDetail(String employee, Model model) {
		Employee employeep = new Employee();
		employeep.setEmployeeCode(employee);
		Employee employeeo = employeeService.employeeDetail(employeep);
		model.addAttribute("employeeo", employeeo);
		return "/phoenix/crm/employeeManagement/employeeDetail";
	}
	
	/**
	 * 직원 수정 화면
	 * @param model
	 * @param employee
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/updateEmployee", method=RequestMethod.GET)
	public String updateEmployee(Model model, Employee employee) {
		model.addAttribute("employeeCode", employee.getEmployeeCode());
		return "/phoenix/crm/employeeManagement/updateEmployee";
	}
	
	/**
	 * 직원 수정
	 * @param model
	 * @param employee
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/updateEmployee", method=RequestMethod.POST)
	public String updateEmployee(Employee employee) {
		employeeService.updateEmployee(employee);
		return "/phoenix/crm/employeeManagement/updateEmployee";
	}
	
	/**
	 * 직원 삭제
	 * @param employee
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/deleteEmployee", method=RequestMethod.GET)
	public String deleteEmployee(Employee employee) {
		employeeService.deleteEmployee(employee);
		return "/phoenix/crm/employeeManagement/employeeList";
	}
}
