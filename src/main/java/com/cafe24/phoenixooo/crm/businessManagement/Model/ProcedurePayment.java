package com.cafe24.phoenixooo.crm.businessManagement.Model;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;

/**
 * 이번에는 다른방식으로 해봐야지는 개뿔
 * 포기.
 * @author 201-04
 *
 */
public class ProcedurePayment extends CrmCustomer{

	private String paymentCode;
	private String itemDesignCode;//
	private String itemDesignName;
	private String paymentTypeCode; //결제방법
	private int paymentTotalPrice; //최종가격
	private String paymentDate; // 시술일
	private String paymentMemo; // 시술메모
	
	
	private String employeeCode;//
	
	

	//추가한것;;
	private int totalPayment; // 카운터를.. 담아야한다..;;

	public String getPaymentCode() {
		return paymentCode;
	}

	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}

	public String getItemDesignCode() {
		return itemDesignCode;
	}

	public void setItemDesignCode(String itemDesignCode) {
		this.itemDesignCode = itemDesignCode;
	}

	public String getItemDesignName() {
		return itemDesignName;
	}

	public void setItemDesignName(String itemDesignName) {
		this.itemDesignName = itemDesignName;
	}

	public String getPaymentTypeCode() {
		return paymentTypeCode;
	}

	public void setPaymentTypeCode(String paymentTypeCode) {
		this.paymentTypeCode = paymentTypeCode;
	}

	public int getPaymentTotalPrice() {
		return paymentTotalPrice;
	}

	public void setPaymentTotalPrice(int paymentTotalPrice) {
		this.paymentTotalPrice = paymentTotalPrice;
	}

	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getPaymentMemo() {
		return paymentMemo;
	}

	public void setPaymentMemo(String paymentMemo) {
		this.paymentMemo = paymentMemo;
	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}
	
	public String getEmployeeCode() {
		return employeeCode;
	}

	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}
	
	@Override
	public String toString() {
		return "ProcedurePayment [paymentCode=" + paymentCode + ", itemDesignCode=" + itemDesignCode
				+ ", itemDesignName=" + itemDesignName + ", paymentTypeCode=" + paymentTypeCode + ", paymentTotalPrice="
				+ paymentTotalPrice + ", paymentDate=" + paymentDate + ", paymentMemo=" + paymentMemo
				+ ", totalPayment=" + totalPayment + "]";
	}

	
	
	
}
