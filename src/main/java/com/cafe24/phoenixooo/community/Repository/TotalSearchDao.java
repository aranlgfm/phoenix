package com.cafe24.phoenixooo.community.Repository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Model.UserCustomer;

public interface TotalSearchDao {
	
	/**
	 * (DAO,TotalSearch)게시판 리스트 받기
	 * @param map
	 * @return
	 */
	List<Article> selectArticleList(Map<String,Object> map);
	
	/**
	 * (DAO,TotalSearch)미용실 리스트 받기
	 * @param map
	 * @return
	 */
	List<UserCustomer> selectUserDirectorList(Map<String,Object> map);
	
	List<UserCustomer> selectUserDesignerList(Map<String,Object> map);
}
