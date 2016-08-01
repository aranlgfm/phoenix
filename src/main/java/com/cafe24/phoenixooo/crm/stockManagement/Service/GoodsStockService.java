package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStockCommand;

public interface GoodsStockService {
	//미용용품 입고 등록
	int insertGoodsStock(GoodsStockCommand goodsStockCommand);
	//미용용품 입고 내역 가져오기
	List<GoodsStockCommand> selectGoodsStockList(GoodsStockCommand goodsStockCommand);
}
