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
	
	
	
	//0829
	//ajax -> 일일매출리스트 출력하기
	@Override
	public List<DaySalesInfo> daysList(DaySalesInfo daySalesInfo) {

		return sqlSession.selectList(NS+".daysList", daySalesInfo);
	}
	
	
	//0830
	//ajax -> 월간매출리스트 출력하기
	@Override
	public List<MonthSalesInfo> MonthList(MonthSalesInfo monthSalesInfo) {
		
		return sqlSession.selectList(NS+".MonthList", monthSalesInfo);
	}
	
	//0830
	//ajax -> 년간매출리스트 출력하기
	@Override
	public List<MonthSalesInfo> yearList(MonthSalesInfo monthSalesInfo) {
		return sqlSession.selectList(NS+".yearList", monthSalesInfo);
	}
	
}
