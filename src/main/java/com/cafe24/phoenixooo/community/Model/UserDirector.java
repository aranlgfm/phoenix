package com.cafe24.phoenixooo.community.Model;

/**
 * 인터페이스 User
 * 필드중에 UserCustomer객체참조변수 있음.
 * @author 201-24
 *
 */
public class UserDirector extends UserCustomer {

	private String shopCode;
	private String shopName;
	private String shopAddress;
	private String shopPostNumber;
	private int businessNumber;
	private String shopMemo;
	private String shopJoinDate;
	
	
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopAddress() {
		return shopAddress;
	}
	public void setShopAddress(String shopAddress) {
		this.shopAddress = shopAddress;
	}
	public String getShopPostNumber() {
		return shopPostNumber;
	}
	public void setShopPostNumber(String shopPostNumber) {
		this.shopPostNumber = shopPostNumber;
	}
	public int getBusinessNumber() {
		return businessNumber;
	}
	public void setBusinessNumber(int businessNumber) {
		this.businessNumber = businessNumber;
	}
	public String getShopMemo() {
		return shopMemo;
	}
	public void setShopMemo(String shopMemo) {
		this.shopMemo = shopMemo;
	}
	public String getShopJoinDate() {
		return shopJoinDate;
	}
	public void setShopJoinDate(String shopJoinDate) {
		this.shopJoinDate = shopJoinDate;
	}
	
	
	@Override
	public String toString() {
		return "UserDirector [shopCode=" + shopCode + ", shopName=" + shopName + ", shopAddress=" + shopAddress
				+ ", shopPostNumber=" + shopPostNumber + ", businessNumber=" + businessNumber + ", shopMemo=" + shopMemo
				+ ", shopJoinDate=" + shopJoinDate + "]";
	}

	
	
	
}
