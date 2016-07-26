package com.cafe24.phoenixooo.community.bService;

import java.util.List;

import com.cafe24.phoenixooo.community.dModel.Article;

public interface BoardService 
{
	List<Article> getArticleList(String boardGroupCode);

}
