package com.cafe24.phoenixooo.crm.salesManagement.Service;

import com.cafe24.phoenixooo.crm.salesManagement.Model.SalesInfo;

public interface TotalSalesService {

	SalesInfo SelectDailySales(String paymentDate);
}
