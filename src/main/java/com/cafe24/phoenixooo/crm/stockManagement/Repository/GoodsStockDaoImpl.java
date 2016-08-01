package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsStockCommand;

@Repository
public class GoodsStockDaoImpl implements GoodsStockDao{
	
	private final String NS = "com.cafe24.phoenixooo.crm.stockManagement.Repository.GoodsStockMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//미용용품 입고 처리
	@Override
	public int insertGoodsStock(GoodsStockCommand goodsStockCommand) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NS+".insertGoodsStock", goodsStockCommand);
	}
	
	//미용용품 입고 내역 가져오기
	@Override
	public List<GoodsStockCommand> selectGoodsStockList(GoodsStockCommand goodsStockCommand) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".selectGoodsStockList", goodsStockCommand);
	}
}
