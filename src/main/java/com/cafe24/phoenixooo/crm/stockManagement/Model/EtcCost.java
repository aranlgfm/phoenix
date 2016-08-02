package com.cafe24.phoenixooo.crm.stockManagement.Model;

public class EtcCost {

	private String etcCostCode;
	private String shopCode;
	private String etcCostName;
	
	public String getEtcCostCode() {
		return etcCostCode;
	}
	public void setEtcCostCode(String etcCostCode) {
		this.etcCostCode = etcCostCode;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getEtcCostName() {
		return etcCostName;
	}
	public void setEtcCostName(String etcCostName) {
		this.etcCostName = etcCostName;
	}
	
	@Override
	public String toString() {
		return "EtcCost [etcCostCode=" + etcCostCode + ", shopCode=" + shopCode + ", etcCostName=" + etcCostName
				+ "]";
	}
	
}