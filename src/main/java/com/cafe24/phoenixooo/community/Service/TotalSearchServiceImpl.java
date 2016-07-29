package com.cafe24.phoenixooo.community.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Repository.TotalSearchDao;

@Service
public class TotalSearchServiceImpl implements TotalSearchService{
	@Autowired
	TotalSearchDao dao;
	
	/**
	 * (서비스구현,TotalSearch) 리스트 
	 * 헤어게시판이랑 자유게시판의 리스트를 뽑는다.
	 * 리미트는 5로 되어있다.(나중에 바꿀것)
	 */
	
	@Override
	public Map<String, Object> selectArticleList(String word) {
		System.out.println("service");
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		map.put("word", word);
		
		String boardGroupCode = "";
		List<Article> rs = new ArrayList<Article>();
		
			/* 1.헤어게시판 hair
			 * 3.자유게시판 free
			 */
		boardGroupCode = "COM_BOARDGROUP_3";
		map.put("boardGroupCode", boardGroupCode);
		resultMap.put("freeArticle", dao.selectArticleList(map));
		
		boardGroupCode = "COM_BOARDGROUP_1";
		map.put("boardGroupCode", boardGroupCode);
		resultMap.put("hairArticle", dao.selectArticleList(map));
		
		//미용실,디자이너 리스트 받아오기.;;
		resultMap.put("shopList", dao.selectUserDirectorList(map));
		resultMap.put("designerList", dao.selectUserDesignerList(map));
		

		return resultMap;
	}

}
