package com.cafe24.phoenixooo.crm.employeeManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.Employee;

public interface EmployeeService {
	/**
	 * (Service) 직원 입력
	 */
	int insertEmployee(Employee employee);
	
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
	List<Employee> getEmployeeList(int page, String word);
	
	/**
	 * (Service) 직원 상세보기
	 * @param employee
	 * @return
	 */
	Employee employeeDetail(Employee employee);
	
	/**
	 * (Service) 직원 수정
	 * @param employee
	 * @return
	 */
	int updateEmployee(Employee employee);
	
	/**
	 * (Service) 직원 삭제
	 * @param employee
	 * @return
	 */
	int deleteEmployee(Employee employee);
}
