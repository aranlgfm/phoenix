package com.cafe24.phoenixooo.community.Model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Article 
{
	private String articleCode;
	private String articleNumber;
	private String userCode;
	private String userNickName;
	private String boardGroupCode;
	private String articleName;
	private String articleContent;
	private String articleDate;
	private String articleIp;
	private String articleWriter;
	private List<Comment> commentList;
	private List<MultipartFile> imgFile; // 파일 업로드
	
	public String getArticleCode() {
		return articleCode;
	}
	public void setArticleCode(String articleCode) {
		this.articleCode = articleCode;
	}
	public String getArticleNumber() {
		return articleNumber;
	}
	public void setArticleNumber(String articleNumber) {
		this.articleNumber = articleNumber;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getBoardGroupCode() {
		return boardGroupCode;
	}
	public void setBoardGroupCode(String boardGroupCode) {
		this.boardGroupCode = boardGroupCode;
	}
	public String getArticleName() {
		return articleName;
	}
	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}
	public String getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public String getArticleDate() {
		return articleDate;
	}
	public void setArticleDate(String articleDate) {
		this.articleDate = articleDate;
	}
	public String getArticleIp() {
		return articleIp;
	}
	public void setArticleIp(String articleIp) {
		this.articleIp = articleIp;
	}
	public String getArticleWriter() {
		return articleWriter;
	}
	public void setArticleWriter(String articleWriter) {
		this.articleWriter = articleWriter;
	}
	public List<Comment> getCommentList() {
		return commentList;
	}
	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
	}
	public List<MultipartFile> getImgFile() {
		return imgFile;
	}
	public void setImgFile(List<MultipartFile> imgFile) {
		this.imgFile = imgFile;
	}
}