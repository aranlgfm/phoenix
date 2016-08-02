package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;

public interface EtcCostDao {
	
	/**
	 * (Repository) crm기타지출항목가져오기
	 * @return
	 */
	List<EtcCost> selectEtcCostList();
}