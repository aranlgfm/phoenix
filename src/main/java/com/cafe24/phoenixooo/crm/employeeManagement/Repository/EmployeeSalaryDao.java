package com.cafe24.phoenixooo.crm.employeeManagement.Repository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.EmployeeSalary;

public interface EmployeeSalaryDao {
	
	/**
	 * (Dao) 급여지급 등록
	 * @param employeeSalary
	 * @return
	 */
	int insertEmployeeSalary(EmployeeSalary employeeSalary);
	
	/**
	 * (Dao) TotalCount
	 * @return
	 */
	int selectTotalCount();
	
	/**
	 * (Dao) 리스트 보기
	 * @param map
	 * @return
	 */
	List<EmployeeSalary> selectEmployeeSalaryList(Map<String, Object> map);
	
	/**
	 * (Dao) 급여지급 삭제
	 * @param employeeSalary
	 * @return
	 */
	int deleteEmployeeSalary(EmployeeSalary employeeSalary);
}
