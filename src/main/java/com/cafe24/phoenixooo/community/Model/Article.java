package com.cafe24.phoenixooo.community.Model;

public class Article 
{
	private String articleCode;
	private String userCode;
	private String boardGroupCode;
	private String articleName;
	private String articleContent;
	private String articleDate;
	private String articleIp;
	private String articleWriter;
	
	public String getArticleCode() {
		return articleCode;
	}
	public void setArticleCode(String articleCode) {
		this.articleCode = articleCode;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
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
	
	@Override
	public String toString() {
		return "Article [articleCode=" + articleCode + ", userCode=" + userCode + ", boardGroupCode=" + boardGroupCode
				+ ", articleName=" + articleName + ", articleContent=" + articleContent + ", articleDate=" + articleDate
				+ ", articleIp=" + articleIp + ", articleWriter=" + articleWriter + "]";
	}
	
	
}