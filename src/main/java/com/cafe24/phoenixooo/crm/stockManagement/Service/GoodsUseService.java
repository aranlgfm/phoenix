package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsUse;

public interface GoodsUseService {
	//미용용품 사용 내역 가져오기
	List<GoodsUse> selectGoodsUseList(GoodsUse goodsUse);
	
}
