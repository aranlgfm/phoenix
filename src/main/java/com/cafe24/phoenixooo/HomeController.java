package com.cafe24.phoenixooo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	// phoenix 메인
		@RequestMapping(value = "/phoenix", method = RequestMethod.GET)
		public String phoenix() {
		return "phoenix";
		}
		
		// CRM로그인
		@RequestMapping(value = "/crm/form/login", method = RequestMethod.GET)
		public String crmFormLogin() {
		return "/crm/login";
		}
		
		
		// CRM구매
		@RequestMapping(value = "/crm/form/productList", method = RequestMethod.GET)
		public String crmFormProductList() {
		return "/crm/productList";
		}
		
		// 회원가입
		@RequestMapping(value = "/com/form/terms", method = RequestMethod.GET)
		public String comFormTerms() {
		return "/com/terms";
		}
		
		// 커뮤니티로그인
		@RequestMapping(value = "/com/form/login", method = RequestMethod.GET)
		public String comFormLogin() {
		return "/com/login";
		}
		
		// 자유게시판
		@RequestMapping(value = "/com/form/freeBoard", method = RequestMethod.GET)
		public String comFormFreeBoard() {
		return "/com/freeBoard";
		}
		
		// 디자이너게시판
		@RequestMapping(value = "/com/form/designerBoard", method = RequestMethod.GET)
		public String comFormDesignerBoard() {
		return "/com/designerBoard";
		}
		
		// 상담게시판
		@RequestMapping(value = "/com/form/consultationBoard", method = RequestMethod.GET)
		public String comFormConsultationBoard() {
		return "/com/consultationBoard";
		}
		
		// 공지사항
		@RequestMapping(value = "/com/form/noticeBoard", method = RequestMethod.GET)
		public String comFormNoticeBoard() {
		return "/com/noticeBoard";
		}
		
		// 디자이너게시판의 일부 글 선택
		@RequestMapping(value = "/com/form/designerBoardContent", method = RequestMethod.GET)
		public String comFormDesignerBoardContent() {
		return "/com/designerBoardContent";
		}
		
		// 회원가입-일반고객
		@RequestMapping(value = "/com/form/joiningAsCustomer", method = RequestMethod.GET)
		public String comFormJoiningAsCustomer() {
		return "/com/joiningAsCustomer";
		}
		
		// 회원가입-디자이너
		@RequestMapping(value = "/com/form/joiningAsDesigner", method = RequestMethod.GET)
		public String comFormJoiningAsDesigner() {
		return "/com/joiningAsDesigner";
		}
		
		// 회원가입-원장님
		@RequestMapping(value = "/com/form/joiningAsDirector", method = RequestMethod.GET)
		public String comFormJoiningAsDirector() {
		return "/com/joiningAsDirector";
		}
		
		// 회원가입-일반고객-확인
		@RequestMapping(value = "/com/process/joiningAsCustomer", method = RequestMethod.GET)
		public String comProcessJoiningAsCustomer() {
		return "/phoenix";
		}
		
		// 로그인
		@RequestMapping(value = "/com/process/login", method = RequestMethod.GET)
		public String comProcessLogin() {
		return "/phoenix";
		}

		// 로그인화면-아이디찾기
		@RequestMapping(value = "/com/form/findingId", method = RequestMethod.GET)
		public String comFormFindingId() {
		return "/com/findingId";
		}
		
		// 로그인화면-비밀번호찾기
		@RequestMapping(value = "/com/form/findingPw", method = RequestMethod.GET)
		public String comFormFindingPw() {
		return "/com/findingPw";
		}
		
		// 아이디찾기-메일보내기
		@RequestMapping(value = "/com/process/findingId", method = RequestMethod.GET)
		public String comProcessFindingId() {
		return "/com/login";
		}
		
		// 비밀번호찾기-메일보내기
		@RequestMapping(value = "/com/process/findingPw", method = RequestMethod.GET)
		public String comProcessFindingPw() {
		return "/com/login";
		}
		
		// 마이페이지-개인정보수정
		@RequestMapping(value = "/com/form/userModification", method = RequestMethod.GET)
		public String comFormUserModification() {
		return "/com/userModification";
		}
		
		// 마이페이지-회원탈퇴
		@RequestMapping(value = "/com/form/userWithdrawal", method = RequestMethod.GET)
		public String comFormUserWithdrawal() {
		return "/com/userWithdrawal";
		}
		
		// 마이페이지-주문결제내역
		@RequestMapping(value = "/com/form/paymentList", method = RequestMethod.GET)
		public String comFormPaymentList() {
		return "/com/paymentList";
		}
		
		// 마이페이지-환불내역
		@RequestMapping(value = "/com/form/refundList", method = RequestMethod.GET)
		public String comFormRefundList() {
		return "/com/refundList";
		}
		
		// 개인정보수정-수정처리
		@RequestMapping(value = "/com/process/modifyUser", method = RequestMethod.GET)
		public String comProcessModifyUser() {
		return "/phoenix";
		}
		
		// 회원탈퇴-처리
		@RequestMapping(value = "/com/process/withdraw", method = RequestMethod.GET)
		public String comProcessWithdraw() {
		return "/phoenix";
		}
		
		// 주문결제내역-환불
		@RequestMapping(value = "/com/form/refund", method = RequestMethod.GET)
		public String comFormRefund() {
		return "/com/refund";
		}
		
		// 주문결제내역-주문취소
		@RequestMapping(value = "/com/form/cancelingOrder", method = RequestMethod.GET)
		public String comFormCancelingOrder() {
		return "/com/cancelingOrder";
		}
		
		// 환불신청-확인
		@RequestMapping(value = "/com/process/requestToRepayment", method = RequestMethod.GET)
		public String comProcessRequestToRepayment() {
		return "/com/refundList";
		}
	
}
