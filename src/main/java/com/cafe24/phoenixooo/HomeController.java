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
	
	// phoenix
		@RequestMapping(value = "/phoenix", method = RequestMethod.GET)
		public String phoenix() {
		return "phoenix";
		}
		
		// CRM
		@RequestMapping(value = "/crm/form/login", method = RequestMethod.GET)
		public String crmFormLogin() {
		return "/crm/login";
		}
		
		
		// CRM
		@RequestMapping(value = "/crm/form/productList", method = RequestMethod.GET)
		public String crmFormProductList() {
		return "/crm/productList";
		}
		
		// ȸ������
		@RequestMapping(value = "/com/form/terms", method = RequestMethod.GET)
		public String comFormTerms() {
		return "/com/terms";
		}
		
		// Ŀ�´�Ƽ�α���
		@RequestMapping(value = "/com/form/login", method = RequestMethod.GET)
		public String comFormLogin() {
		return "/com/login";
		}
		
		// �����Խ���
		@RequestMapping(value = "/com/form/freeBoard", method = RequestMethod.GET)
		public String comFormFreeBoard() {
		return "/com/freeBoard";
		}
		
		// �����̳ʰԽ���
		@RequestMapping(value = "/com/form/designerBoard", method = RequestMethod.GET)
		public String comFormDesignerBoard() {
		return "/com/designerBoard";
		}
		
		// ���Խ���
		@RequestMapping(value = "/com/form/consultationBoard", method = RequestMethod.GET)
		public String comFormConsultationBoard() {
		return "/com/consultationBoard";
		}
		
		// ��������
		@RequestMapping(value = "/com/form/noticeBoard", method = RequestMethod.GET)
		public String comFormNoticeBoard() {
		return "/com/noticeBoard";
		}
		
		// �����̳ʰԽ����� �Ϻ� �� ����
		@RequestMapping(value = "/com/form/designerBoardContent", method = RequestMethod.GET)
		public String comFormDesignerBoardContent() {
		return "/com/designerBoardContent";
		}
		
		// ȸ������-�Ϲݰ�
		@RequestMapping(value = "/com/form/joiningAsCustomer", method = RequestMethod.GET)
		public String comFormJoiningAsCustomer() {
		return "/com/joiningAsCustomer";
		}
		
		// ȸ������-�����̳�
		@RequestMapping(value = "/com/form/joiningAsDesigner", method = RequestMethod.GET)
		public String comFormJoiningAsDesigner() {
		return "/com/joiningAsDesigner";
		}
		
		// ȸ������-�����
		@RequestMapping(value = "/com/form/joiningAsDirector", method = RequestMethod.GET)
		public String comFormJoiningAsDirector() {
		return "/com/joiningAsDirector";
		}
		
		// ȸ������-�Ϲݰ�-Ȯ��
		@RequestMapping(value = "/com/process/joiningAsCustomer", method = RequestMethod.GET)
		public String comProcessJoiningAsCustomer() {
		return "/phoenix";
		}
		
		// �α���
		@RequestMapping(value = "/com/process/login", method = RequestMethod.GET)
		public String comProcessLogin() {
		return "/phoenix";
		}

		// �α���ȭ��-���̵�ã��
		@RequestMapping(value = "/com/form/findingId", method = RequestMethod.GET)
		public String comFormFindingId() {
		return "/com/findingId";
		}
		
		// �α���ȭ��-��й�ȣã��
		@RequestMapping(value = "/com/form/findingPw", method = RequestMethod.GET)
		public String comFormFindingPw() {
		return "/com/findingPw";
		}
		
		// ���̵�ã��-���Ϻ�����
		@RequestMapping(value = "/com/process/findingId", method = RequestMethod.GET)
		public String comProcessFindingId() {
		return "/com/login";
		}
		
		// ��й�ȣã��-���Ϻ�����
		@RequestMapping(value = "/com/process/findingPw", method = RequestMethod.GET)
		public String comProcessFindingPw() {
		return "/com/login";
		}
		
		// ����������-������������
		@RequestMapping(value = "/com/form/userModification", method = RequestMethod.GET)
		public String comFormUserModification() {
		return "/com/userModification";
		}
		
		// ����������-ȸ��Ż��
		@RequestMapping(value = "/com/form/userWithdrawal", method = RequestMethod.GET)
		public String comFormUserWithdrawal() {
		return "/com/userWithdrawal";
		}
		
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
		
		// ������������-����ó��
		@RequestMapping(value = "/com/process/modifyUser", method = RequestMethod.GET)
		public String comProcessModifyUser() {
		return "/phoenix";
		}
		
		// ȸ��Ż��-ó��
		@RequestMapping(value = "/com/process/withdraw", method = RequestMethod.GET)
		public String comProcessWithdraw() {
		return "/phoenix";
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
	
}
