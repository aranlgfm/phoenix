package com.cafe24.phoenixooo.community.Model;

public class RepaymentRequestCommand {

	private String repaymentRequestCode; //만들면됨
	private String paymentCode; //처리
	private String userSystemCode; //가라
	private String userCode; //처리
	private String shopCode; //처리
	private String swCode; //처리
	private int repaymentRequestWon;
	private String repaymentRequestDate; //now
	private String repaymentPermissionDate; //null
	private String bankName;
	private String accountNumber;
	public String getRepaymentRequestCode() {
		return repaymentRequestCode;
	}
	public void setRepaymentRequestCode(String repaymentRequestCode) {
		this.repaymentRequestCode = repaymentRequestCode;
	}
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getUserSystemCode() {
		return userSystemCode;
	}
	public void setUserSystemCode(String userSystemCode) {
		this.userSystemCode = userSystemCode;
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
	public int getRepaymentRequestWon() {
		return repaymentRequestWon;
	}
	public void setRepaymentRequestWon(int repaymentRequestWon) {
		this.repaymentRequestWon = repaymentRequestWon;
	}
	public String getRepaymentRequestDate() {
		return repaymentRequestDate;
	}
	public void setRepaymentRequestDate(String repaymentRequestDate) {
		this.repaymentRequestDate = repaymentRequestDate;
	}
	public String getRepaymentPermissionDate() {
		return repaymentPermissionDate;
	}
	public void setRepaymentPermissionDate(String repaymentPermissionDate) {
		this.repaymentPermissionDate = repaymentPermissionDate;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	
	@Override
	public String toString() {
		return "RepaymentRequestCommand [repaymentRequestCode=" + repaymentRequestCode + ", paymentCode=" + paymentCode
				+ ", userSystemCode=" + userSystemCode + ", userCode=" + userCode + ", shopCode=" + shopCode
				+ ", swCode=" + swCode + ", repaymentRequestWon=" + repaymentRequestWon + ", repaymentRequestDate="
				+ repaymentRequestDate + ", repaymentPermissionDate=" + repaymentPermissionDate + ", bankName="
				+ bankName + ", accountNumber=" + accountNumber + "]";
	}
	
	
}
