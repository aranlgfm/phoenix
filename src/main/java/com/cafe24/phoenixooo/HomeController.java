package com.cafe24.phoenixooo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Service.BoardService;

@Controller
public class HomeController {

	@Autowired
	private BoardService service;
	
	/**
	 * 피닉스 메인
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(){
		return "/home";
	}
	
	/**
	 * 피닉스 메인
	 * @return
	 */
	@RequestMapping(value = "/phoenix", method = RequestMethod.GET)
	public String phoenix(Article article, Model model){
			article.setBoardGroupCode("COM_BOARDGROUP_1");
			List<Article> articleList = service.getArticleList(article);
			Article art2 = new Article();
			art2.setBoardGroupCode("COM_BOARDGROUP_3");
			List<Article> artList = service.getArticleList(art2);
			System.out.println(articleList.size()+"아티클 사이즈");
			model.addAttribute("articleList", articleList);
			model.addAttribute("artList", artList);
			
		return "phoenix";
	}
	
	/**
	 * CRM 메인
	 * @return
	 */
	@RequestMapping(value = "/crm", method = RequestMethod.GET)
	public String crm(){
		return "redirect:/phoenix/crm/form/procedurePaymentCustomerList";
	}
	
}