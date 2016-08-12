package com.cafe24.phoenixooo.crm.CustomerManagement.Model;

public class CustomerPageHelper {

	private int startRow;						// 쿼리의 리미트 시작점
	private final int endRow = 10;				// 쿼리의 리미트 갯수 한 페이지에 나올 고객 수
	private int pageNo;							// 현재 페이지
	private int totalRow;						// 총 고객 수
	private int lastPageNo;						// 마지막 페이지 번호
	
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int pageNo) {
		this.startRow = endRow*(pageNo-1);
	}
	public int getEndRow() {
		return endRow;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	
	public int getTotalRow() {
		return totalRow;
	}
	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
	}
	
	public int getLastPageNo() {
		return lastPageNo;
	}
	public void setLastPageNo(int totalRow) {
		int a = 0;
		if(totalRow%endRow == 0){
			a = totalRow/endRow;
		}else{
			a = (totalRow/endRow) + 1;
		}
		this.lastPageNo = a;
	}
	
	@Override
	public String toString() {
		return "CustomerPageHelper [startRow=" + startRow + ", endRow=" + endRow + ", pageNo=" + pageNo + ", totalRow="
				+ totalRow + ", lastPageNo=" + lastPageNo + "]";
	}
	
}
