package com.cafe24.phoenixooo.crm.employeeManagement.Model;

public class Employee {
	private String employeeCode;		// 직원 코드
	private String shopCode;			// 미용실 코드
	private String employeePw;			// 직원 비밀번호
	private String employeeLevelName;	// 직원 직급
	private String employeeName;		// 직원 이름
	private String employeeBirthDate;	// 직원 생년월일
	private String employeePostNo;		// 직원 우편번호
	private String employeeAddr;		// 직원 주소
	private String employeePhoneNo;		// 직원 전화번호
	private String employeeCellPhoneNo;	// 직원 휴대폰번호
	private String employeeJoinDate;	// 직원 입사일
	private String employeeMemo;		// 직원 메모
	
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
	public String getEmployeePostNo() {
		return employeePostNo;
	}
	public void setEmployeePostNo(String employeePostNo) {
		this.employeePostNo = employeePostNo;
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
				+ employeeBirthDate + ", employeePostNo=" + employeePostNo + ", employeeAddr=" + employeeAddr
				+ ", employeePhoneNo=" + employeePhoneNo + ", employeeCellPhoneNo=" + employeeCellPhoneNo
				+ ", employeeJoinDate=" + employeeJoinDate + ", employeeMemo=" + employeeMemo + "]";
	}
	
}
