package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStock;
import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStockCommand;
import com.cafe24.phoenixooo.crm.stockManagement.Repository.GoodsStockDao;

@Service
public class GoodsStockServiceImpl implements GoodsStockService{
	@Autowired
	private GoodsStockDao goodsStockDao;
	
	//미용용품 입고 등록 처리
	@Override
	public int insertGoodsStock(GoodsStockCommand goodsStockCommand) {
		// TODO Auto-generated method stub
		
		return goodsStockDao.insertGoodsStock(goodsStockCommand);
	}
	
	//미용용품 입고 내역 가져오기
	@Override
	public List<GoodsStockCommand> selectGoodsStockList(GoodsStockCommand goodsStockCommand) {
		List<GoodsStockCommand> list=goodsStockDao.selectGoodsStockList(goodsStockCommand);
		for(GoodsStockCommand goodsStockCommand2:list)
		{
			goodsStockCommand2.setPurchaseForOneOrder(goodsStockCommand2.getBuyingGoodsUnitWon()*goodsStockCommand2.getGoodsQuantityNumber());
		}
		return list;
	}
}
