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
import com.cafe24.phoenixooo.community.Model.Comment;
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
				,Article article) {
			log.debug("---------------------Method name : selectBasicArticle");
			
			//System.out.println(articleCode+"<========아티클 코드");
			Article article2=boardService.getArticle(article);
			//System.out.println(article.getArticleCode()+"<--------아티클 코드");
			model.addAttribute("article", article2);		
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
		
		

		
		//글 수정 화면으로
		@RequestMapping(value = "/phoenix/com/form/modifyingBasicArticle", method = RequestMethod.GET)
		public String moveToModifyingBasicArticle(Model model
				,Article article) {
			Article article2=boardService.getArticle(article);
			model.addAttribute("article", article2);	
		return "/phoenix/com/modifyingBasicArticle";
		}		
		
		// 글 수정 처리
		@RequestMapping(value = "/phoenix/com/form/modifyBasicArticle", method = RequestMethod.POST)
		public String modifyBasicArticle(Model model, Article article) {
			System.out.println(article.getArticleCode()+"<--------------------article code");
			System.out.println(article.getArticleName()+"<--------------------getArticleName");
			System.out.println(article.getArticleContent()+"<--------------------getArticleContent");
			Article article2=boardService.modifyArticle(article);
			model.addAttribute("article", article2);	
		return "/phoenix/com/article";
		}		
		
		
		//글 삭제 처리
		@RequestMapping(value = "/phoenix/com/process/deleteBasicArticle", method = RequestMethod.GET)
		public String deleteBasicArticle(Article article, Model model) {
			System.out.println(article.getBoardGroupCode()+"<-----머냐");
			boardService.deleteArticle(article);
			model.addAttribute("boardGroupCode", article.getBoardGroupCode());
			return "redirect:/phoenix/com/form/basicBoard";
		}
		
		//댓글 등록
		@RequestMapping(value = "/phoenix/com/process/insertComment", method = RequestMethod.POST)
		public String insertComment(Comment comment, Model model) {
			boardService.insertComment(comment);
			model.addAttribute("articleCode", comment.getArticleCode());
			return "redirect:/phoenix/com/form/basicArticle";
		}
		
		//댓글 삭제 처리
		@RequestMapping(value = "/phoenix/com/process/deleteComment", method = RequestMethod.GET)
		public String deleteComment(Comment comment, Model model) {
			String articleCode=boardService.deleteComment(comment);
			model.addAttribute("articleCode", articleCode);
			return "redirect:/phoenix/com/form/basicArticle";
		}
		
}






























