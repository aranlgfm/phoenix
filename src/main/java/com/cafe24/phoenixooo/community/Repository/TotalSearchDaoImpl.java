package com.cafe24.phoenixooo.community.Repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.Model.Article;

@Repository
public class TotalSearchDaoImpl implements TotalSearchDao {
	private final String NS = "com.cafe24.phoenixooo.community.Repository.TotalSearchMapper";
	
	@Autowired
	private DaoHelper helper;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	/**
	 * (DAO구현,TotalSearch) 리스트
	 */
	@Override
	public List<Article> selectArticleList(Map<String, Object> map) {
		map.put("searchResultLimitNumber", helper.getSEACHRESULTLIMITNUMBER());
		System.out.println("DAO 리스트");
		return sqlSession.selectList(NS+".selectArticleList", map);
	}
	
	
	
}
