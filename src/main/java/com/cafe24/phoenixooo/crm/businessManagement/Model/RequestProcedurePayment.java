package com.cafe24.phoenixooo.crm.businessManagement.Model;


public class RequestProcedurePayment {
	private String paymentCode;
	private String shopCode;
	private String employeeCode;
	private String userCode;
	private String itemDesignCode;
	private int paymentTotalPrice; //최종가격
	private String paymentDate; // 시술일
	private String paymentMemo; // 시술메모
	private String paymentTypeCode; //결제방법
	private String itemCode;
	
	
	
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
	public int getPaymentTotalPrice() {
		return paymentTotalPrice;
	}
	public void setPaymentTotalPrice(int paymentTotalPrice) {
		this.paymentTotalPrice = paymentTotalPrice;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getPaymentMemo() {
		return paymentMemo;
	}
	public void setPaymentMemo(String paymentMemo) {
		this.paymentMemo = paymentMemo;
	}
	public String getPaymentTypeCode() {
		return paymentTypeCode;
	}
	public void setPaymentTypeCode(String paymentTypeCode) {
		this.paymentTypeCode = paymentTypeCode;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getItemDesignCode() {
		return itemDesignCode;
	}
	public void setItemDesignCode(String itemDesignCode) {
		this.itemDesignCode = itemDesignCode;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getEmployeeCode() {
		return employeeCode;
	}
	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	
	
	@Override
	public String toString() {
		return "RequestProcedurePayment [paymentCode=" + paymentCode + ", paymentTotalPrice=" + paymentTotalPrice
				+ ", paymentDate=" + paymentDate + ", paymentMemo=" + paymentMemo + ", paymentTypeCode="
				+ paymentTypeCode + ", shopCode=" + shopCode + ", itemDesignCode=" + itemDesignCode + ", itemCode="
				+ itemCode + ", employeeCode=" + employeeCode + ", userCode=" + userCode + "]";
	}
	
}
