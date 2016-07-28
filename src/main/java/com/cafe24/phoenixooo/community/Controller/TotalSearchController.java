package com.cafe24.phoenixooo.community.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.community.Model.Test;
import com.cafe24.phoenixooo.community.Repository.SwDao;

@Controller
public class TotalSearchController {
	//개망....우리 키워드 해야되네;;; ㅡㅡ;
	@Autowired
	private SwDao swDao;
	/**
	 * 검색결과 화면 페이지
	 * 통합검색 검색결과
	 * @param word
	 * @return
	 */
	@RequestMapping(value="/phoenix/com/form/searchResult",method = RequestMethod.POST)
	public String comProcessSearch(String word, Model model){
		List<Test> test = swDao.selectSw();
		model.addAttribute("test", test);
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
