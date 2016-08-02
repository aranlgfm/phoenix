package com.cafe24.phoenixooo.community.Model;

/**
 * 인터페이스 User
 * 필드중에 UserCustomer객체참조변수 있음.
 * @author 201-24
 *
 */
public class UserDesigner extends UserDirector {
	
	private String shopCode;
	
	@Override
	public String toString() {
		return "UserDesigner [shopCode=" + shopCode + "]";
	}	
	
	public String getShopCode() {
		return shopCode;
	}
	
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	
	
	
	
}
