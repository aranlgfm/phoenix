package com.cafe24.phoenixooo.crm.employeeManagement.Model;

public class Employee {
	private String employeeCode;
	private String shopCode;
	private String employeePw;
	private String employeeLevelName;
	private String employeeName;
	private String employeeBirthDate;
	private String employeeAddr;
	private String employeePhoneNo;
	private String employeeCellPhoneNo;
	private String employeeJoinDate;
	private String employeeMemo;
	
	public String getEmployeeCode() {
		return employeeCode;
	}
	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getEmployeePw() {
		return employeePw;
	}
	public void setEmployeePw(String employeePw) {
		this.employeePw = employeePw;
	}
	public String getEmployeeLevelName() {
		return employeeLevelName;
	}
	public void setEmployeeLevelName(String employeeLevelName) {
		this.employeeLevelName = employeeLevelName;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeBirthDate() {
		return employeeBirthDate;
	}
	public void setEmployeeBirthDate(String employeeBirthDate) {
		this.employeeBirthDate = employeeBirthDate;
	}
	public String getEmployeeAddr() {
		return employeeAddr;
	}
	public void setEmployeeAddr(String employeeAddr) {
		this.employeeAddr = employeeAddr;
	}
	public String getEmployeePhoneNo() {
		return employeePhoneNo;
	}
	public void setEmployeePhoneNo(String employeePhoneNo) {
		this.employeePhoneNo = employeePhoneNo;
	}
	public String getEmployeeCellPhoneNo() {
		return employeeCellPhoneNo;
	}
	public void setEmployeeCellPhoneNo(String employeeCellPhoneNo) {
		this.employeeCellPhoneNo = employeeCellPhoneNo;
	}
	public String getEmployeeJoinDate() {
		return employeeJoinDate;
	}
	public void setEmployeeJoinDate(String employeeJoinDate) {
		this.employeeJoinDate = employeeJoinDate;
	}
	public String getEmployeeMemo() {
		return employeeMemo;
	}
	public void setEmployeeMemo(String employeeMemo) {
		this.employeeMemo = employeeMemo;
	}
	
	@Override
	public String toString() {
		return "Employee [employeeCode=" + employeeCode + ", shopCode=" + shopCode + ", employeePw=" + employeePw
				+ ", employeeLevelName=" + employeeLevelName + ", employeeName=" + employeeName + ", employeeBirthDate="
				+ employeeBirthDate + ", employeeAddr=" + employeeAddr + ", employeePhoneNo=" + employeePhoneNo
				+ ", employeeCellPhoneNo=" + employeeCellPhoneNo + ", employeeJoinDate=" + employeeJoinDate
				+ ", employeeMemo=" + employeeMemo + "]";
	}
	
}
