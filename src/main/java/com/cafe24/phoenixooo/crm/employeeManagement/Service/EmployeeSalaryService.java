package com.cafe24.phoenixooo.crm.employeeManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.EmployeeSalary;

public interface EmployeeSalaryService {
	
	/**
	 * (Service) 급여지급 등록
	 * @param employeeSalary
	 * @return
	 */
	int insertEmployeeSalary(EmployeeSalary employeeSalary);
	
	/**
	 * (Service) 마지막 페이지 구하기
	 * @return
	 */
	int getLastPage();
	
	/**
	 * (Service) 리스트 보기
	 * @param page
	 * @param word
	 * @return
	 */
	List<EmployeeSalary> getEmployeeSalaryList(int page, String word);
	
	/**
	 * (Service) 급여지급 삭제
	 * @param employeeSalary
	 * @return
	 */
	int deleteEmployeeSalary(EmployeeSalary employeeSalary);
}
