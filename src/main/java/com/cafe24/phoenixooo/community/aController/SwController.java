package com.cafe24.phoenixooo.community.aController;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class SwController 
{
	// ����������-�ֹ���������
	@RequestMapping(value = "/com/form/paymentList", method = RequestMethod.GET)
	public String comFormPaymentList() {
	return "/com/paymentList";
	}
	
	// ����������-ȯ�ҳ���
	@RequestMapping(value = "/com/form/refundList", method = RequestMethod.GET)
	public String comFormRefundList() {
	return "/com/refundList";
	}
		
// �ֹ���������-ȯ��
	@RequestMapping(value = "/com/form/refund", method = RequestMethod.GET)
	public String comFormRefund() {
	return "/com/refund";
	}
	
	// �ֹ���������-�ֹ����
	@RequestMapping(value = "/com/form/cancelingOrder", method = RequestMethod.GET)
	public String comFormCancelingOrder() {
	return "/com/cancelingOrder";
	}
	
	// ȯ�ҽ�û-Ȯ��
	@RequestMapping(value = "/com/process/requestToRepayment", method = RequestMethod.GET)
	public String comProcessRequestToRepayment() {
	return "/com/refundList";
	}
	
// CRM
	@RequestMapping(value = "/crm/form/productList", method = RequestMethod.GET)
	public String crmFormProductList() {
	return "/crm/productList";
	}
}
