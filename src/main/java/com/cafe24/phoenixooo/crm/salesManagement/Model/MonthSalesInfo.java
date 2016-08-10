package com.cafe24.phoenixooo.crm.salesManagement.Model;

public class MonthSalesInfo extends DaySalesInfo {

	private String paymentStartDay;
	private String paymentEndDay;
	
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
	
	@Override
	public String toString() {
		return "MonthSalesInfo [paymentStartDay=" + paymentStartDay + ", paymentEndDay=" + paymentEndDay + "]";
	}
	
	
	
}
