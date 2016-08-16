package com.cafe24.phoenixooo.crm.CustomerManagement.Repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomerDaoHelper;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	private final String NS = "com.cafe24.phoenixooo.crm.customerManagement.Repository.CustomerMapper.";
	
	@Autowired
	private CrmCustomerDaoHelper daoHelper;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * (Repository구현) crm고객등록
	 */
	@Override
	public int insertCustomer(CrmCustomer customer) {
		return sqlSession.insert(NS+"insertCustomer", customer);
	}
	
	/**
	 * (Repository구현) crm고객코드받아오기
	 */
	@Override
	public String getCustomerCode() {
		String result = sqlSession.selectOne(NS+"getCustomerCode");
		int rs = (int)Integer.parseInt(result.substring(daoHelper.getCUSTOMERCODE().length()));
		rs++;
		result = daoHelper.getCUSTOMERCODE()+rs;
		return result;
	}
	
	/**
	 * (Repository구현) crm고객 수
	 */
	@Override
	public int countCustomer(Map<String,Object> map) {
		return sqlSession.selectOne(NS+"countCustomer", map);
	}

	/**
	 * (Repository구현) crm고객목록
	 */
	@Override
	public List<CrmCustomer> getCustomerList(Map<String, Object> map) {
		return sqlSession.selectList(NS+"getCustomerList", map);
	}

	/**
	 * (Repository구현) crm고객수정
	 */
	@Override
	public int updateCustomer(CrmCustomer customer) {
		return sqlSession.update(NS+"updateCustomer", customer);
	}

	/**
	 * (Repository구현) crm고객선택(수정용)
	 */
	@Override
	public CrmCustomer selectForUpdateCustomer(CrmCustomer customer) {
		return sqlSession.selectOne(NS+"selectForUpdateCustomer", customer);
	}

	/**
	 * (Repository구현) crm고객삭제
	 */
	@Override
	public int deleteCustomer(CrmCustomer customer) {
		return sqlSession.delete(NS+"deleteCustomer", customer);
	}

	/**
	 * (Repository구현) crm고객등록을 위한 직원검색
	 */
	@Override
	public CrmCustomer selectForCustomer(CrmCustomer customer) {
		return sqlSession.selectOne(NS+"selectForCustomer", customer);
	}

}
