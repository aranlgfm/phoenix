package com.cafe24.phoenixooo.community.cRepository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.community.dModel.Article;
import com.cafe24.phoenixooo.community.dModel.Comment;

public interface BoardDao 
{
	//�Խ��� ȭ��. �Խñ۵��� ����Ʈ.
	List<Article> selectArticleList(Map<String,Object> map);
	
	/*int selectTotalCount(Map<String, Object> map);*/
/*	//1�� ���� Ŭ������ ��, 1�� �ۿ� ���� ������ ��������
	Article selectArticle(Article article);
	//1�� �� ���� ó��
	int updateArticle(Article article);
	//1�� �� ���� ó��
	int deleteArticle(Article article);
	//��� ��� ó��
	int insertComment(Comment comment);
	//��� ���� ó��
	int deleteComment(Comment comment);*/
}
