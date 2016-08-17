package com.cafe24.phoenixooo.crm.employeeManagement.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.EmployeeSalary;
import com.cafe24.phoenixooo.crm.employeeManagement.Service.EmployeeSalaryService;

@Controller
public class EmployeeSalaryController {
	
	@Autowired
	private EmployeeSalaryService employeeSalaryService;
	
	/**
	 * 급여 지급 입력 폼
	 * @param employeeSalary
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/insertingEmployeeSalary", method=RequestMethod.GET)
	public String insertEmployeeSalary() {
		return "/phoenix/crm/employeeManagement/insertingEmployeeSalary";
	}
	
	/**
	 * 급여 지급 입력 처리
	 * @param employeeSalary
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/insertingEmployeeSalary", method=RequestMethod.POST)
	public String insertEmployeeSalary(EmployeeSalary employeeSalary) {
		employeeSalaryService.insertEmployeeSalary(employeeSalary);
		return "redirect:/phoenix/crm/employeeManagement/employeeSalaryList";
	}
	
	/**
	 * 직원 리스트
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/employeeSalaryList", method=RequestMethod.GET)
	public String employeeSalaryList(Model model,
				@RequestParam(value="page", defaultValue="1") int page,
				@RequestParam(value="word", required=false) String word) {
		List<EmployeeSalary> employeeSalaryList = employeeSalaryService.getEmployeeSalaryList(page, word);
		model.addAttribute("employeeSalaryList", employeeSalaryList);
		model.addAttribute("page", page);
		model.addAttribute("lastPage", employeeSalaryService.getLastPage());
		return "/phoenix/crm/employeeManagement/employeeSalaryList";
	}
	
	/**
	 * 급여지급 삭제
	 * @param employeeSalary
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/employeeManagement/deleteEmployeeSalary", method=RequestMethod.GET)
	public String deleteEmployeeSalary(EmployeeSalary employeeSalary, Model model) {
		String salaryCode = employeeSalary.getSalaryCode();
		model.addAttribute("salaryCode", salaryCode);
		employeeSalaryService.deleteEmployeeSalary(employeeSalary);
		return "redirect:/phoenix/crm/employeeManagement/employeeSalaryList";
	}
}
