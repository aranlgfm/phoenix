package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;
import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCostType;

@Repository
public class EtcCostDaoImpl implements EtcCostDao {

	private final String NS = "com.cafe24.phoenixooo.crm.stockManagement.Repository.EtcCostMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * (Repository구현) crm기타지출항목가져오기
	 */
	@Override
	public List<EtcCost> selectEtcCostList(EtcCost etcCost) {
		return sqlSession.selectList(NS+"selectEtcCostList", etcCost);
	}

	/**
	 * (Repository구현) crm기타지출항목목록
	 */
	@Override
	public int insertEtcCost(EtcCost etcCost) {
		return sqlSession.insert(NS+"insertEtcCost", etcCost);
	}

	/**
	 * (Repository구현) crm기타지출항목삭제
	 */
	@Override
	public int deleteEtcCost(EtcCost etcCost) {
		return sqlSession.delete(NS+"deleteEtcCost", etcCost);
	}

	/**
	 * (Repository구현) crm기타지출항목 하나 가져오기
	 */
	@Override
	public EtcCost selectEtcCostOne(EtcCost etcCost) {
		return sqlSession.selectOne(NS+"selectEtcCostOne", etcCost);
	}

	/**
	 * (Repository구현) crm기타지출세부항목가져오기
	 */
	@Override
	public List<EtcCostType> selectEtcCostTypeList(EtcCost etcCost) {
		return sqlSession.selectList(NS+"selectEtcCostTypeList", etcCost);
	}

	/**
	 * (Repository구현) crm기타지출세부항목등록
	 */
	@Override
	public int insertEtcCostType(EtcCostType costType) {
		return sqlSession.insert(NS+"insertEtcCostType", costType);
	}

}