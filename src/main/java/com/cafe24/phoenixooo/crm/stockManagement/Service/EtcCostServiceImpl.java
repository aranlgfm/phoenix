package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.stockManagement.Model.EtcCost;
import com.cafe24.phoenixooo.crm.stockManagement.Repository.EtcCostDao;

@Service
public class EtcCostServiceImpl implements EtcCostService {

	@Autowired
	private EtcCostDao costDao;
	/**
	 * (Service구현) crm기타지출항목가져오기
	 */
	@Override
	public List<EtcCost> selectEtcCostList() {
		return costDao.selectEtcCostList();
	}

}