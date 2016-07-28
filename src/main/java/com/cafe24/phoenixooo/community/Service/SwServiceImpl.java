package com.cafe24.phoenixooo.community.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.Model.Order;
import com.cafe24.phoenixooo.community.Model.Payment;
import com.cafe24.phoenixooo.community.Model.Sw;
import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Repository.SwDao;

@Service
public class SwServiceImpl implements SwService{
	
	@Autowired
	private SwDao swDao;
	
	//sw 상품 리스트 가져오기
	@Override
	public List<Sw> getSwList() {
		return swDao.selectSwList();
	}
	
	//sw 주문결제내역 가져오기
	@Override
	public Map<String,Object> getPaymentList(UserCustomer userCustomer) {
		Map map=new HashMap();
		map.put("userCode", userCustomer.getUserCode());
		List<Order> orderList=swDao.selectOrderList(map);
		
		Set<String> orderCodeSetOfOrderTable=new HashSet();
		for(Order order:orderList)
		{
			orderCodeSetOfOrderTable.add(order.getSwOrderCode());
		}
		
		Set<String> orderCodeSetOfPaymentTable=new HashSet();
		/*for(Payment payment:paymentList)
		{
			orderCodeSetOfPaymentTable.add(payment.getSwCode());
		}
		
		orderCodeSetOfOrderTable.*/
		
		
		List<Payment> paymentList=swDao.selectPaymentList(map);
		Map map2=new HashMap();
		map2.put("orderList", orderList);
		map2.put("paymentList", paymentList);
		return map2;
	}
}
