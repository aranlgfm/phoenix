package com.cafe24.phoenixooo.community.Service;

import java.util.List;

import com.cafe24.phoenixooo.community.Model.OrderListCommand;
import com.cafe24.phoenixooo.community.Model.Sw;
import com.cafe24.phoenixooo.community.Model.UserCustomer;

public interface SwService {
	//sw상품 리스트 가져오기
	List<Sw> getSwList();
	//주물결제내역 가져오기
	List<OrderListCommand> getPaymentList(UserCustomer userCustomer);
	
	//환불 신청 하기
	int insertRequestingRepayment(OrderListCommand orderListCommand);
}
