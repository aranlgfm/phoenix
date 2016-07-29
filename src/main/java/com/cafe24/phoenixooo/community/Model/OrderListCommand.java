package com.cafe24.phoenixooo.community.Model;

public class OrderListCommand {
	private String swOrderCode;
	private String orderDate;
	private String swName;
	private int swWon;
	private String orderStatus;
	private String requestingRepayment;
	
	
	public String getSwOrderCode() {
		return swOrderCode;
	}
	public void setSwOrderCode(String swOrderCode) {
		this.swOrderCode = swOrderCode;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getSwName() {
		return swName;
	}
	public void setSwName(String swName) {
		this.swName = swName;
	}
	public int getSwWon() {
		return swWon;
	}
	public void setSwWon(int swWon) {
		this.swWon = swWon;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getRequestingRepayment() {
		return requestingRepayment;
	}
	public void setRequestingRepayment(String requestingRepayment) {
		this.requestingRepayment = requestingRepayment;
	}
	
	
	@Override
	public String toString() {
		return "OrderListCommand [swOrderCode=" + swOrderCode + ", orderDate=" + orderDate + ", swName=" + swName
				+ ", swWon=" + swWon + ", orderStatus=" + orderStatus + ", requestingRepayment=" + requestingRepayment
				+ "]";
	}
	
	
	
}
