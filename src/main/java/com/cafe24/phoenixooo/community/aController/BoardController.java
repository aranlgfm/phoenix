package com.cafe24.phoenixooo.community.aController;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class BoardController 
{
		//자유게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/freeBoard", method = RequestMethod.GET)
		public String moveToBoard() {
		return "/phoenix/com/form/freeBoard";
		}
		
		//디자이너 게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/designerBoard", method = RequestMethod.GET)
		public String moveToDesignerBoard() {
		return "/phoenix/com/form/designerBoard";
		}
		
		//상담게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/counselBoard", method = RequestMethod.GET)
		public String moveToCounselBoard() {
		return "/phoenix/com/form/counselBoard";
		}
		
		//공지사항 게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/noticeBoard", method = RequestMethod.GET)
		public String moveToNoticeBoard() {
		return "/phoenix/com/form/noticeBoard";
		}
		
		// �����̳ʰԽ����� �Ϻ� �� ����
		@RequestMapping(value = "/com/form/designerBoardContent", method = RequestMethod.GET)
		public String selectDesignerBoardContent() {
		return "/com/designerBoardContent";
		}
}
