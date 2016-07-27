package com.cafe24.phoenixooo.community.Controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Service.BoardService;


@Controller
public class BoardController 
{
	@Autowired
	private BoardService boardService;
	
	private Logger log=Logger.getLogger(this.getClass());
	
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
		
		//글 내용으로
		@RequestMapping(value = "/phoenix/com/form/basicArticle", method = RequestMethod.GET)
		public String selectBasicArticle(Model model
				,@RequestParam("articleCode") String articleCode) {
			log.debug("---------------------Method name : selectBasicArticle");
			
			System.out.println(articleCode+"<========아티클 코드");
			Article article=boardService.getArticle(articleCode);
			//System.out.println(article.getArticleCode()+"<--------아티클 코드");
			model.addAttribute("article", article);		
		return "/phoenix/com/article";
		}
		
		//게시판 글쓰기 화면으로 이동
		@RequestMapping(value = "/phoenix/com/form/insertingBasicArticle", method = RequestMethod.GET)
		public String moveToInsertingBasicArticle() {
		return "/phoenix/com/insertingBasicArticle";
		}
				
		//글쓰기 등록
		@RequestMapping(value = "/phoenix/com/form/insertBasicArticle", method = RequestMethod.POST)
		public String insertBasicArticle(Model model,Article article) {
			String articleCode=boardService.insertArticle(article);
			model.addAttribute("articleCode", articleCode);
		return "/phoenix/com/article";
		}
		
		
		
		//디자이너 게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/designerBoard", method = RequestMethod.GET)
		public String moveToDesignerBoard() {
		return "/phoenix/com/designerBoard";
		}
		
		//이거 다시 짜야함
		
	
		

		

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
