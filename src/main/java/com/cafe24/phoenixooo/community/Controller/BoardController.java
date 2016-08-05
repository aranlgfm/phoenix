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
	
		///phoenix-> 자유게시판 클릭 시 자유게시판 이동
		@RequestMapping(value = "/phoenix/com/form/basicBoard", method = RequestMethod.GET)
		public String moveToBasicBoard(@RequestParam("boardGroupCode") String boardGroupCode, Model model) {
			//System.out.println(boardGroupCode);
			
			List<Article> articleList = boardService.getArticleList(boardGroupCode);
			model.addAttribute("articleList", articleList);
	        
		return "/phoenix/com/basicBoard";
		}
		
		
		// 게시글 리스트중 게시글 1개 클릭 시 basicArticle로 이동
		@RequestMapping(value = "/phoenix/com/form/basicArticle", method = RequestMethod.GET)
		public String selectBasicArticle(Article article, Model model) {
			log.debug("---------------------Method name : selectBasicArticle");
			
			System.out.println(article.getArticleCode()+"<========아티클 코드");
			//articleCode객체 속의 코드를 가져와서 String타입의 articleCode변수에 집어넣엇음
			String articleCode = article.getArticleCode();
			
			System.out.println("getArticle메서드 실행");
			Map<String, Object> map =  boardService.getArticle(articleCode);
		//		System.out.println("map : "+ map);
			
			model.addAttribute("map", map);
			System.out.println("여기가 글 한개 뿌리기 리턴되는 마지막이다.");
			System.out.println(map);
			
		return "/phoenix/com/article";
		}
		
		
		
		// basicBoard에서 글쓰기 버튼클릭 시
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
			String articleCode = boardService.insertArticle(article, request);
			System.out.println(articleCode+"<--이거 나오면 됨");
			model.addAttribute("articleCode", articleCode);
 	 		
 	 		return "redirect:/phoenix/com/form/basicArticle";
		}
		
		
		
		
		
		

		
		//글 수정 화면으로
		@RequestMapping(value = "/phoenix/com/form/modifyingBasicArticle", method = RequestMethod.GET)
		public String moveToModifyingBasicArticle(String articleCode, Model model) {
			System.out.println("--------------글 수정버튼클릭으로 인한 moveToModifyingBasicArticle메서드 실행---------");
			System.out.println("basicBoard에서 받아온 게시글 코드->"+articleCode);
			
			Map<String, Object> map = boardService.getArticle(articleCode); 
			System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
			System.out.println("map에 들어잇는 값"+map);
			model.addAttribute("map", map);	
			
			return "/phoenix/com/modifyingBasicArticle";
		}		
		
		// 글 수정 처리
		@RequestMapping(value = "/phoenix/com/form/modifyBasicArticle", method = RequestMethod.POST)
		public String modifyBasicArticle(Article article, Model model) {
			System.out.println(article.getArticleCode()+"<--------------------article code");
			System.out.println(article.getArticleName()+"<--------------------getArticleName");
			System.out.println(article.getArticleContent()+"<--------------------getArticleContent");
			Article article2=boardService.modifyArticle(article);
			model.addAttribute("article", article2);	
		return "redirect:/phoenix/com/form/basicArticle";
		}		
		
		//글 삭제 처리
		@RequestMapping(value = "/phoenix/com/process/deleteBasicArticle", method = RequestMethod.GET)
		public String deleteBasicArticle(Article article, Model model) {
			System.out.println(article.getBoardGroupCode()+"<-----머냐");
			boardService.deleteArticle(article);
			model.addAttribute("boardGroupCode", article.getBoardGroupCode());
			return "redirect:/phoenix/com/form/basicBoard";
		}
		
		//댓글작성 버튼 클릭시 댓글작성폼 이동
		@RequestMapping(value="/phoenix/com/form/comment", method=RequestMethod.GET)
		public String insertComment(String articleCode, Model model){
			System.out.println("aritcleCode : "+articleCode);
			model.addAttribute("articleCode", articleCode);
			return "/phoenix/com/comment";
		}
		
		//댓글 등록
		@RequestMapping(value = "/phoenix/com/process/insertComment", method = RequestMethod.POST)
		public String insertComment(Comment comment, Model model) {
			System.out.println("-----------댓글 등록버튼 클릭----------");
			System.out.println(comment.getArticleCode());
			System.out.println(comment.getCommentCode());
			System.out.println(comment.getCommentContent());
			System.out.println("-----------댓글 등록버튼 클릭----------");
			
			boardService.insertComment(comment);
			model.addAttribute("articleCode", comment.getArticleCode());
			return "redirect:/phoenix/com/form/basicArticle";
		}
		
		//댓글 리스트
		@RequestMapping(value="/phoenix/com/commentList", method=RequestMethod.GET)
		public String commentList(String articleCode, Model model){
			List<Comment> commentList = boardService.commentList(articleCode);
			System.out.println("--------commentList--------");
			System.out.println(commentList);
			System.out.println("--------commentList--------");
			model.addAttribute("commentList", commentList);
			return "/phoenix/com/commentList";
			
		}
		
		
		//댓글 삭제 처리
		@RequestMapping(value = "/phoenix/com/process/deleteComment", method = RequestMethod.GET)
		public String deleteComment(Comment comment, Model model) {
			String articleCode=boardService.deleteComment(comment);
			model.addAttribute("articleCode", articleCode);
			return "redirect:/phoenix/com/form/basicArticle";
		}
		
		
		
		//디자이너 게시판으로 이동
				@RequestMapping(value = "/phoenix/com/form/designerBoard", method = RequestMethod.GET)
				public String moveToDesignerBoard() {
				return "/phoenix/com/designerBoard";
				}
		
}






























