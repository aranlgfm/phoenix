package com.cafe24.phoenixooo.crm.stockManagement.Model;

public class GoodsPayment {
	private String userCode;
	private String shopCode;
	private String stockCode;
	private String paymentCode; 
	private String paymentDate;
	private String employeeName;
	private int purchaseForOneOrder;
	private String paymentMemo;
	
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
	public String getStockCode() {
		return stockCode;
	}
	public void setStockCode(String stockCode) {
		this.stockCode = stockCode;
	}
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public int getPurchaseForOneOrder() {
		return purchaseForOneOrder;
	}
	public void setPurchaseForOneOrder(int purchaseForOneOrder) {
		this.purchaseForOneOrder = purchaseForOneOrder;
	}
	public String getPaymentMemo() {
		return paymentMemo;
	}
	public void setPaymentMemo(String paymentMemo) {
		this.paymentMemo = paymentMemo;
	} 
	
	
}
