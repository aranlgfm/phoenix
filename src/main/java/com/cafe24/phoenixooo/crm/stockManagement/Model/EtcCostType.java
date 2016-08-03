package com.cafe24.phoenixooo.crm.stockManagement.Model;

public class EtcCostType {
	
	private String etcCostTypeCode;
	private String shopCode;
	private String etcCostCode;
	private String etcCostName;
	private String etcCostTypeName;
	
	public String getEtcCostTypeCode() {
		return etcCostTypeCode;
	}
	public void setEtcCostTypeCode(String etcCostTypeCode) {
		this.etcCostTypeCode = etcCostTypeCode;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getEtcCostCode() {
		return etcCostCode;
	}
	public void setEtcCostCode(String etcCostCode) {
		this.etcCostCode = etcCostCode;
	}
	public String getEtcCostName() {
		return etcCostName;
	}
	public void setEtcCostName(String etcCostName) {
		this.etcCostName = etcCostName;
	}
	public String getEtcCostTypeName() {
		return etcCostTypeName;
	}
	public void setEtcCostTypeName(String etcCostTypeName) {
		this.etcCostTypeName = etcCostTypeName;
	}
	
	@Override
	public String toString() {
		return "EtcCostType [etcCostTypeCode=" + etcCostTypeCode + ", shopCode=" + shopCode + ", etcCostCode="
				+ etcCostCode + ", etcCostName=" + etcCostName + ", etcCostTypeName=" + etcCostTypeName + "]";
	}
	
}
