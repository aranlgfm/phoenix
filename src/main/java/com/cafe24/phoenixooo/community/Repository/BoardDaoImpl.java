package com.cafe24.phoenixooo.community.Repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.Model.Article;

@Repository
public class BoardDaoImpl implements BoardDao
{
	private final String NS = "com.cafe24.phoenixooo.community.Repository.BoardMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public List<Article> selectArticleList(Map<String, Object> map) {
			return sqlSession.selectList(NS + ".selectArticleList", map);
	}
	
	@Override
	public Article selectArticle(Article article) {
	
		return sqlSession.selectOne(NS+".selectArticle", article);
	}
	
	@Override
	public String insertArticle(Article article) {
		// TODO Auto-generated method stub
		sqlSession.insert(NS+".insertArticle", article);
		return article.getArticleCode();
	}

}
