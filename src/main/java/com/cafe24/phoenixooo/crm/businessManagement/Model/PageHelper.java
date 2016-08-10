package com.cafe24.phoenixooo.crm.businessManagement.Model;

public class PageHelper {
	private int currentPageNo; // 현재페이지번호
	private int pagePerRecordSize;// 페이지당 레코드 수  
	private int totalRecordSize; // 전체레코드 수
	private int totalPageSize; // 전체 페이지 갯수
	
	private int pagePerListSize; //페이지하단에 보여지는 그룹개수 (통상10개)
	private int currentListStartPageNo; // 하단 페이징그룹의 시작번호
	private int currentListEndPageNo; // 하단 페이징그룹의 끝번호
	
	private int prevPageNo; //이전페이지 번호
	private int nextPageNo; //다음페이지 번호
	private int recordStartNo; //페이지에서 시작하는 레코드(행) 번호
	private int recordEndNo; //페이지에서 끝나는 레코드(행)번호
	
	//추가하는 페이징
	private String arrayKeyword;
	private String searchKeyword;
	private String shopCode;
	private String tableName;
	
	PageHelper(){}
	public PageHelper(	
			RequestPageHelper ph
	){	
		this.currentPageNo = ph.getCurrentPageNo();
		this.pagePerRecordSize = ph.getPagePerRecordSize();
		this.totalRecordSize = ph.getTotalRecordSize();
		this.pagePerListSize = ph.getPagePerListSize();
		this.arrayKeyword = ph.getArrayKeyword();
		this.searchKeyword = ph.getSearchKeyword();
		this.shopCode = ph.getShopCode();
		this.tableName = ph.getTableName();
		//totalRecordSize익셉션
		if(this.totalRecordSize == 0){
			this.totalRecordSize = 1;
			System.out.println("totalRecordSize = 0 입니다. 익셉션으로 만들어 줘야...;;");
		}
		
		
		//전체페이지 개수 
		this.totalPageSize = (int)(totalRecordSize/pagePerRecordSize);
			if((totalRecordSize%pagePerRecordSize) > 0){
				this.totalPageSize++;
			}
			if(totalPageSize < currentPageNo){
				this.currentPageNo = totalPageSize;
			}
		
		//페이지하단그룹	
		this.currentListStartPageNo = ((int)((currentPageNo-1)/pagePerListSize))*pagePerListSize+1;
		this.currentListEndPageNo = currentListStartPageNo+pagePerListSize-1;
			//페이지의 하단그룹 보정
			if(currentListEndPageNo > totalPageSize){
				currentListEndPageNo = totalPageSize;
			}
		
			
		// 데이터 시작행 마지막행
		this.recordStartNo = (currentPageNo-1)*pagePerRecordSize;
		this.recordEndNo = recordStartNo+pagePerRecordSize-1;
			//보정
			if(recordEndNo > totalRecordSize){
				recordEndNo = totalRecordSize;
			}
		
		
		//이전이후
		if(currentPageNo == 1){
			this.prevPageNo = 1;
		}else{
			this.prevPageNo = currentPageNo-1;
		}
		
		if(currentPageNo >= this.totalPageSize){
			this.nextPageNo = this.totalPageSize;
		}else{
			this.nextPageNo = currentPageNo+1;	
		}
	}
	
	
	
	
	
	
	public String getArrayKeyword() {
		return arrayKeyword;
	}
	public void setArrayKeyword(String arrayKeyword) {
		this.arrayKeyword = arrayKeyword;
	}
	
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
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
	public int getTotalPageSize() {
		return totalPageSize;
	}
	public void setTotalPageSize(int totalPageSize) {
		this.totalPageSize = totalPageSize;
	}
	public int getPagePerListSize() {
		return pagePerListSize;
	}
	public void setPagePerListSize(int pagePerListSize) {
		this.pagePerListSize = pagePerListSize;
	}
	public int getCurrentListStartPageNo() {
		return currentListStartPageNo;
	}
	public void setCurrentListStartPageNo(int currentListStartPageNo) {
		this.currentListStartPageNo = currentListStartPageNo;
	}
	public int getCurrentListEndPageNo() {
		return currentListEndPageNo;
	}
	public void setCurrentListEndPageNo(int currentListEndPageNo) {
		this.currentListEndPageNo = currentListEndPageNo;
	}
	public int getPrevPageNo() {
		return prevPageNo;
	}
	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}
	public int getNextPageNo() {
		return nextPageNo;
	}
	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}
	public int getRecordStartNo() {
		return recordStartNo;
	}
	public void setRecordStartNo(int recordStartNo) {
		this.recordStartNo = recordStartNo;
	}
	public int getRecordEndNo() {
		return recordEndNo;
	}
	public void setRecordEndNo(int recordEndNo) {
		this.recordEndNo = recordEndNo;
	}
	
	@Override
	public String toString() {
		return "PageHelper "
				+ "\n, totalRecordSize[전체레코드수]=" + totalRecordSize 
				+ "\n, pagePerRecordSize[페이지당레코드수]=" + pagePerRecordSize
				+ "\n, totalPageSize[전체페이지갯수]=" + totalPageSize 
				+ "\n[currentPageNo[현재페이지]=" + currentPageNo 
				+ "\n, recordStartNo[현재페이지의 레코드 시작행(ROW)]=" + recordStartNo 
				+ "\n, recordEndNo[현재페이지 레코드 끝행(ROW)]=" + recordEndNo  
				+ "\n, pagePerListSize[페이지당그룹(하단페이지)개수]="+ pagePerListSize 
				+ "\n, currentListStartPageNo[현재페이지의 그룹(하단페이지)시작번호]=" + currentListStartPageNo 
				+ "\n, currentListEndPageNo[현재페이지의 그룹끝(하단페이지)번호]=" + currentListEndPageNo 
				+ "\n, prevPageNo[이전페이지]="+ prevPageNo 
				+ "\n, nextPageNo[다음페이지]=" + nextPageNo;
	}
}


