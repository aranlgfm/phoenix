package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;
import com.cafe24.phoenixooo.crm.stockManagement.Model.Goods;
import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsUse;

public interface StockManagementSettingService {
	int insertAccount(Account account);
	
	int insertGoods(Goods goods);
	//미용용품설정목록
	List<Goods> selectGoodsSetting(Goods goods);
}
