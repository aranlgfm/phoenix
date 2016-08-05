package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsPayment;
import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStock;
import com.cafe24.phoenixooo.crm.stockManagement.Repository.GoodsStockDao;

@Service
public class GoodsStockServiceImpl implements GoodsStockService{
	@Autowired
	private GoodsStockDao goodsStockDao;
	
	//미용용품 입고 등록 처리
	@Override
	public int insertGoodsStock(GoodsStock goodsStock) {
		// TODO Auto-generated method stub
		
		return goodsStockDao.insertGoodsStock(goodsStock);
	}
	
	//미용용품 입고 내역 가져오기
	@Override
	public List<GoodsStock> selectGoodsStockList(GoodsStock goodsStock) {
		List<GoodsStock> list=goodsStockDao.selectGoodsStockList(goodsStock);
		for(GoodsStock goodsStock2:list)
		{
			goodsStock2.setPurchaseForOneOrder(goodsStock2.getBuyingGoodsUnitWon()*goodsStock2.getGoodsQuantityNumber());
		}
		return list;
	}
	
	@Override
	public int insertGoodsPayment(GoodsPayment goodsPayment) {
		// TODO Auto-generated method stub
		return goodsStockDao.insertGoodsPayment(goodsPayment);
	}
	
	@Override
	public int deleteGoodsStock(GoodsStock goodsStock) {
		// TODO Auto-generated method stub
		return goodsStockDao.deleteGoodsStock(goodsStock);
	}
	
	@Override
	public int updateGoodsStock(GoodsStock goodsStock) {
		// TODO Auto-generated method stub
		return goodsStockDao.updateGoodsStock(goodsStock);
	}
}
