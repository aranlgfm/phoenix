package com.cafe24.phoenixooo.community.Service;

import java.util.List;

import com.cafe24.phoenixooo.community.Model.Article;

public interface BoardService 
{
	//글목록 가져옴.
	List<Article> getArticleList(String boardGroupCode);
	//글 1개 가져옴.
	Article getArticle(String articleCode);
	
	String insertArticle(Article article);
	
	Article modifyArticle(Article article);
	
	//글 1개 삭제
	int deleteArticle(Article article);
}
