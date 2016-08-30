package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.HashMap;
import java.util.List;

import com.cafe24.phoenixooo.crm.salesManagement.Model.DaySalesInfo;
import com.cafe24.phoenixooo.crm.salesManagement.Model.MonthSalesInfo;

public interface TotalSalesDao {

	List<DaySalesInfo> SelectDailySales(String paymentDate);
	

	List<MonthSalesInfo> getMonthlyList(MonthSalesInfo month);
	
	//년간 총매출
	List<MonthSalesInfo> selectYearlySearch(MonthSalesInfo year);
	
	List<MonthSalesInfo> selectPeriodList(MonthSalesInfo period);


	List<DaySalesInfo> daysList(DaySalesInfo daySalesInfo);


	List<MonthSalesInfo> MonthList(MonthSalesInfo monthSalesInfo);


	List<MonthSalesInfo> yearList(MonthSalesInfo monthSalesInfo);


	
}
