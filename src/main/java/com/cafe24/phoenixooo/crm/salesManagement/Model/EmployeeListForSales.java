package com.cafe24.phoenixooo.crm.salesManagement.Model;

public class EmployeeListForSales {

	private String employeeCode;
	private String employeeName;
	private String shopCode;
	
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
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	
	@Override
	public String toString() {
		return "EmployeeSales [employeeCode=" + employeeCode + ", employeeName=" + employeeName + ", shopCode="
				+ shopCode + "]";
	}
	
}
