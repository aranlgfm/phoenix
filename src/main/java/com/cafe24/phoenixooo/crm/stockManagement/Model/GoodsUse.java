package com.cafe24.phoenixooo.crm.stockManagement.Model;

public class GoodsUse {
	private String useCode;
	private String userCode;
	private String shopCode;
	private String accountName;
	private String goodsName;
	private int useQuantityNumber;
	private String employeeName;
	private String useDate;
	private String useMemo;
	
	public String getUseCode() {
		return useCode;
	}
	public void setUseCode(String useCode) {
		this.useCode = useCode;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getUseQuantityNumber() {
		return useQuantityNumber;
	}
	public void setUseQuantityNumber(int useQuantityNumber) {
		this.useQuantityNumber = useQuantityNumber;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getUseDate() {
		return useDate;
	}
	public void setUseDate(String useDate) {
		this.useDate = useDate;
	}
	public String getUseMemo() {
		return useMemo;
	}
	public void setUseMemo(String useMemo) {
		this.useMemo = useMemo;
	}
	
	@Override
	public String toString() {
		return "GoodsUse [useCode=" + useCode + ", userCode=" + userCode + ", shopCode=" + shopCode + ", accountName="
				+ accountName + ", goodsName=" + goodsName + ", useQuantityNumber=" + useQuantityNumber
				+ ", employeeName=" + employeeName + ", useDate=" + useDate + ", useMemo=" + useMemo + "]";
	}
}
