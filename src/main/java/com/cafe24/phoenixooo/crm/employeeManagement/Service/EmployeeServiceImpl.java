package com.cafe24.phoenixooo.crm.employeeManagement.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.Employee;
import com.cafe24.phoenixooo.crm.employeeManagement.Repository.EmployeeDao;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private EmployeeDao employeeDao;

	/**
	 * (Service) 직원 입력
	 */
	@Override
	public int insertEmployee(Employee employee) {
		return employeeDao.insertEmployee(employee);
	}
}
