package com.cafe24.phoenixooo.community.Repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Model.Comment;
import com.cafe24.phoenixooo.community.Model.ImgFile;

@Repository
public class BoardDaoImpl implements BoardDao
{
	private final String NS = "com.cafe24.phoenixooo.community.Repository.BoardMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	//게시글 리스트 가져오기.게시판 화면.
	@Override
	public List<Article> selectArticleList(Map<String, Object> map) {
			return sqlSession.selectList(NS + ".selectArticleList", map);
	}
	
	//글 1개 가져오기
	@Override
	public Article selectArticle(String articleCode) {
	
		return sqlSession.selectOne(NS+".selectArticle", articleCode);
	}
	
	//글 1개 등록
	@Override
	public String insertArticle(Article article) {
		// TODO Auto-generated method stub
		sqlSession.insert(NS+".insertArticle", article);
		return article.getArticleCode();
	}

	//글 1개 수정
	@Override
	public int updateArticle(Article article) {
		// TODO Auto-generated method stub
		return sqlSession.update(NS+".updateArticle", article);
	}
	
	//글 1개 삭제
	@Override
	public int deleteArticle(Article article) {
		return sqlSession.delete(NS+".deleteArticle", article);
	}
	
	//댓글등록
	@Override
	public int insertComment(Comment comment) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NS+".insertComment", comment);
	}
	
	//댓글목록 가져오기
	@Override
	public List<Comment> selectCommentList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".selectCommentList", map);
	}
	
	//댓글 삭제
	@Override
	public int deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		return sqlSession.delete(NS+".deleteComment", comment);
	}
	
	//파일 업로드 -> 랜덤네임 중복확인
	@Override
	public ImgFile selectImgFileByRandomName(String randomName) {
		System.out.println("랜덤 네임 중복확인 메서드 selectImgFileByRandomName 실행");
		return sqlSession.selectOne(NS+".selectImgFileByRandomName", randomName);
	}
	
	
	//파일 등록
	@Override
	public void subAddImgFile(ImgFile imgFile) {
		System.out.println("파일 등록 메서드 subAddImgFile 실행");
		sqlSession.insert(NS+".subAddImgFile", imgFile);
	}
	
	
	//파일 이름 가져오기
	@Override
	public List<ImgFile> selectImgFileName(String articleCode) {
		System.out.println("여긴 되냐");
		return sqlSession.selectList(NS+".selectImgFileName", articleCode);
	}
	
}
