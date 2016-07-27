package com.cafe24.phoenixooo.community.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Repository.BoardDao;



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
	
	@Override
	public Article getArticle(String articleCode) {
		Article article=new Article();
		article.setArticleCode(articleCode);
		return boardDao.selectArticle(article);
	}
	
	@Override
	public String insertArticle(Article article) {
		// TODO Auto-generated method stub
		return boardDao.insertArticle(article);
	}
	
	//글 1개 수정
	@Override
	public Article modifyArticle(Article article) {
		int result= boardDao.updateArticle(article);
		Article article2=null;
		if(result==1)
		{
			article2=boardDao.selectArticle(article);
		}
		return article2;
	}
	
	//글 1개 삭제
	@Override
	public int deleteArticle(Article article) {
		return boardDao.deleteArticle(article);
	}
	
	
}
