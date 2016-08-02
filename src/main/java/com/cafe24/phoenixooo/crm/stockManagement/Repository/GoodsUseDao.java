package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsUse;

public interface GoodsUseDao {
	//미용용품 사용 내역 가져오기
	List<GoodsUse> selectGoodsUseList(GoodsUse goodsUse);
	//미용용품 사용을 등록하는 처리
	int insertGoodsUse(GoodsUse goodsUse);
}
