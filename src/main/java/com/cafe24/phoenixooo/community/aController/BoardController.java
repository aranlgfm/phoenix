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
		
		//게시판 글쓰기 화면으로 이동
		@RequestMapping(value = "/phoenix/com/form/insertingBasicArticle", method = RequestMethod.GET)
		public String moveToInsertingBasicArticle() {
		return "/phoenix/com/form/insertingBasicArticle";
		}
		
		//글 내용으로
		@RequestMapping(value = "/phoenix/com/form/basicArticle", method = RequestMethod.GET)
		public String selectBasicArticle() {
		return "/phoenix/com/form/basicArticle";
		}

		//글 수정 화면으로
		@RequestMapping(value = "/phoenix/com/form/modifyingBasicArticle", method = RequestMethod.GET)
		public String moveToModifyingBasicArticle() {
		return "/phoenix/com/form/modifyingBasicArticle";
		}		
		
		//글 삭제 화면으로
		@RequestMapping(value = "/phoenix/com/form/deletingBasicArticle", method = RequestMethod.GET)
		public String moveToDeletingBasicArticle() {
		return "/phoenix/com/form/deletingBasicArticle";
		}
}
