package com.cafe24.phoenixooo.crm.stockManagement.Model;

public class GoodsStockCommand 
{
	private String userCode;
	private String stockDate;
	private String employeeName;
	private String accountName;
	private String goodsName;
	private int buyingGoodsUnitWon;
	private int goodsQuantityNumber;
	private int purchaseForOneOrder;
	
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getStockDate() {
		return stockDate;
	}
	public void setStockDate(String stockDate) {
		this.stockDate = stockDate;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
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
	public int getBuyingGoodsUnitWon() {
		return buyingGoodsUnitWon;
	}
	public void setBuyingGoodsUnitWon(int buyingGoodsUnitWon) {
		this.buyingGoodsUnitWon = buyingGoodsUnitWon;
	}
	public int getGoodsQuantityNumber() {
		return goodsQuantityNumber;
	}
	public void setGoodsQuantityNumber(int goodsQuantityNumber) {
		this.goodsQuantityNumber = goodsQuantityNumber;
	}
	public int getPurchaseForOneOrder() {
		return purchaseForOneOrder;
	}
	public void setPurchaseForOneOrder(int purchaseForOneOrder) {
		this.purchaseForOneOrder = purchaseForOneOrder;
	}
	@Override
	public String toString() {
		return "GoodsStockCommand [userCode=" + userCode + ", stockDate=" + stockDate + ", employeeName=" + employeeName
				+ ", accountName=" + accountName + ", goodsName=" + goodsName + ", buyingGoodsUnitWon="
				+ buyingGoodsUnitWon + ", goodsQuantityNumber=" + goodsQuantityNumber + ", purchaseForOneOrder="
				+ purchaseForOneOrder + "]";
	}
	
	
}
