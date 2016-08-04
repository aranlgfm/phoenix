package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;
import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCostType;

public interface EtcCostDao {
	
	/**
	 * (Repository) crm기타지출항목가져오기
	 * @return
	 */
	List<EtcCost> selectEtcCostList(EtcCost etcCost);
	
	/**
	 * (Repository) crm기타지출항목등록
	 */
	int insertEtcCost(EtcCost etcCost);
	
	/**
	 * (Repository) crm기타지출항목삭제
	 */
	int deleteEtcCost(EtcCost etcCost);
	
	/**
	 * (Repository) crm기타지출항목 하나 가져오기
	 * @param etcCost
	 * @return
	 */
	EtcCost selectEtcCostOne(EtcCost etcCost);
	
	/**
	 * {Repository) crm기타지출세부항목가져오기
	 */
	List<EtcCostType> selectEtcCostTypeList(EtcCost etcCost);
	
	/**
	 * (Repository) crm기타지출세부항목등록
	 * @param costType
	 * @return
	 */
	int insertEtcCostType(EtcCostType costType);
	
	/**
	 * (Repository) crm기타지출세부항목삭제
	 * @param costType
	 * @return
	 */
	int deleteEtcCostType(EtcCostType costType);
}