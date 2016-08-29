package com.cafe24.phoenixooo.crm.salesManagement.Service;

import java.util.HashMap;
import java.util.List;

import com.cafe24.phoenixooo.crm.salesManagement.Model.DaySalesInfo;
import com.cafe24.phoenixooo.crm.salesManagement.Model.MonthSalesInfo;

public interface TotalSalesService {

	List<DaySalesInfo> SelectDailySales(String paymentDate);
	

	List<MonthSalesInfo> selectMonthlyList(MonthSalesInfo month);
	
	List<MonthSalesInfo> selectYearlySearch(MonthSalesInfo year);
	
	List<MonthSalesInfo> selectPeriodList(MonthSalesInfo period);


	List<DaySalesInfo> daysList(DaySalesInfo daySalesInfo);



	
}
