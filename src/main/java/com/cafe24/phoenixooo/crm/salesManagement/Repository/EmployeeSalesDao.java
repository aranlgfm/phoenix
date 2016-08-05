package com.cafe24.phoenixooo.crm.salesManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeListForSales;

public interface EmployeeSalesDao {

	/**
	 * (Repository) 직원매출 계산을 위한 직원리스트
	 * @param emp
	 * @return
	 */
	List<EmployeeListForSales> selectEmployeeList(EmployeeListForSales emp);
}
