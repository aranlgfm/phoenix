package com.cafe24.phoenixooo.crm.salesManagement.Model;

public class MonthSalesInfo extends DaySalesInfo {

	private String paymentStartDay;
	private String paymentEndDay;
	private String paymentYear;
	private String paymentMonth;
	private String paymentDay;
	private String paymentYearMonth;
	private String procedureName;
	
	
	public String getPaymentStartDay() {
		return paymentStartDay;
	}
	public void setPaymentStartDay(String paymentStartDay) {
		this.paymentStartDay = paymentStartDay;
	}
	public String getPaymentEndDay() {
		return paymentEndDay;
	}
	public void setPaymentEndDay(String paymentEndDay) {
		this.paymentEndDay = paymentEndDay;
	}
	public String getPaymentYear() {
		return paymentYear;
	}
	public void setPaymentYear(String paymentYear) {
		this.paymentYear = paymentYear;
	}
	public String getPaymentMonth() {
		return paymentMonth;
	}
	public void setPaymentMonth(String paymentMonth) {
		this.paymentMonth = paymentMonth;
	}
	public String getPaymentYearMonth() {
		return paymentYearMonth;
	}
	public void setPaymentYearMonth(String paymentYearMonth) {
		this.paymentYearMonth = paymentYearMonth;
	}
	
	public String getPaymentDay() {
		return paymentDay;
	}
	public void setPaymentDay(String paymentDay) {
		this.paymentDay = paymentDay;
	}
	public String getProcedureName() {
		return procedureName;
	}
	public void setProcedureName(String procedureName) {
		this.procedureName = procedureName;
	}
	@Override
	public String toString() {
		return "MonthSalesInfo [paymentStartDay=" + paymentStartDay + ", paymentEndDay=" + paymentEndDay
				+ ", paymentYear=" + paymentYear + ", paymentMonth=" + paymentMonth + ", paymentDay=" + paymentDay
				+ ", paymentYearMonth=" + paymentYearMonth + ", procedureName=" + procedureName + "]";
	}
	
	
	
	
	
	
	
	
}
