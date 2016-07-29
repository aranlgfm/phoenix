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
	public List<List<Article>> selectArticleList(String word) {
		System.out.println("service");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("word", word);
		
		String boardGroupCode = "";
		List<List<Article>> rs = new ArrayList<List<Article>>();
		
			/* 1.헤어게시판
			 * 3.자유게시판
			 */
		boardGroupCode = "COM_BOARDGROUP_3";
		map.put("boardGroupCode", boardGroupCode);
		rs.add(dao.selectArticleList(map));
		
		boardGroupCode = "COM_BOARDGROUP_1";
		map.put("boardGroupCode", boardGroupCode);
		rs.add(dao.selectArticleList(map));
		
		

		return rs;
	}

}
