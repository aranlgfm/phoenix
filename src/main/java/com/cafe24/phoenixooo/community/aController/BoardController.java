package com.cafe24.phoenixooo.community.aController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.community.bService.BoardService;
import com.cafe24.phoenixooo.community.dModel.Article;


@Controller
public class BoardController 
{
	@Autowired
	private BoardService boardService;
	
		//기본게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/basicBoard", method = RequestMethod.GET)
		public String moveToBasicBoard(Model model
				,@RequestParam("boardGroupCode") String boardGroupCode
	    		) {
			//System.out.println(boardGroupCode);
			List<Article> articleList = boardService.getArticleList(boardGroupCode);
			model.addAttribute("articleList", articleList);
	        
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
