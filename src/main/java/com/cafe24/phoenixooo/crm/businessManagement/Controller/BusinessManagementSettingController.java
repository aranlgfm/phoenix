package com.cafe24.phoenixooo.crm.businessManagement.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Service.BusinessManagementSettingService;

	/** 영업관리
	 * 0.임시 메인페이지
	 * 1-1.영업관리 메인화면
	 * 1-2.시술품목(아이템) 등록 이자 영업관리 메인화면
	 * 1-3.시술품목(아이템)등록 처리 컨트롤러
	 * 2-1.시술품목디자인 (아이템세부) 화면
	 * 2-2.시술품목디자인 (아이템세부) 처리
	 * @author 201-04
	 *
	 */

//영업관리 컨트롤러
@Controller
public class BusinessManagementSettingController {
	@Autowired
	BusinessManagementSettingService service;
	
	//CRM 전체메인. 나중에 바꿀것.
	@RequestMapping(value="/phoenix/crm/form/login", method = RequestMethod.GET)
	public String crmFormBusiness(){
		return "/phoenix/crm/crmTemp";
	}
	
		/**
		 * 1-1. 영업관리 설정관리 요청시 처음 나오는 페이지 컨트롤러
		 *    기본값으로 불러오는 페이지가 시술품목에 대한 값임.
		 *    해당 화면이 불러올때 리스트가 나와야함
		 *    서비스의 selectItemList(shopCode) 로 리스트 받음.
		 *    selectItemList에 바로 shopCode
		 * @return
		 */
	@RequestMapping(value="/phoenix/crm/form/businessManagementSetting", method = RequestMethod.GET)
	public String businessManagementSetting(HttpSession session,Model model) {
		
		String shopCode = (String)session.getAttribute("shopCode");
		List<ProcedureItem> list = service.selectItemList(shopCode);
		model.addAttribute("item", list);
		return "/phoenix/crm/businessManagement/procedureItemSetting";
	}
	
		/**
		 * 1-2. 기본값 말고 시술품목 등록에 대한 컨트롤러
		 * 같은페이지 호출이나 다른항목에 있다가 클릭할수 있으니까~
		 * 해당 화면이 불러올때 리스트가 나와야함
		 * 서비스의 selectItemList(shopCode) 로 리스트 받음.
		 * @return
		 */
	@RequestMapping(value="/phoenix/crm/form/procedureItemSetting", method = RequestMethod.GET)
	public String procedureItemSetting(HttpSession session,Model model) {
		
		String shopCode = (String)session.getAttribute("shopCode");
		List<ProcedureItem> list = service.selectItemList(shopCode);
		model.addAttribute("item", list);
		return "/phoenix/crm/businessManagement/procedureItemSetting";
	}
	
	
		/**
		 *  1-3. 시술품목(아이템)등록 처리 컨트롤러
		 * 제대로 수행시 다시 시술품목 정하는 페이지로 넘어감.
		 * 아이템을 등록하는것임. 회원가입과 다를바가 없음.
		 * item의 커맨드 객체알아서 으이?
		 * @param item
		 * @return
		 */
	@RequestMapping(value="/phoenix/crm/process/insertProcedureItem",method = RequestMethod.POST)
	public String insertProcedureItem(ProcedureItem item){
		service.insertProcedureItem(item);
		service.selectItemList(item.getShopCode());
		return "redirect:/phoenix/crm/form/procedureItemSetting";
	}
	
		/**
		 * 2-1. 기본값 말고 시술품목의 세부 아이템(디자인)등록에 대한 컨트롤러
		 * 요청받을시 바로 해당샾의 아이템 리스트를 뿌려줘야함.
		 * Session에서 shopCode받아온다 
		 * 받은 shopCode를 매개변수로 selectItemList와 selectItemDesignList를 호출한다.
		 * 각각의 맞는 변수에 담는다.
		 * 모델에 담는다.
		 * 리다이렉트로 넘긴다.
		 * 화면에서 받는다.
		 * 세션으로 받고
		 * @param session
		 * @param model
		 * @return
		 */
	@RequestMapping(value="/phoenix/crm/form/procedureItemDesignSetting", method = RequestMethod.GET)
	public String procedureDesignSetting(HttpSession session,Model model) {
		String shopCode = (String)session.getAttribute("shopCode");//primary키 구해서 증가시킴
		List<ProcedureItem> list = service.selectItemList(shopCode);//아이템리스트
		List<ProcedureItemDesign> listDesign = service.selectItemDesignList(shopCode);
		model.addAttribute("item", list);
		model.addAttribute("itemDesign", listDesign);
		return "/phoenix/crm/businessManagement/procedureItemDesignSetting";
	}
	
		/**
		 * 2-2.시술품목디자인(아이템의세부) 등록에 대한 처리 컨트롤러
		 * 		회원가입과 다를바가 없음 으이으이?
		 * @param item
		 * @param model
		 * @return
		 */
	@RequestMapping(value="/phoenix/crm/process/insertProcedureItemDesign", method = RequestMethod.POST)
	public String procedureDesignSetting(ProcedureItemDesign item,Model model) {
		service.insertProcedureItemDesign(item);
		return "redirect:/phoenix/crm/form/procedureItemDesignSetting";
	}
	
}
