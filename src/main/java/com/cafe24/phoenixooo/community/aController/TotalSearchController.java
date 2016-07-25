package com.cafe24.phoenixooo.community.aController;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TotalSearchController {

	/**
	 * 검색결과 화면 페이지
	 * 통합검색 검색결과
	 * @param word
	 * @return
	 */
	@RequestMapping(value="/phoenix/com/form/searchResult",method = RequestMethod.POST)
	public String comProcessSearch(String word, Model model){
		return "/phoenix/com/searchResult";
	}
	
	/**
	 * 검색결과 처리 페이지
	 * 해당 검색 결과를 카테고리에 따라 분류
	 * @return
	 */
	@RequestMapping(value="/phoenix/com/form/searchResult",method = RequestMethod.GET)
	public String comProcessResult(@RequestParam(value="cate") String word, Model model){
		model.addAttribute("cate", word);
		System.out.println(word);
		return "/phoenix/com/searchResult";
	}
	
	
}
