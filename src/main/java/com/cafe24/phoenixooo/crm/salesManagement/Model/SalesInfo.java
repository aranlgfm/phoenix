package com.cafe24.phoenixooo.crm.salesManagement.Model;

public class SalesInfo {

 
	private String paymentCode;;
	private String shopCode;
	private String employeeCode;
	private String userCode;
	private String pointCode;
	private String itemDesignCode;
	private String userName;
	private String employeeName;
	private String itemDesignName;
	private String paymentTypeGb;
	private int paymentTotalWon;
	private String paymentDate;
	
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
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
	public String getPointCode() {
		return pointCode;
	}
	public void setPointCode(String pointCode) {
		this.pointCode = pointCode;
	}
	public String getItemDesignCode() {
		return itemDesignCode;
	}
	public void setItemDesignCode(String itemDesignCode) {
		this.itemDesignCode = itemDesignCode;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getItemDesignName() {
		return itemDesignName;
	}
	public void setItemDesignName(String itemDesignName) {
		this.itemDesignName = itemDesignName;
	}
	public String getPaymentTypeGb() {
		return paymentTypeGb;
	}
	public void setPaymentTypeGb(String paymentTypeGb) {
		this.paymentTypeGb = paymentTypeGb;
	}
	public int getPaymentTotalWon() {
		return paymentTotalWon;
	}
	public void setPaymentTotalWon(int paymentTotalWon) {
		this.paymentTotalWon = paymentTotalWon;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	
	@Override
	public String toString() {
		return "SalesInfo [paymentCode=" + paymentCode + ", shopCode=" + shopCode + ", employeeCode=" + employeeCode
				+ ", userCode=" + userCode + ", pointCode=" + pointCode + ", itemDesignCode=" + itemDesignCode
				+ ", userName=" + userName + ", employeeName=" + employeeName + ", itemDesignName=" + itemDesignName
				+ ", paymentTypeGb=" + paymentTypeGb + ", paymentTotalWon=" + paymentTotalWon + ", paymentDate="
				+ paymentDate + "]";
	}
	
	
}
