package com.cafe24.phoenixooo.crm.stockManagement.Repository;


import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStockCommand;

public interface GoodsStockDao {
	//미용용품 입고 처리
	int insertGoodsStock(GoodsStockCommand goodsStockCommand);
	//미용용품 입고 내역 가져오기
	List<GoodsStockCommand> selectGoodsStockList(GoodsStockCommand goodsStockCommand);
}
