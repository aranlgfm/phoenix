package com.cafe24.phoenixooo.crm.employeeManagement.Model;

public class EmployeeSalary {
	private String salaryCode;
	private String shopCode;
	private String employeeCode;
	private String salaryPayCode;
	private String salaryMonthCode;
	private String employeeName;
	private int salaryWon;
	
	public String getSalaryCode() {
		return salaryCode;
	}
	public void setSalaryCode(String salaryCode) {
		this.salaryCode = salaryCode;
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
	public String getSalaryPayCode() {
		return salaryPayCode;
	}
	public void setSalaryPayCode(String salaryPayCode) {
		this.salaryPayCode = salaryPayCode;
	}
	public String getSalaryMonthCode() {
		return salaryMonthCode;
	}
	public void setSalaryMonthCode(String salaryMonthCode) {
		this.salaryMonthCode = salaryMonthCode;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public int getSalaryWon() {
		return salaryWon;
	}
	public void setSalaryWon(int salaryWon) {
		this.salaryWon = salaryWon;
	}
	
	@Override
	public String toString() {
		return "EmployeeSalary [salaryCode=" + salaryCode + ", shopCode=" + shopCode + ", employeeCode=" + employeeCode
				+ ", salaryPayCode=" + salaryPayCode + ", salaryMonthCode=" + salaryMonthCode + ", employeeName="
				+ employeeName + ", salaryWon=" + salaryWon + "]";
	}
	
}
