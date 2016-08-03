package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;

public interface StockManagementSettingDao {
	//거래처 등록 처리
	int insertAccount(Account account);
}
