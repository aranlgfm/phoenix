package com.cafe24.phoenixooo.community.Service;

import java.util.List;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Model.Comment;

public interface BoardService 
{
	//글목록 가져옴.
	List<Article> getArticleList(String boardGroupCode);
	//글 1개 가져옴.
	Article getArticle(Article article);
	//글 1개 등록
	String insertArticle(Article article);
	//글 1개 수정
	Article modifyArticle(Article article);
	//글 1개 삭제
	int deleteArticle(Article article);
	//댓글 등록
	int insertComment(Comment comment);
	//댓글 삭제
	String deleteComment(Comment comment);
}
