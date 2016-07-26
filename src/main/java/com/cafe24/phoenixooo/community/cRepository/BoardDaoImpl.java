package com.cafe24.phoenixooo.community.cRepository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.dModel.Article;

@Repository
public class BoardDaoImpl implements BoardDao
{
	private final String NS = "com.cafe24.phoenixooo.community.cRepository.BoardMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public List<Article> selectArticleList(Map<String, Object> map) {
			return sqlSession.selectList(NS + ".selectArticleList", map);
	}

}
