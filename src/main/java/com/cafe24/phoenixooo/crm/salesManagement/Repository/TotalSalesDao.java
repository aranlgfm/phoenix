package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.Map;

import com.cafe24.phoenixooo.crm.salesManagement.Model.SalesInfo;

public interface TotalSalesDao {

	SalesInfo SelectDailySales(String paymentDate);
}
