package com.cafe24.phoenixooo.crm.salesManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.salesManagement.Model.DaySalesInfo;

public interface TotalSalesService {

	List<DaySalesInfo> SelectDailySales(String paymentDate);
}
