package com.cafe24.phoenixooo.crm.businessManagement.Model;

public class RequestPageHelper {
	private int currentPageNo; // 현재페이지번호
	private int pagePerRecordSize;// 페이지당 레코드 수  
	private int totalRecordSize; // 전체레코드 수
	private int pagePerListSize; //페이지하단에 보여지는 그룹개수 (통상10개)
	private String arrayKeyword; //정렬할때 쓸 값
	private String searchKeyword;
	
	private String columName; 
	private String shopCode;
	private String tableName;

	public RequestPageHelper(){
		if(this.currentPageNo == 0){
			this.currentPageNo = 1;
		}
		if(this.pagePerRecordSize == 0){
			this.pagePerRecordSize = 10;
		}
		if(this.pagePerListSize == 0){
			this.pagePerListSize = 10;
		}
	}
	
	
	
	
	
	public String getColumName() {
		return columName;
	}



	public void setColumName(String columName) {
		this.columName = columName;
	}





	public String getShopCode() {
		return shopCode;
	}





	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}





	public String getTableName() {
		return tableName;
	}





	public void setTableName(String tableName) {
		this.tableName = tableName;
	}





	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
	public String getArrayKeyword() {
		return arrayKeyword;
	}

	public void setArrayKeyword(String arrayKeyword) {
		this.arrayKeyword = arrayKeyword;
	}
	
	
	public int getCurrentPageNo() {
		return currentPageNo;
	}
	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}
	public int getPagePerRecordSize() {
		return pagePerRecordSize;
	}
	public void setPagePerRecordSize(int pagePerRecordSize) {
		this.pagePerRecordSize = pagePerRecordSize;
	}
	public int getTotalRecordSize() {
		return totalRecordSize;
	}
	public void setTotalRecordSize(int totalRecordSize) {
		this.totalRecordSize = totalRecordSize;
	}
	public int getPagePerListSize() {
		return pagePerListSize;
	}
	public void setPagePerListSize(int pagePerListSize) {
		this.pagePerListSize = pagePerListSize;
	}
	



	@Override
	public String toString() {
		return "RequestPageHelper [currentPageNo=" + currentPageNo + ", pagePerRecordSize=" + pagePerRecordSize
				+ ", totalRecordSize=" + totalRecordSize + ", pagePerListSize=" + pagePerListSize + ", arrayKeyword="
				+ arrayKeyword + ", searchKeyword=" + searchKeyword + ", shopCode=" + shopCode + ", tableName="
				+ tableName + "]";
	}
	
	
	
	
}


