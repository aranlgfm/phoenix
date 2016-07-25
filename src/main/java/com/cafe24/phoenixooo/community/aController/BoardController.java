package com.cafe24.phoenixooo.community.aController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController 
{
		//기본게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/basicBoard", method = RequestMethod.GET)
		public String moveToBasicBoard() {
		return "/phoenix/com/basicBoard";
		}
		
		//디자이너 게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/designerBoard", method = RequestMethod.GET)
		public String moveToDesignerBoard() {
		return "/phoenix/com/designerBoard";
		}
		
		//이거 다시 짜야함
		
	
		//게시판 글쓰기 화면으로 이동
		@RequestMapping(value = "/phoenix/com/form/insertingBasicArticle", method = RequestMethod.GET)
		public String moveToInsertingBasicArticle() {
		return "/phoenix/com/insertingBasicArticle";
		}

		//글 내용으로
		@RequestMapping(value = "/phoenix/com/form/basicArticle", method = RequestMethod.GET)
		public String selectBasicArticle() {
		return "/phoenix/com/basicArticle";
		}

		//글 수정 화면으로
		@RequestMapping(value = "/phoenix/com/form/modifyingBasicArticle", method = RequestMethod.GET)
		public String moveToModifyingBasicArticle() {
		return "/phoenix/com/modifyingBasicArticle";
		}		
		
		//글 삭제 화면으로
		@RequestMapping(value = "/phoenix/com/form/deletingBasicArticle", method = RequestMethod.GET)
		public String moveToDeletingBasicArticle() {
		return "/phoenix/com/deletingBasicArticle";
		}
}
