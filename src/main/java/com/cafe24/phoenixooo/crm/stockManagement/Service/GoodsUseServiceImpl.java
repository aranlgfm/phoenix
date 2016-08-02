package com.cafe24.phoenixooo.crm.stockManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsUse;
import com.cafe24.phoenixooo.crm.stockManagement.Repository.GoodsUseDao;

@Service
public class GoodsUseServiceImpl implements GoodsUseService{
	
	@Autowired
	private GoodsUseDao goodsUseDao;
	
	//미용용품 사용 내역 가져오기
	@Override
	public List<GoodsUse> selectGoodsUseList(GoodsUse goodsUse) {
		return goodsUseDao.selectGoodsUseList(goodsUse);
	}
	
	//미용용품 사용을 등록하는 처리
	@Override
	public int insertGoodsUse(GoodsUse goodsUse) {
		return goodsUseDao.insertGoodsUse(goodsUse);
	}
}
