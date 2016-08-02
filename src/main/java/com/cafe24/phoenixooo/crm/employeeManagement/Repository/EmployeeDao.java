package com.cafe24.phoenixooo.crm.employeeManagement.Repository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.Employee;

public interface EmployeeDao {
	/**
	 * (Dao) 직원 입력
	 */
	int insertEmployee(Employee employee);
	
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
	List<Employee> selectEmployeeList(Map<String, Object> map);
	
	/**
	 * (Dao) 직원 상세보기
	 * @param employee
	 * @return
	 */
	Employee employeeDetail(Employee employee);
	
	/**
	 * (Dao) 직원 수정
	 * @param employee
	 * @return
	 */
	int updateEmployee(Employee employee);
	
	/**
	 * (Dao) 직원 삭제
	 * @param employee
	 * @return
	 */
	int deleteEmployee(Employee employee);
}
