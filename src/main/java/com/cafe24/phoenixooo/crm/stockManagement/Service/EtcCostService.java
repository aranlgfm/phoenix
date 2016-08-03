package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;
import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCostType;

public interface EtcCostService {

	/**
	 * (Service) crm기타지출항목가져오기
	 * @return
	 */
	List<EtcCost> selectEtcCostList(EtcCost etcCost);
	
	/**
	 * (Service) crm기타지출항목등록
	 * @param etcCost
	 * @return
	 */
	int insertEtcCost(EtcCost etcCost);
	
	/**
	 * (Service) crm기타지출항목삭제
	 * @param etcCost
	 * @return
	 */
	int deleteEtcCost(EtcCost etcCost);
	
	/**
	 * (Service) crm기타지출항목 하나 가져오기
	 * @param etcCost
	 * @return
	 */
	EtcCost selectEtcCostOne(EtcCost etcCost);
	
	/**
	 * (Service) crm기타지출세부항목가져오기
	 * @param etcCostType
	 * @return
	 */
	List<EtcCostType> selectEtcCostTypeList(EtcCost etcCost);
	
	/**
	 * (Service) crm기타지출세부항목등록
	 * @param costType
	 * @return
	 */
	int insertEtcCostType(EtcCostType costType);
}