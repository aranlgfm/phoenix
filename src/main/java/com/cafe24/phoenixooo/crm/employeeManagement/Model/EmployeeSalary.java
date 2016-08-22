package com.cafe24.phoenixooo.crm.employeeManagement.Model;

public class EmployeeSalary {
	private String salaryCode;		// 급여지급 코드
	private String shopCode;		// 미용실 코드
	private String employeeCode;	// 직원 코드
	private String salaryPayDate;	// 급여지급일
	private String salaryMonthDate;	// 근무년월
	private String employeeName;	// 직원 이름
	private int salaryWon;			// 지급급여
	
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
