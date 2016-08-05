package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.salesManagement.Model.DaySalesInfo;

@Repository
public class TotalSalesDaoImpl implements TotalSalesDao{

	private final String NS = "com.cafe24.phoenixooo.crm.salesManagement.Repository.TotalSalesMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//일간총매출 처리중
	@Override
	public List<DaySalesInfo> SelectDailySales(String paymentDate) {
		return sqlSession.selectList(NS+".SelectDailySales", paymentDate);
	}
	
}
