package com.cafe24.phoenixooo.community.cRepository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.dModel.Test;

@Repository
public class SwDaoImpl implements SwDao {
	
	private final String NS = "com.cafe24.phoenixooo.community.cRepository.SwMapper";

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<Test> selectSw() {
		return sqlSession.selectList(NS+".selectSw");
	}
	
}
