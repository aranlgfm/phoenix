package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.salesManagement.Model.SalesInfo;

@Repository
public class TotalSalesDaoImpl implements TotalSalesDao{

	private final String NS = "com.cafe24.phoenixooo.crm.salesManagement.Repository.TotalSalesMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//일간총매출 처리중
	@Override
	public SalesInfo SelectDailySales(String paymentDate) {
		return sqlSession.selectOne(NS+".SelectDailySales", paymentDate);
	}
	
}
