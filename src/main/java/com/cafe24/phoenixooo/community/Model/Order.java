package com.cafe24.phoenixooo.community.Model;

public class Order {
	private String swOrderCode;
	private String receiveUserCode;
	private String orderUserCode;
	private String shopCode;
	private String swCode;
	private String orderDate;
	public String getSwOrderCode() {
		return swOrderCode;
	}
	public void setSwOrderCode(String swOrderCode) {
		this.swOrderCode = swOrderCode;
	}
	public String getReceiveUserCode() {
		return receiveUserCode;
	}
	public void setReceiveUserCode(String receiveUserCode) {
		this.receiveUserCode = receiveUserCode;
	}
	public String getOrderUserCode() {
		return orderUserCode;
	}
	public void setOrderUserCode(String orderUserCode) {
		this.orderUserCode = orderUserCode;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getSwCode() {
		return swCode;
	}
	public void setSwCode(String swCode) {
		this.swCode = swCode;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	
	
	@Override
	public String toString() {
		return "Order [swOrderCode=" + swOrderCode + ", receiveUserCode=" + receiveUserCode + ", orderUserCode="
				+ orderUserCode + ", shopCode=" + shopCode + ", swCode=" + swCode + ", orderDate=" + orderDate + "]";
	}
	
	
}
