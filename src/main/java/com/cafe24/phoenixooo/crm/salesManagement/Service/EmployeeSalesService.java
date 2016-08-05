package com.cafe24.phoenixooo.crm.salesManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeListForSales;
import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeSales;

public interface EmployeeSalesService {

	/**
	 * (Service) 직원매출 계산을 위한 직원리스트
	 * @param emp
	 * @return
	 */
	List<EmployeeListForSales> selectEmployeeList(EmployeeListForSales emp);
	
	/**
	 * (Service) 총직원매출리스트
	 * @return
	 */
	List<EmployeeSales> selectAllEmpSales();
}
