package com.cafe24.phoenixooo.community.Controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Model.Test;
import com.cafe24.phoenixooo.community.Repository.SwDao;
import com.cafe24.phoenixooo.community.Service.TotalSearchService;

@Controller
public class TotalSearchController {
	//개망....우리 키워드 해야되네;;; ㅡㅡ;
	@Autowired
	private TotalSearchService service;
	/**
	 * 검색결과 화면 페이지
	 * 통합검색 검색결과
	 * @param word
	 * @return
	 */
	@RequestMapping(value="/phoenix/com/form/searchResult",method = RequestMethod.POST)
	public String comFormSearchResult(String word, Model model){
		Map<String,Object> map = new HashMap<String,Object>();
		System.out.println("controller");
		model.addAttribute("word", word);
		System.out.println(word);
		map.put("list", service.selectArticleList(word)) ;
		model.addAttribute("map", map);
		
		return "/phoenix/com/searchResult";
	}
	
	@RequestMapping(value="/phoenix/com/form/searchResult",method = RequestMethod.GET)
	public String comFormSearchResultget(String word, Model model){
		Map<String,Object> map = new HashMap<String,Object>();
		System.out.println("controller");
		model.addAttribute("word", word);
		System.out.println(word);
		map.put("list", service.selectArticleList(word)) ;
		model.addAttribute("map", map);
		
		return "/phoenix/com/searchResult";
	}
	
	/**
	 * 검색결과 처리 페이지
	 * 해당 검색 결과를 카테고리에 따라 분류
	 * @return
	 */
	@RequestMapping(value="/phoenix/com/process/searchResult",method = RequestMethod.GET)
	public String comProcessSearchResult(@RequestParam(value="cate") String cate, String word, Model model){
		Map<String,Object> map = new HashMap<String,Object>();
		model.addAttribute("cate", cate);
		model.addAttribute("word", word);
		map = service.selectArticleList(word);
		model.addAttribute("list", map);
		return "/phoenix/com/searchResult";
	}
	
	
	
}
