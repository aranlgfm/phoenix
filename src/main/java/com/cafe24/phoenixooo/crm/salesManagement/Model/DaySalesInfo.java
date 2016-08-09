package com.cafe24.phoenixooo.crm.salesManagement.Model;

public class DaySalesInfo {

	private String itemDesignName;
	private String paymentTypeGb;
	private String totalCash;
	private int countCash;
	private String totalCard;
	private int countCard;
	private String paymentDate;
	public String getItemDesignName() {
		return itemDesignName;
	}
	public void setItemDesignName(String itemDesignName) {
		this.itemDesignName = itemDesignName;
	}
	public String getPaymentTypeGb() {
		return paymentTypeGb;
	}
	public void setPaymentTypeGb(String paymentTypeGb) {
		this.paymentTypeGb = paymentTypeGb;
	}
	public String getTotalCash() {
		return totalCash;
	}
	public void setTotalCash(String totalCash) {
		this.totalCash = totalCash;
	}
	public int getCountCash() {
		return countCash;
	}
	public void setCountCash(int countCash) {
		this.countCash = countCash;
	}
	public String getTotalCard() {
		return totalCard;
	}
	public void setTotalCard(String totalCard) {
		this.totalCard = totalCard;
	}
	public int getCountCard() {
		return countCard;
	}
	public void setCountCard(int countCard) {
		this.countCard = countCard;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	@Override
	public String toString() {
		return "DaySalesInfo [itemDesignName=" + itemDesignName + ", paymentTypeGb=" + paymentTypeGb + ", totalCash="
				+ totalCash + ", countCash=" + countCash + ", totalCard=" + totalCard + ", countCard=" + countCard
				+ ", paymentDate=" + paymentDate + "]";
	}
	
}
