package com.cafe24.phoenixooo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeControllerBok {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeControllerBok.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	// 주석 꼭 달아주세요. 엑셀에 있는 설명부분 갖다 붙이면 됨
	
	
		
		// CRM
		@RequestMapping(value = "/crm/form/login", method = RequestMethod.GET)
		public String crmFormLogin() {
		return "/crm/login";
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
		
		
	
}
