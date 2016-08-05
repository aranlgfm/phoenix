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

	/**
	 * (Dao) TotalCount
	 */
	@Override
	public int selectTotalCount() {
		return sqlSession.selectOne(NS + ".selectTotalCount");
	}

	/**
	 * (Dao) 리스트 보기
	 */
	@Override
	public List<Employee> selectEmployeeList(Map<String, Object> map) {
		return sqlSession.selectList(NS + ".selectEmployeeList", map);
	}

	/**
	 * (Dao) 직원 상세보기
	 */
	@Override
	public Employee employeeDetail(Employee employee) {
		System.out.println("Dao");
		return sqlSession.selectOne(NS + ".employeeDetail", employee);	
	}

	/**
	 * (Dao) 직원 수정
	 */
	@Override
	public int updateEmployee(Employee employee) {
		return sqlSession.update(NS + ".updateEmployee", employee);
	}

	/**
	 * (Dao) 직원 삭제
	 */
	@Override
	public int deleteEmployee(Employee employee) {
		return sqlSession.delete(NS + ".deleteEmployee", employee);
	}
}
