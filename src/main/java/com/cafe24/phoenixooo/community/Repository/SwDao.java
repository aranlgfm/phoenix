package com.cafe24.phoenixooo.community.Repository;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.community.Model.Order;
import com.cafe24.phoenixooo.community.Model.Payment;
import com.cafe24.phoenixooo.community.Model.Sw;
import com.cafe24.phoenixooo.community.Model.Test;

public interface SwDao {
	public List<Test> selectSw();
	
	//sw 리스트 가져오기
	List<Sw> selectSwList();
	//주문내역 가져오기
	List<Order> selectOrderList(Map map);
	//결제내역 가져오기
	List<Payment> selectPaymentList(Map map);
}
