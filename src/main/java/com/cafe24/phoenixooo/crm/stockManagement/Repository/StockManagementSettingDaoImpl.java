package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.stockManagement.Model.Account;

@Repository
public class StockManagementSettingDaoImpl implements StockManagementSettingDao{
	
	private final String NS = "com.cafe24.phoenixooo.crm.stockManagement.Repository.StockManagementSettingMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertAccount(Account account) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NS+".insertAccount", account);
	}
}
