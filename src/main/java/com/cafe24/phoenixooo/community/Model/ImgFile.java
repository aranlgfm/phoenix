package com.cafe24.phoenixooo.community.Model;

public class ImgFile {

	/**
	 * 최종수정일 2016-08-01 강재욱
	 * ImgFile 객체 생성
	 */
	
	private String fileCode;	//파일코드넘버
	private String articleCode;		//계약코드
	private String filePath;		//파일경로+파일랜덤이름+확장자
	private String fileName;	//원본파일이름+확장자
	private String randomName;	//랜덤이름(실제저장될이름)
	private String fileStatus;	//파기파일사유서 인지여부 ( 기본값은 N이고 파기파일 업로드시 Y로 업데이트할것)
	
	public String getFileCode() {
		return fileCode;
	}
	public void setFileCode(String fileCode) {
		this.fileCode = fileCode;
	}
	public String getArticleCode() {
		return articleCode;
	}
	public void setArticleCode(String articleCode) {
		this.articleCode = articleCode;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getRandomName() {
		return randomName;
	}
	public void setRandomName(String randomName) {
		this.randomName = randomName;
	}
	public String getFileStatus() {
		return fileStatus;
	}
	public void setFileStatus(String fileStatus) {
		this.fileStatus = fileStatus;
	}
	@Override
	public String toString() {
		return "ImgFile [fileCode=" + fileCode + ", articleCode=" + articleCode + ", filePath=" + filePath
				+ ", fileName=" + fileName + ", randomName=" + randomName + ", fileStatus=" + fileStatus + "]";
	}
	
	
	
	
}
