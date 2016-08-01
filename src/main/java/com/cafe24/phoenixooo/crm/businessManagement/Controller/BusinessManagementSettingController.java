package com.cafe24.phoenixooo.crm.businessManagement.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Service.BusinessManagementSettingService;

/** 영업관리
 * 0.임시 메인페이지
 * 1.영업관리 메인화면
 * 1.영업관리 메인화면 이자 시술품목 등록
 * 2.
 * @author 201-04
 *
 */

//영업관리 컨트롤러
@Controller
public class BusinessManagementSettingController {
	@Autowired
	BusinessManagementSettingService service;
	
	//CRM 전체메인. 나중에 바꿀것.
	@RequestMapping(value = "/phoenix/crm/form/login", method = RequestMethod.GET)
	public String crmFormBusiness(){
		return "/phoenix/crm/crmTemp";
	}
	
	/**
	 * 1. 영업관리 설정관리 요청시 처음 나오는 페이지 컨트롤러
	 *    기본값으로 불러오는 페이지가 시술품목에 대한 값임.
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/businessManagementSetting", method = RequestMethod.GET)
	public String businessManagementSetting() {
		return "/phoenix/crm/businessManagement/procedureItemSetting";
	}
	
	/**
	 * 1. 기본값 말고 시술품목 등록에 대한 컨트롤러
	 * 같은페이지 호출임.;
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/procedureItemSetting", method = RequestMethod.GET)
	public String procedureItemSetting() {
		return "/phoenix/crm/businessManagement/procedureItemSetting";
	}
	
	
	/**
	 * 시술품목(아이템)등록 처리 컨트롤러
	 * 제대로 수행시 다시 시술품목 정하는 페이지로 넘어감.
	 * @param item
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/process/insertProcedureItem",method = RequestMethod.POST)
	public String insertProcedureItem(ProcedureItem item){
		service.insertProcedureItem(item);
		return "/phoenix/crm/businessManagement/procedureItemSetting";
	}
	
	/**
	 * 2. 기본값 말고 시술품목의 세부 아이템(디자인)등록에 대한 컨트롤러
	 * 요청받을시 바로 해당샾의 아이템 리스트를 뿌려줘야함.
	 * 아...겟이라서 받기가 그지같네...;;
	 * 세션으로 받고 ProcedureItem item 
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/procedureItemDesignSetting", method = RequestMethod.GET)
	public String procedureDesignSetting(HttpSession session,Model model) {
		String shopCode = (String)session.getAttribute("shopCode");
		List<ProcedureItem> list = service.selectItemList(shopCode);
		model.addAttribute("item", list);
		return "/phoenix/crm/businessManagement/procedureItemDesignSetting";
	}
	
}
