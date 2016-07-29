package com.cafe24.phoenixooo.community.Service;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.community.Model.Article;

public interface TotalSearchService {
	
	/**
	 * (서비스,TotalSearch)
	 * @param map
	 * @return
	 */
	//List<Article> selectArticleList(Map<String, Object> map);
	Map<String, Object> selectArticleList(String word);
}
