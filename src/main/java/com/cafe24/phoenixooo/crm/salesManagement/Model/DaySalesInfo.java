package com.cafe24.phoenixooo.crm.salesManagement.Model;

public class DaySalesInfo {

	private String itemDesignName;
	private String paymentTypeGb;
	private int totalCount;
	private int totalMoney; 
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
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(int totalMoney) {
		this.totalMoney = totalMoney;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	@Override
	public String toString() {
		return "DaySalesInfo [itemDesignName=" + itemDesignName + ", paymentTypeGb=" + paymentTypeGb + ", totalCount="
				+ totalCount + ", totalMoney=" + totalMoney + ", paymentDate=" + paymentDate + "]";
	}
	
	
}
