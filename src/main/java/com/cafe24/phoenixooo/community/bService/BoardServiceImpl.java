package com.cafe24.phoenixooo.community.bService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.cRepository.BoardDao;
import com.cafe24.phoenixooo.community.dModel.Article;



@Service
public class BoardServiceImpl implements BoardService
{
	private final int LINE_PER_PAGE = 3;
	
	@Autowired
	private BoardDao boardDao;
	
	@Override
	public List<Article> getArticleList(String boardGroupCode) {

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("boardGroupCode", boardGroupCode);
        return boardDao.selectArticleList(	map);
	}
}
