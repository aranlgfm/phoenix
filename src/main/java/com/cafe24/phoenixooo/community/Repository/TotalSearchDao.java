package com.cafe24.phoenixooo.community.Repository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.community.Model.Article;

public interface TotalSearchDao {
	
	/**
	 * (DAO,TotalSearch)리스트 받기
	 * @param map
	 * @return
	 */
	List<Article> selectArticleList(Map<String,Object> map);
}
