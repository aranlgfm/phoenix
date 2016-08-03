package com.cafe24.phoenixooo.crm.salesManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.salesManagement.Model.SalesInfo;
import com.cafe24.phoenixooo.crm.salesManagement.Repository.TotalSalesDao;

@Service
public class TotalSalesServiceImpl implements TotalSalesService {

	@Autowired
	private TotalSalesDao totalSalesDao;


	//일간총매출 처리중
	@Override
	public List<SalesInfo> SelectDailySales(String paymentDate) {
		
		return totalSalesDao.SelectDailySales(paymentDate);
	}
	
	
	
	
}
