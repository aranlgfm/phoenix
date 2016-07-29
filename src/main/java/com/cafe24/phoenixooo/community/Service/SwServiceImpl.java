package com.cafe24.phoenixooo.community.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.Model.Order;
import com.cafe24.phoenixooo.community.Model.OrderListCommand;
import com.cafe24.phoenixooo.community.Model.Payment;
import com.cafe24.phoenixooo.community.Model.RepaymentRequestCommand;
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
	/*
	sw 주문결제내역 가져오기.
	COM_ORDER_TB,COM_SW_TB,COM_PAYMENT_TB 3개의 테이블을 select해서 
	필요한 값들만 OrderListCommand 라는 VO 객체에 담는다.
	그리고 OrderListCommand 의 List를 return값으로 넘긴다.
	*/
	@Override
	public List<OrderListCommand> getPaymentList(UserCustomer userCustomer) {
		//map을 매개변수로 넘겨서 select를 한다
		Map map=new HashMap();
		map.put("userCode", userCustomer.getUserCode());
		
		//각각의 테이블에서 select한 것들을 List 타입으로 받는다.
		List<Order> orderList=swDao.selectOrderList(map);
		List<Sw> swList=swDao.selectSwList();
		List<Payment> paymentList=swDao.selectPaymentList(map);
		
		//COM_ORDER_TB에서 특정 사용자의 주문코드의 리스트를 set에 담는다
		Set<String> orderCodeSetOfOrderTable=new HashSet();
		for(Order order:orderList)
		{
			orderCodeSetOfOrderTable.add(order.getSwOrderCode());
		}
		
		//COM_PAYMENT_TB에서 특정 사용자의 주문코드의 리스트를 set에 담는다
		Set<String> orderCodeSetOfPaymentTable=new HashSet();
		for(Payment payment:paymentList)
		{
			orderCodeSetOfPaymentTable.add(payment.getOrderCode());
		}

		//System.out.println(orderCodeSetOfPaymentTable.size()+"<=============결제리스트 가져온거 사이즈");
		
		/*잘 받아졌는지 테스트 해봤는데 받은 값들의 코드가 서로 다른 것이 문제였다...
 		애초에 db에 들어가있는 값자체가 틀린거였음. 프로그램 로직이 틀린게 아니라;;*/

		//뒤에서 for, if문에서 쓰기 위해서 만들고 정렬했음.
		List<String> orderLinkdedList=new LinkedList<String>(orderCodeSetOfOrderTable);
		Collections.sort(orderLinkdedList);
		/*
		Iterator<String> it=orderLinkdedList.iterator();
		while(it.hasNext())
		{
			System.out.print(it.next()+" ");
		}*/
		
		//뒤에서 for, if문에서 쓰기 위해서 만들고 정렬했음.
		List<String> paymentLinkdeList=new LinkedList<String>(orderCodeSetOfPaymentTable);
		Collections.sort(paymentLinkdeList);
	/*	Iterator<String> it2=paymentLinkdeList.iterator();
		while(it2.hasNext())
		{
			System.out.print(it2.next()+" ");
		}*/
		
		
		//주문은 했으나 결제는 안한 것의 주문코드를 알아내기 위해서 set의 차집합을 구한다음 LinkededList에 담음.
		orderCodeSetOfOrderTable.removeAll(orderCodeSetOfPaymentTable);
		List<String> removedList=new LinkedList<String>(orderCodeSetOfOrderTable);
		Collections.sort(removedList);
		//System.out.println(removedList.size()+"<============removedList의 사이즈");
	/*	Iterator<String> it3=removedList.iterator();
		while(it3.hasNext())
		{
			System.out.print(it3.next()+" ");
		}*/
		
		
		//위에서 가공한 값들을 각 조건에 맞게 OrderListCommand에 담음.
		ArrayList<OrderListCommand> orderListCommandList=new ArrayList();
		for(int i=0;i<orderList.size();i++)
		{
			OrderListCommand orderListCommand=new OrderListCommand();
			orderListCommandList.add(i, orderListCommand);
			orderListCommandList.get(i).setSwOrderCode(orderList.get(i).getSwOrderCode());
			orderListCommandList.get(i).setOrderDate(orderList.get(i).getOrderDate());
			orderListCommandList.get(i).setSwName(swList.get(i).getSwName());
			orderListCommandList.get(i).setSwWon(swList.get(i).getSwWon());
			if((orderLinkdedList.size()-removedList.size())==0)
			{
				orderListCommandList.get(i).setOrderStatus("결제완료");
				orderListCommandList.get(i).setRequestingRepayment("환불신청");
			}
			else
			{
				if(i<(orderList.size()-paymentList.size()+1))
				{
					orderListCommandList.get(i).setOrderStatus("결제완료");
					orderListCommandList.get(i).setRequestingRepayment("환불신청");
				}
				else
				{
					orderListCommandList.get(i).setOrderStatus("주문완료");
					orderListCommandList.get(i).setRequestingRepayment("주문취소");
				}
			}
		}

		return orderListCommandList;
	}

	
	//환불 신청 하기 (paymentCode, userCode, shopCode, swCode)
	@Override
	public int insertRequestingRepayment(OrderListCommand orderListCommand) {
		RepaymentRequestCommand repaymentRequestCommand = new RepaymentRequestCommand();
		
		Payment payment = new Payment();
		payment.setOrderCode(orderListCommand.getSwOrderCode()); 
		
		Payment partOfRepaymentRequest = swDao.selectPartOfRePaymentRequest(payment);
		
		//paymentCode값 1개 셋팅
		repaymentRequestCommand.setPaymentCode(partOfRepaymentRequest.getPaymentCode());
		//userCode값 1개 셋팅
		repaymentRequestCommand.setUserCode(partOfRepaymentRequest.getUserCode());
		//shopCode값 1개 셋팅
		repaymentRequestCommand.setShopCode(partOfRepaymentRequest.getShopCode());
		//swCode값 1개 셋팅
		repaymentRequestCommand.setSwCode(partOfRepaymentRequest.getSwCode());
		
		// 서브가져온 값 매개변수로 넣고 환불신청 쿼리로 넘어가기
		return swDao.insertRequestingRepayment(repaymentRequestCommand); 
	}


}
