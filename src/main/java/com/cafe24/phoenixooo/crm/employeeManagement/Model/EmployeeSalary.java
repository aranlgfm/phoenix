package com.cafe24.phoenixooo.crm.employeeManagement.Model;

public class EmployeeSalary {
	private String salaryCode;
	private String shopCode;
	private String employeeCode;
	private String salaryPayDate;
	private String salaryMonthDate;
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
	public String getSalaryPayDate() {
		return salaryPayDate;
	}
	public void setSalaryPayDate(String salaryPayDate) {
		this.salaryPayDate = salaryPayDate;
	}
	public String getSalaryMonthDate() {
		return salaryMonthDate;
	}
	public void setSalaryMonthDate(String salaryMonthDate) {
		this.salaryMonthDate = salaryMonthDate;
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
				+ ", salaryPayDate=" + salaryPayDate + ", salaryMonthDate=" + salaryMonthDate + ", employeeName="
				+ employeeName + ", salaryWon=" + salaryWon + "]";
	}
	
}
