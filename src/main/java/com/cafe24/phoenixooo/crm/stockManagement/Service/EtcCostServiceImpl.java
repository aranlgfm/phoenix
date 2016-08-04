package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;
import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCostType;
import com.cafe24.phoenixooo.crm.stockManagement.Repository.EtcCostDao;

@Service
public class EtcCostServiceImpl implements EtcCostService {

	@Autowired
	private EtcCostDao costDao;
	/**
	 * (Service구현) crm기타지출항목가져오기
	 */
	@Override
	public List<EtcCost> selectEtcCostList(EtcCost etcCost) {
		return costDao.selectEtcCostList(etcCost);
	}
	
	/**
	 * (Service구현) crm기타지출항목등록
	 */
	@Override
	public int insertEtcCost(EtcCost etcCost) {
		return costDao.insertEtcCost(etcCost);
	}

	/**
	 * (Service구현) crm기타지출항목삭제
	 */
	@Override
	public int deleteEtcCost(EtcCost etcCost) {
		EtcCostType costType = new EtcCostType();
		costType.setEtcCostCode(etcCost.getEtcCostCode());
		costDao.deleteEtcCostType(costType);
		return costDao.deleteEtcCost(etcCost);
	}

	/**
	 * (Service구현) crm기타지출항목 하나 가져오기
	 */
	@Override
	public EtcCost selectEtcCostOne(EtcCost etcCost) {
		return costDao.selectEtcCostOne(etcCost);
	}

	/**
	 * (Service구현) crm기타지출세부항목가져오기
	 */
	@Override
	public List<EtcCostType> selectEtcCostTypeList(EtcCost etcCost) {
		return costDao.selectEtcCostTypeList(etcCost);
	}

	/**
	 * (Service구현) crm기타지출세부항목등록
	 */
	@Override
	public int insertEtcCostType(EtcCostType costType) {
		EtcCost cost = new EtcCost();
		cost.setEtcCostCode(costType.getEtcCostCode());
		costType.setEtcCostName((costDao.selectEtcCostOne(cost)).getEtcCostName()); 
		return costDao.insertEtcCostType(costType);
	}

	/**
	 * (Service구현) crm기타지출세부항목삭제
	 */
	@Override
	public int deleteEtcCostType(EtcCostType costType) {
		return costDao.deleteEtcCostType(costType);
	}


}