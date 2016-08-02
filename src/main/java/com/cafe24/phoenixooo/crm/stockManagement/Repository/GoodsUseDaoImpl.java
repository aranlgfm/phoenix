package com.cafe24.phoenixooo.crm.stockManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.stockManagement.Model.GoodsUse;

@Repository
public class GoodsUseDaoImpl implements GoodsUseDao{

	private final String NS = "com.cafe24.phoenixooo.crm.stockManagement.Repository.GoodsUseMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//미용용품 사용 내역 가져오기
	@Override
	public List<GoodsUse> selectGoodsUseList(GoodsUse goodsUse) {
		return sqlSession.selectList(NS+".selectGoodsUseList", goodsUse);
	}
	
	//미용용품 사용을 등록하는 처리
	@Override
	public int insertGoodsUse(GoodsUse goodsUse) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NS+".insertGoodsUse", goodsUse);
	}
}
