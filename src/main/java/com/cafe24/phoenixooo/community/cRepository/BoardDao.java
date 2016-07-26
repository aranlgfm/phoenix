package com.cafe24.phoenixooo.community.cRepository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.community.dModel.Article;
import com.cafe24.phoenixooo.community.dModel.Comment;

public interface BoardDao 
{
	//글 목록 가져오기
	List<Article> selectArticleList(Map<String,Object> map);
	//글 1개 가져오기
	Article selectArticle(Article article);
	//글 1개 등록하기
	String insertArticle(Article article);
	/*int selectTotalCount(Map<String, Object> map);*/
/*	
	//1�� �� ���� ó��
	int updateArticle(Article article);
	//1�� �� ���� ó��
	int deleteArticle(Article article);
	//��� ��� ó��
	int insertComment(Comment comment);
	//��� ���� ó��
	int deleteComment(Comment comment);*/
}
