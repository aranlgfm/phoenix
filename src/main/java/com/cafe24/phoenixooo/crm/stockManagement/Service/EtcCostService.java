package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;

public interface EtcCostService {

	/**
	 * (Service) crm기타지출항목가져오기
	 * @return
	 */
	List<EtcCost> selectEtcCostList();
}