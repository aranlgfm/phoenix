package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;
import com.cafe24.phoenixooo.crm.stockManagement.Model.Goods;

public interface StockManagementSettingDao {
	//거래처 등록 처리
	int insertAccount(Account account);
	
	//제품 등록 처리
	int insertGoods(Goods goods);
}
