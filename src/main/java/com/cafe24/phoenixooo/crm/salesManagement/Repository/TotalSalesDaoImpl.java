package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.salesManagement.Model.DaySalesInfo;
import com.cafe24.phoenixooo.crm.salesManagement.Model.MonthSalesInfo;

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
	
	//월간총매충 처리
	@Override
	public List<MonthSalesInfo> getMonthlyList(MonthSalesInfo month) {
		return sqlSession.selectList(NS+".selectMonthlyList", month);
	}
	
	//년간총매출 처리
	@Override
	public List<MonthSalesInfo> selectYearlySearch(MonthSalesInfo year) {
		return sqlSession.selectList(NS+".selectYearlySearch", year);
	}
	
	//기간별 매출통계
	@Override
	public List<MonthSalesInfo> selectPeriodList(MonthSalesInfo period) {
		return sqlSession.selectList(NS+".selectPeriodList", period);
	}
	
	
	
}
