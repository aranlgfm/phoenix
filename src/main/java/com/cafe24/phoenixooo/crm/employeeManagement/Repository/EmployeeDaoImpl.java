package com.cafe24.phoenixooo.crm.employeeManagement.Repository;

import java.util.List;
import java.util.Map;

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

	@Override
	public int selectTotalCount() {
		return sqlSession.selectOne(NS + ".selectTotalCount");
	}

	@Override
	public List<Employee> selectEmployeeList(Map<String, Object> map) {
		return sqlSession.selectList(NS + ".selectEmployeeList", map);
	}
}
