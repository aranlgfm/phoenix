package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;
import com.cafe24.phoenixooo.crm.stockManagement.Model.Goods;

public interface StockManagementSettingService {
	int insertAccount(Account account);
	
	int insertGoods(Goods goods);
	//미용용품설정목록
	List<Goods> selectGoodsSetting(Goods goods);
	//거래처설정목록
	List<Account> selectStockManagementSetting(Account account);
}
