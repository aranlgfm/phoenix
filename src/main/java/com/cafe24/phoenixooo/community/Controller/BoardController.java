package com.cafe24.phoenixooo.community.Controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	
		//phoenix-> 자유게시판 클릭 = 기본게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/basicBoard", method = RequestMethod.GET)
		public String moveToBasicBoard(@RequestParam("boardGroupCode") String boardGroupCode, Model model) {
			//System.out.println(boardGroupCode);
			
			List<Article> articleList = boardService.getArticleList(boardGroupCode);
			model.addAttribute("articleList", articleList);
	        
		return "/phoenix/com/basicBoard";
		}
		
		
		// 해당 게시글중 1개 클릭하면 basicArticle로 이동
		@RequestMapping(value = "/phoenix/com/form/basicArticle", method = RequestMethod.GET)
		public String selectBasicArticle(Article article, Model model) {
			log.debug("---------------------Method name : selectBasicArticle");
			
			System.out.println(article.getArticleCode()+"<========아티클 코드");
			//articleCode객체 속의 코드를 가져와서 String타입의 articleCode변수에 집어넣엇음
			String articleCode = article.getArticleCode();
			
			System.out.println("getArticleCode메서드 실행");
			Map<String, Object> map =  boardService.getArticle(articleCode);
		//		System.out.println("map : "+ map);
			
			model.addAttribute("map", map);
			System.out.println("여기가 글 한개 뿌리기 리턴되는 마지막이다.");
			System.out.println(map);
			
		return "/phoenix/com/article";
		}
		
		// 글쓰기 버튼클릭 시 =  글쓰기
		@RequestMapping(value = "/phoenix/com/form/insertingBasicArticle", method = RequestMethod.GET)
		public String moveToInsertingBasicArticle(String boardGroupCode, Model model) {
			//글쓰기 누르면 articleCode주기
			model.addAttribute("boardGroupCode", boardGroupCode);
			return "/phoenix/com/insertingBasicArticle";
		}
				
		// article에서 글쓰고 난 후 보여지는 게시글 1개의 화면
		@RequestMapping(value = "/phoenix/com/form/insertBasicArticle", method = RequestMethod.POST)
		public String insertBasicArticle(Article article, HttpServletRequest request, Model model) {
			System.out.println("insertBasicArticle 글쓰기 실행됨!");
			//request 같이 보냄
			boardService.insertArticle(article, request);
			model.addAttribute("articleCode", article.getArticleCode());
 	 		
 	 		return "redirect:/phoenix/com/article";
		}
		
		
		
		//디자이너 게시판으로 이동
		@RequestMapping(value = "/phoenix/com/form/designerBoard", method = RequestMethod.GET)
		public String moveToDesignerBoard() {
		return "/phoenix/com/designerBoard";
		}
		
		

		
		//글 수정 화면으로
		@RequestMapping(value = "/phoenix/com/form/modifyingBasicArticle", method = RequestMethod.GET)
		public String moveToModifyingBasicArticle(String articleCode, Model model) {
			Map<String, Object> map = boardService.getArticle(articleCode); 
			
			model.addAttribute("article", map);	
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






























