package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;

@Repository
public class EtcCostDaoImpl implements EtcCostDao {

	private final String NS = "com.cafe24.phoenixooo.crm.stockManagement.Repository.EtcCostMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * (Repository구현) crm기타지출항목가져오기
	 */
	@Override
	public List<EtcCost> selectEtcCostList() {
		return sqlSession.selectList(NS+"selectEtcCostList");
	}
}