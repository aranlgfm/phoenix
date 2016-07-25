package com.cafe24.phoenixooo.community.aController;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class SwController 
{
	//주문결제리스트 화면으로
	@RequestMapping(value = "/phoenix/com/form/paymentList", method = RequestMethod.GET)
	public String moveToPaymentList() {
	return "/phoenix/com/form/paymentList";
	}
	
	//환불신청화면으로
	@RequestMapping(value = "/phoenix/com/form/requestingRepayment", method = RequestMethod.GET)
	public String moveToRequestingRepayment() {
	return "/phoenix/com/form/requestingRepayment";
	}
	
	//환불(신청)내역 화면
	@RequestMapping(value = "/phoenix/com/form/repaymentList", method = RequestMethod.GET)
	public String selectRepaymentList() {
	return "/phoenix/com/form/repaymentList";
	}
	
	// sw 상품 리스트로
	@RequestMapping(value = "/phoenix/com/form/swList", method = RequestMethod.GET)
	public String selectSwList() {
	return "/phoenix/com/form/swList";
	}
	
	//sw 상품 결제 화면으로
	@RequestMapping(value = "/phoenix/com/form/swPayment", method = RequestMethod.GET)
	public String moveToSwPayment() {
	return "/phoenix/com/form/swPayment";
	}
}
