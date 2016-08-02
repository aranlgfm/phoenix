package com.cafe24.phoenixooo.crm.employeeManagement.Repository;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.Employee;

public interface EmployeeDao {
	/**
	 * (Dao) 직원 입력
	 */
	int insertEmployee(Employee employee);
}
