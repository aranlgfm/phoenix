package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;
import com.cafe24.phoenixooo.crm.stockManagement.Model.Goods;


public interface StockManagementSettingDao {
	//거래처 등록 처리
	int insertAccount(Account account);
	
	//제품 등록 처리
	int insertGoods(Goods goods);
	
	//미용용품설정 내역 가져오기
		List<Goods> selectGoodsSetting(Goods goods);
}
