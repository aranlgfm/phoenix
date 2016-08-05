package com.cafe24.phoenixooo.crm.salesManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeListForSales;
import com.cafe24.phoenixooo.crm.salesManagement.Repository.EmployeeSalesDao;

@Service
public class EmployeeSalesServiceImpl implements EmployeeSalesService {

	@Autowired
	EmployeeSalesDao empDao;
	
	/**
	 * (Service구현) 직원매출 계산을 위한 직원리스트
	 */
	@Override
	public List<EmployeeListForSales> selectEmployeeList(EmployeeListForSales emp) {
		System.out.println(emp.getShopCode());
		return empDao.selectEmployeeList(emp);
	}
	
	
}
