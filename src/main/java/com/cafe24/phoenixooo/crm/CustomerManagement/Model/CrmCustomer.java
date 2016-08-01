package com.cafe24.phoenixooo.crm.CustomerManagement.Model;

public class CrmCustomer {
	
	private String customerCode;
	private String userCode;
	private String customerName;
	private String customerCellphoneNumber;
	private int customerSexFlag;
	private String customerFirstVisitDate;
	private String employeeCode;
	private String employeeName;
	private String customerBirthDate;
	private String customerPostNumber;
	private String customerAddress;
	private String customerEmailAddress;
	private String customerAnniversaryDate;
	private String customerMemo;
	
	public String getCustomerCode() {
		return customerCode;
	}
	public void setCustomerCode(String customerCode) {
		this.customerCode = customerCode;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerCellphoneNumber() {
		return customerCellphoneNumber;
	}
	public void setCustomerCellphoneNumber(String customerCellphoneNumber) {
		this.customerCellphoneNumber = customerCellphoneNumber;
	}
	public int getCustomerSexFlag() {
		return customerSexFlag;
	}
	public void setCustomerSexFlag(int customerSexFlag) {
		this.customerSexFlag = customerSexFlag;
	}
	public String getCustomerFirstVisitDate() {
		return customerFirstVisitDate;
	}
	public void setCustomerFirstVisitDate(String customerFirstVisitDate) {
		this.customerFirstVisitDate = customerFirstVisitDate;
	}
	public String getEmployeeCode() {
		return employeeCode;
	}
	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getCustomerBirthDate() {
		return customerBirthDate;
	}
	public void setCustomerBirthDate(String customerBirthDate) {
		this.customerBirthDate = customerBirthDate;
	}
	public String getCustomerPostNumber() {
		return customerPostNumber;
	}
	public void setCustomerPostNumber(String customerPostNumber) {
		this.customerPostNumber = customerPostNumber;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getCustomerEmailAddress() {
		return customerEmailAddress;
	}
	public void setCustomerEmailAddress(String customerEmailAddress) {
		this.customerEmailAddress = customerEmailAddress;
	}
	public String getCustomerAnniversaryDate() {
		return customerAnniversaryDate;
	}
	public void setCustomerAnniversaryDate(String customerAnniversaryDate) {
		this.customerAnniversaryDate = customerAnniversaryDate;
	}
	public String getCustomerMemo() {
		return customerMemo;
	}
	public void setCustomerMemo(String customerMemo) {
		this.customerMemo = customerMemo;
	}
	
	@Override
	public String toString() {
		return "CrmCustomer [customerCode=" + customerCode + ", userCode=" + userCode + ", customerName=" + customerName
				+ ", customerCellphoneNumber=" + customerCellphoneNumber + ", customerSexFlag=" + customerSexFlag
				+ ", customerFirstVisitDate=" + customerFirstVisitDate + ", employeeCode=" + employeeCode
				+ ", employeeName=" + employeeName + ", customerBirthDate=" + customerBirthDate
				+ ", customerPostNumber=" + customerPostNumber + ", customerAddress=" + customerAddress
				+ ", customerEmailAddress=" + customerEmailAddress + ", customerAnniversaryDate="
				+ customerAnniversaryDate + ", customerMemo=" + customerMemo + "]";
	}
	
}
