package com.cafe24.phoenixooo.crm.stockManagement.Repository;


import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStock;

public interface GoodsStockDao {
	//미용용품 입고 처리
	int insertGoodsStock(GoodsStock goodsStock);
	//미용용품 입고 내역 가져오기
	List<GoodsStock> selectGoodsStockList(GoodsStock goodsStock);
}
