package com.cafe24.phoenixooo.crm.businessManagement.Model;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.crm.employeeManagement.Model.Employee;

/**
 * 이번에는 다른방식으로 해봐야지~~
 * @author 201-04
 *
 */
public class ProcedurePayment {

	private String paymentCode;
	private int paymentTotalPrice; //최종가격
	private String paymentDate; // 시술일
	private String paymentMemo; // 시술메모
	private String paymentTypeCode; //결제방법
	
	private ProcedureItemDesign itemDesign;
		/*
		 * 샾코드
		 * 샾이름
		 * 시술디자인명
		 * 
		 */
	private Employee employee;
		/*
		 * 담당자이름 
		 */
	private UserCustomer user;
		/*
		 * 유저이름
		 * 
		 */
	
	ProcedurePayment(){
		this.itemDesign = new ProcedureItemDesign();
		this.employee = new Employee();
		this.user = new UserCustomer();
	}
	
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
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
	public String getPaymentTypeCode() {
		return paymentTypeCode;
	}
	public void setPaymentTypeCode(String paymentTypeCode) {
		this.paymentTypeCode = paymentTypeCode;
	}
	public ProcedureItemDesign getItemDesign() {
		return itemDesign;
	}
	public void setItemDesign(ProcedureItemDesign itemDesign) {
		this.itemDesign = itemDesign;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public UserCustomer getUser() {
		return user;
	}
	public void setUser(UserCustomer user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "ProcedurePayment [paymentCode=" + paymentCode + ", paymentTotalPrice=" + paymentTotalPrice
				+ ", paymentDate=" + paymentDate + ", paymentMemo=" + paymentMemo + ", paymentTypeCode="
				+ paymentTypeCode + ", itemDesign=" + itemDesign + ", employee=" + employee + ", user=" + user + "]";
	}

	
	
	
}
