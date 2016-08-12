package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeListForSales;
import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeSales;

@Repository
public class EmployeeSalesDaoImpl implements EmployeeSalesDao {
	private final String NS = "com.cafe24.phoenixooo.crm.salesManagement.Repository.EmployeeSalesMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * (Repository구현) 직원매출 계산을 위한 직원리스트
	 */
	@Override
	public List<EmployeeListForSales> selectEmployeeList(EmployeeListForSales emp) {
		return sqlSession.selectList(NS+"selectEmployeeList", emp);
	}

	/**
	 * (Repository구현) 일간직원매출
	 */
	@Override
	public List<EmployeeSales> selectDaliyEmpSales(EmployeeSales emp) {
		return sqlSession.selectList(NS+"selectDaliyEmpSales", emp);
	}

	/**
	 * (Repository구현) 월간직원매출
	 */
	@Override
	public List<EmployeeSales> selectMonthlyEmpSales(EmployeeSales emp) {
		return sqlSession.selectList(NS+"selectMonthlyEmpSales", emp);
	}

}
