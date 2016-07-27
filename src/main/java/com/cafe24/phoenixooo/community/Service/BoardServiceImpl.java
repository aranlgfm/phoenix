package com.cafe24.phoenixooo.community.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Model.Comment;
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
	
	//글 1개  가져오기
	@Override
	public Article getArticle(Article article) {
		Article article2=boardDao.selectArticle(article);
	//	System.out.println(article.getArticleCode()+"<------------------article code");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("articleCode", article.getArticleCode());
		
		article2.setCommentList(boardDao.selectCommentList(map));
		System.out.println(article2.getCommentList()+"<--------------commentlist의 참조값");
		return article2;
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
	
	//댓글 등록
	@Override
	public int insertComment(Comment comment) {
		return boardDao.insertComment(comment);
	}
	
	//댓글 삭제
	@Override
	public String deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		int result=boardDao.deleteComment(comment);
		
		return comment.getArticleCode();
	}
}
