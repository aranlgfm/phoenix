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
}
