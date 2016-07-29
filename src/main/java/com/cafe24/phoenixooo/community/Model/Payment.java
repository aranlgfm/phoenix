package com.cafe24.phoenixooo.community.Model;

public class Payment {

	private String paymentCode;
	private String orderCode;
	private String userCode;
	private String shopCode;
	private String swCode;
	private int swWon;
	private String swPaymentOptionName;
	private String swPamentDate;
	private String startingServiceDate;
	private String swEndingServiceDate;
	private String swServiceStatus;
	
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
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
	public String getSwCode() {
		return swCode;
	}
	public void setSwCode(String swCode) {
		this.swCode = swCode;
	}
	public int getSwWon() {
		return swWon;
	}
	public void setSwWon(int swWon) {
		this.swWon = swWon;
	}
	public String getSwPaymentOptionName() {
		return swPaymentOptionName;
	}
	public void setSwPaymentOptionName(String swPaymentOptionName) {
		this.swPaymentOptionName = swPaymentOptionName;
	}
	public String getSwPamentDate() {
		return swPamentDate;
	}
	public void setSwPamentDate(String swPamentDate) {
		this.swPamentDate = swPamentDate;
	}
	public String getStartingServiceDate() {
		return startingServiceDate;
	}
	public void setStartingServiceDate(String startingServiceDate) {
		this.startingServiceDate = startingServiceDate;
	}
	public String getSwEndingServiceDate() {
		return swEndingServiceDate;
	}
	public void setSwEndingServiceDate(String swEndingServiceDate) {
		this.swEndingServiceDate = swEndingServiceDate;
	}
	public String getSwServiceStatus() {
		return swServiceStatus;
	}
	public void setSwServiceStatus(String swServiceStatus) {
		this.swServiceStatus = swServiceStatus;
	}
	
	
	@Override
	public String toString() {
		return "Payment [paymentCode=" + paymentCode + ", orderCode=" + orderCode + ", userCode=" + userCode
				+ ", shopCode=" + shopCode + ", swCode=" + swCode + ", swWon=" + swWon + ", swPaymentOptionName="
				+ swPaymentOptionName + ", swPamentDate=" + swPamentDate + ", startingServiceDate="
				+ startingServiceDate + ", swEndingServiceDate=" + swEndingServiceDate + ", swServiceStatus="
				+ swServiceStatus + "]";
	}
	
	
}
