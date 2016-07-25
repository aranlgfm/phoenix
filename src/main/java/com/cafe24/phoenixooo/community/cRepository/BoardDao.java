package com.cafe24.phoenixooo.community.cRepository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.community.dModel.Article;
import com.cafe24.phoenixooo.community.dModel.Comment;

public interface BoardDao 
{
	//게시판 화면. 게시글들의 리스트.
	List<Article> selectArticleList(Map<String,Object> map);
	//1개 글을 클릭했을 때, 1개 글에 대한 데이터 가져오기
	Article selectArticle(Article article);
	//1개 글 수정 처리
	int updateArticle(Article article);
	//1개 글 삭제 처리
	int deleteArticle(Article article);
	//댓글 등록 처리
	int insertComment(Comment comment);
	//댓글 삭제 처리
	int deleteComment(Comment comment);
}
