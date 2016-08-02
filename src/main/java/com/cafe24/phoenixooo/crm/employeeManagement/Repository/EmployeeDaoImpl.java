package com.cafe24.phoenixooo.crm.employeeManagement.Repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao{
	
	private final String NS = "com.cafe24.phoenixooo.crm.employeeManagement.Repository.EmployeeMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * (Dao) 직원 입력
	 */
	@Override
	public int insertEmployee(Employee employee) {
		return sqlSession.insert(NS+".insertEmployee", employee);
	}
}
