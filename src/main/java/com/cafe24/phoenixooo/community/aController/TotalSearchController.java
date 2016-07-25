package com.cafe24.phoenixooo.community.aController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TotalSearchController {

	@RequestMapping(value="/phoenix/com/form/searchResult",method = RequestMethod.POST)
	public String comProcessSearch(String word){
		return "/phoenix/com/searchResult";
	}
	
	
	
}
