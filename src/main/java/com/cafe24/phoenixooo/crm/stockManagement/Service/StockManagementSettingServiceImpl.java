package com.cafe24.phoenixooo.crm.stockManagement.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;
import com.cafe24.phoenixooo.crm.stockManagement.Model.Goods;
import com.cafe24.phoenixooo.crm.stockManagement.Repository.StockManagementSettingDao;

@Service
public class StockManagementSettingServiceImpl implements StockManagementSettingService{
	
	@Autowired
	StockManagementSettingDao stockManagementSettingDao;
	
	//거래처 등록을 처리.
	@Override
	public int insertAccount(Account account) {
		// TODO Auto-generated method stub
		return stockManagementSettingDao.insertAccount(account);
	}
	
	//제품설정동록
	@Override
	public int insertGoods(Goods goods) {
		// TODO Auto-generated method stub
		return stockManagementSettingDao.insertGoods(goods);
	}	
}
