package com.cafe24.phoenixooo.community.bService;

import java.util.List;

import com.cafe24.phoenixooo.community.dModel.Article;

public interface BoardService 
{
	//글목록 가져옴.
	List<Article> getArticleList(String boardGroupCode);
	//글 1개 가져옴.
	Article getArticle(String articleCode);
	
	String insertArticle(Article article);
}
