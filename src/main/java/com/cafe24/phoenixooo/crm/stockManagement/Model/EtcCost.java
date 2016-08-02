package com.cafe24.phoenixooo.crm.stockManagement.Model;

public class EtcCost {

	private String EtcCostCode;
	private String ShopCode;
	private String EtcCostNumber;
	private String EtcCostTypeName;
	private String EtcCostStatus;
	
	public String getEtcCostCode() {
		return EtcCostCode;
	}
	public void setEtcCostCode(String etcCostCode) {
		EtcCostCode = etcCostCode;
	}
	public String getShopCode() {
		return ShopCode;
	}
	public void setShopCode(String shopCode) {
		ShopCode = shopCode;
	}
	public String getEtcCostNumber() {
		return EtcCostNumber;
	}
	public void setEtcCostNumber(String etcCostNumber) {
		EtcCostNumber = etcCostNumber;
	}
	public String getEtcCostTypeName() {
		return EtcCostTypeName;
	}
	public void setEtcCostTypeName(String etcCostTypeName) {
		EtcCostTypeName = etcCostTypeName;
	}
	public String getEtcCostStatus() {
		return EtcCostStatus;
	}
	public void setEtcCostStatus(String etcCostStatus) {
		EtcCostStatus = etcCostStatus;
	}
	
	@Override
	public String toString() {
		return "EtcCost [EtcCostCode=" + EtcCostCode + ", ShopCode=" + ShopCode + ", EtcCostNumber=" + EtcCostNumber
				+ ", EtcCostTypeName=" + EtcCostTypeName + ", EtcCostStatus=" + EtcCostStatus + "]";
	}
	
}
