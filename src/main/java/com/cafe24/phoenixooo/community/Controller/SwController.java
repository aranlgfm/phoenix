package com.cafe24.phoenixooo.community.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.community.Model.Sw;
import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Service.SwService;

@Controller
public class SwController 
{
	@Autowired
	private SwService swService;
	
	// sw 상품 리스트로
	@RequestMapping(value = "/phoenix/com/form/swList", method = RequestMethod.GET)
	public String selectSwList(Sw sw,Model model) {
	List<Sw> swList=swService.getSwList();
	model.addAttribute("swList", swList);
	return "/phoenix/com/swList";
	}
		
	//주문결제리스트 화면으로 //
	@RequestMapping(value = "/phoenix/com/form/paymentList", method = RequestMethod.GET)
	public String moveToPaymentList(UserCustomer userCustomer,Model model) {
		Map<String,Object> map=swService.getPaymentList(userCustomer);
		model.addAttribute("orderAndPaymentMap", map);
	return "/phoenix/com/paymentList";
	}
	
	//sw 상품 결제 화면으로
	@RequestMapping(value = "/phoenix/com/form/swPayment", method = RequestMethod.POST)
	public String moveToSwPayment() {
	return "/phoenix/com/swPayment";
	}
	
	//환불신청화면으로 //
	@RequestMapping(value = "/phoenix/com/form/requestingRepayment", method = RequestMethod.GET)
	public String moveToRequestingRepayment() {
	return "/phoenix/com/requestingRepayment";
	}
	
	//환불(신청)내역 화면 //
	@RequestMapping(value = "/phoenix/com/form/repaymentList", method = RequestMethod.GET)
	public String selectRepaymentList() {
	return "/phoenix/com/repaymentList";
	}
}
