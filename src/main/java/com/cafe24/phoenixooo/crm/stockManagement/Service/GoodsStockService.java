package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsPayment;
import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStock;

public interface GoodsStockService {
	//미용용품 입고 등록
	int insertGoodsStock(GoodsStock goodsStock);
	//미용용품 입고 내역 가져오기
	List<GoodsStock> selectGoodsStockList(GoodsStock goodsStock);
	
	int insertGoodsPayment(GoodsPayment goodsPayment);
	
	int deleteGoodsStock(GoodsStock goodsStock);
	
	int updateGoodsStock(GoodsStock goodsStock);
}
