package com.cafe24.phoenixooo.community.Repository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Model.Comment;

public interface BoardDao 
{
	//글 목록 가져오기
	List<Article> selectArticleList(Map<String,Object> map);
	
	//글 1개 가져오기
	Article selectArticle(Article article);
	
	//글 1개 등록하기
	String insertArticle(Article article);
	
	//글 수정하기
	int updateArticle(Article article);
	
	//글 삭제하기
	int deleteArticle(Article article);

	//댓글 리스트 가져오기
	List<Comment> selectCommentList(Map<String,Object> map);
	
	//댓글등록
	int insertComment(Comment comment);
	
	//댓글 삭제
	int deleteComment(Comment comment);
}
