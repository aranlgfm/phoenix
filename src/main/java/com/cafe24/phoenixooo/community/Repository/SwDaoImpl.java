package com.cafe24.phoenixooo.community.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.Model.Sw;
import com.cafe24.phoenixooo.community.Model.Test;

@Repository
public class SwDaoImpl implements SwDao {
	
	private final String NS = "com.cafe24.phoenixooo.community.Repository.SwMapper";

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<Test> selectSw() {
		return sqlSession.selectList(NS+".selectSw");
	}
	
	//sw 상품 리스트 가져오기.
	@Override
	public List<Sw> selectSwList() {
		return sqlSession.selectList(NS+".selectSwList");
	}
	
}
