package com.cafe24.phoenixooo.community.Service;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.community.Model.Payment;
import com.cafe24.phoenixooo.community.Model.Sw;
import com.cafe24.phoenixooo.community.Model.UserCustomer;

public interface SwService {
	//sw상품 리스트 가져오기
	List<Sw> getSwList();
	//주물결제내역 가져오기
	Map<String,Object> getPaymentList(UserCustomer userCustomer);
}
