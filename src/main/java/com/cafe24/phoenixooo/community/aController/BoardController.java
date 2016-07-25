package com.cafe24.phoenixooo.community.aController;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class BoardController 
{
	// �����Խ���
		@RequestMapping(value = "/phoenix/com/form/freeBoard", method = RequestMethod.GET)
		public String comFormFreeBoard() {
		return "/com/form/freeBoard";
		}
		
		// �����̳ʰԽ���
		@RequestMapping(value = "/phoenix/com/form/designerBoard", method = RequestMethod.GET)
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
}
