package com.cafe24.phoenixooo.crm.salesManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.salesManagement.Model.SalesInfo;

public interface TotalSalesService {

	List<SalesInfo> SelectDailySales(String paymentDate);
}
