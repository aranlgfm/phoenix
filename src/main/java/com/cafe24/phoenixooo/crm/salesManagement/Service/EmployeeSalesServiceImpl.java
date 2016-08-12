package com.cafe24.phoenixooo.crm.salesManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeListForSales;
import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeSales;
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
		return empDao.selectEmployeeList(emp);
	}

	/**
	 * (Service구현) 일간직원매출
	 */
	@Override
	public List<EmployeeSales> selectDaliyEmpSales(EmployeeSales emp) {
		List<EmployeeSales> list = empDao.selectDaliyEmpSales(emp);
		for(int i=0; i<list.size()-1; i++)
		{	
			if(list.get(i).getEmployeeName().equals(list.get(i+1).getEmployeeName()))
			{
				list.get(i).setTotalCash(list.get(i+1).getTotalCash());
				list.get(i).setCountCash(list.get(i+1).getCountCash());
				list.remove(i+1);
			}
		}
		return list;
	}

	/**
	 * (Service구현) 월간직원매출
	 */
	@Override
	public List<EmployeeSales> selectMonthlyEmpSales(EmployeeSales emp) {
		List<EmployeeSales> list = empDao.selectMonthlyEmpSales(emp);
		for(int i=0; i<list.size()-1; i++)
		{	
			if(list.get(i).getEmployeeName().equals(list.get(i+1).getEmployeeName()))
			{
				list.get(i).setTotalCash(list.get(i+1).getTotalCash());
				list.get(i).setCountCash(list.get(i+1).getCountCash());
				list.remove(i+1);
			}
		}
		return list;
	}
	
	
	
}
