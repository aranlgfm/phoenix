package com.cafe24.phoenixooo.crm.salesManagement.Model;

public class EmployeeSales extends EmployeeListForSales {

	private String paymentCode;
	private String userCode;
	private String pointCode;
	private String itemdesignCode;
	private String userName;
	private String itemdesignName;
	private String paymentType;
	private int paymentTotalWon;
	private String paymentDate;
	private String paymentMonth;
	private String paymentYear;
	private String totalCash;
	private int countCash;
	private String totalCard;
	private int countCard;
	
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getPointCode() {
		return pointCode;
	}
	public void setPointCode(String pointCode) {
		this.pointCode = pointCode;
	}
	public String getItemdesignCode() {
		return itemdesignCode;
	}
	public void setItemdesignCode(String itemdesignCode) {
		this.itemdesignCode = itemdesignCode;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getItemdesignName() {
		return itemdesignName;
	}
	public void setItemdesignName(String itemdesignName) {
		this.itemdesignName = itemdesignName;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public int getPaymentTotalWon() {
		return paymentTotalWon;
	}
	public void setPaymentTotalWon(int paymentTotalWon) {
		this.paymentTotalWon = paymentTotalWon;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getPaymentMonth() {
		return paymentMonth;
	}
	public void setPaymentMonth(String paymentMonth) {
		this.paymentMonth = paymentMonth+"%";
	}
	public String getPaymentYear() {
		return paymentYear;
	}
	public void setPaymentYear(String paymentYear) {
		this.paymentYear = paymentYear+"%";
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
	
	@Override
	public String toString() {
		return "EmployeeSales [paymentCode=" + paymentCode + ", userCode=" + userCode + ", pointCode=" + pointCode
				+ ", itemdesignCode=" + itemdesignCode + ", userName=" + userName + ", itemdesignName=" + itemdesignName
				+ ", paymentType=" + paymentType + ", paymentTotalWon=" + paymentTotalWon + ", paymentDate="
				+ paymentDate + ", paymentMonth=" + paymentMonth + ", paymentYear=" + paymentYear + ", totalCash="
				+ totalCash + ", countCash=" + countCash + ", totalCard=" + totalCard + ", countCard=" + countCard
				+ "]";
	}
	
}
