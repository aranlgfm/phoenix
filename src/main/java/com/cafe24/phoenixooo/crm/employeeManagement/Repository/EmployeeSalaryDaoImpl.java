package com.cafe24.phoenixooo.crm.employeeManagement.Repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.EmployeeSalary;

@Repository
public class EmployeeSalaryDaoImpl implements EmployeeSalaryDao {

private final String NS = "com.cafe24.phoenixooo.crm.employeeManagement.Repository.EmployeeSalaryMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * (Dao) 급여지급 등록
	 */
	@Override
	public int insertEmployeeSalary(EmployeeSalary employeeSalary) {
		return sqlSession.insert(NS+".insertEmployeeSalary", employeeSalary);
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
	public List<EmployeeSalary> selectEmployeeSalaryList(Map<String, Object> map) {
		return sqlSession.selectList(NS + ".selectEmployeeSalaryList", map);
	}

}
