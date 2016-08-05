package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.salesManagement.Model.DaySalesInfo;

public interface TotalSalesDao {

	List<DaySalesInfo> SelectDailySales(String paymentDate);
}
