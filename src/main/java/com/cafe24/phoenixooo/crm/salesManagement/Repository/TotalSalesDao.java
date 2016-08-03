package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.crm.salesManagement.Model.SalesInfo;

public interface TotalSalesDao {

	List<SalesInfo> SelectDailySales(String paymentDate);
}
