package com.cafe24.phoenixooo.crm.stockManagement.Service;

import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;
import com.cafe24.phoenixooo.crm.stockManagement.Model.Goods;

public interface StockManagementSettingService {
	int insertAccount(Account account);
	
	int insertGoods(Goods goods);
}
