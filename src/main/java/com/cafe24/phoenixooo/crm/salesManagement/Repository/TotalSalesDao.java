package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.salesManagement.Model.DaySalesInfo;
import com.cafe24.phoenixooo.crm.salesManagement.Model.MonthSalesInfo;

public interface TotalSalesDao {

	List<DaySalesInfo> SelectDailySales(String paymentDate);
	

	List<MonthSalesInfo> getMonthlyList(MonthSalesInfo month);
}
