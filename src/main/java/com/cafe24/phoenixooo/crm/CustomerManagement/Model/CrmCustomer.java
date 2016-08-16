package com.cafe24.phoenixooo.crm.CustomerManagement.Model;

public class CrmCustomer {
	
	private String customerCode;				// not noll
	private String userCode;					// not noll	
	private String shopCode;					// not noll
	private String customerName;				// not noll
	private String customerCellphoneNumber;		// not noll
	private String customerSexFlag;				// not noll
	private String customerFirstVisitDate;
	private String customerJoinDate;			// not noll
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
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
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
	public String getCustomerSexFlag() {
		return customerSexFlag;
	}
	public void setCustomerSexFlag(String customerSexFlag) {
		this.customerSexFlag = customerSexFlag;
	}
	public String getCustomerFirstVisitDate() {
		return customerFirstVisitDate;
	}
	public void setCustomerFirstVisitDate(String customerFirstVisitDate) {
		if(customerFirstVisitDate.length() < 4){
			this.customerFirstVisitDate = null;
		}else{
			this.customerFirstVisitDate = customerFirstVisitDate;
		}
	}
	public String getCustomerJoinDate() {
		return customerJoinDate;
	}
	public void setCustomerJoinDate(String customerJoinDate) {
		this.customerJoinDate = customerJoinDate;
	}
	public String getEmployeeCode() {
		return employeeCode;
	}
	public void setEmployeeCode(String employeeCode) {
		if(employeeCode.length() < 1){
			this.employeeCode = null;
		}else{
			this.employeeCode = employeeCode;
		}
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		if(employeeName.length() < 1){
			this.employeeName = null;
		}else{
			this.employeeName = employeeName;
		}
	}
	public String getCustomerBirthDate() {
		return customerBirthDate;
	}
	public void setCustomerBirthDate(String customerBirthDate) {
		if(customerBirthDate.length() < 4){
			this.customerBirthDate = null;
		}else{
			this.customerBirthDate = customerBirthDate;
		}
	}
	public String getCustomerPostNumber() {
		return customerPostNumber;
	}
	public void setCustomerPostNumber(String customerPostNumber) {
		if(customerPostNumber.length() < 4){
			this.customerPostNumber = null;
		}else{
			this.customerPostNumber = customerPostNumber;
		}
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		if(customerAddress.length() < 4){
			this.customerAddress = null;
		}else{
			this.customerAddress = customerAddress;
		}
	}
	public String getCustomerEmailAddress() {
		return customerEmailAddress;
	}
	public void setCustomerEmailAddress(String customerEmailAddress) {
		if(customerEmailAddress.length() < 4){
			this.customerEmailAddress = null;
		}else{
			this.customerEmailAddress = customerEmailAddress;
		}
	}
	public String getCustomerAnniversaryDate() {
		return customerAnniversaryDate;
	}
	public void setCustomerAnniversaryDate(String customerAnniversaryDate) {
		if(customerAnniversaryDate.length() < 4){
			this.customerAnniversaryDate = null;
		}else{
			this.customerAnniversaryDate = customerAnniversaryDate;
		}
	}
	public String getCustomerMemo() {
		return customerMemo;
	}
	public void setCustomerMemo(String customerMemo) {
		this.customerMemo = customerMemo;
	}
	
	@Override
	public String toString() {
		return "CrmCustomer [customerCode=" + customerCode + ", userCode=" + userCode + ", shopCode=" + shopCode
				+ ", customerName=" + customerName + ", customerCellphoneNumber=" + customerCellphoneNumber
				+ ", customerSexFlag=" + customerSexFlag + ", customerFirstVisitDate=" + customerFirstVisitDate
				+ ", customerJoinDate=" + customerJoinDate + ", employeeCode=" + employeeCode + ", employeeName="
				+ employeeName + ", customerBirthDate=" + customerBirthDate + ", customerPostNumber="
				+ customerPostNumber + ", customerAddress=" + customerAddress + ", customerEmailAddress="
				+ customerEmailAddress + ", customerAnniversaryDate=" + customerAnniversaryDate + ", customerMemo="
				+ customerMemo + "]";
	}
	
}
