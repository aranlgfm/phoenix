package com.cafe24.phoenixooo.crm.businessManagement.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
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
	 * 3-1.시술품목(아이템) 셀렉
	 * 3-2.시술품목(아이템) 수정
	 * 4-1.시술품목디자인(아이템세부) 수정전에 셀렉
	 * 4-2.4-2시술품목디자인 수정.
	 * @author 201-04
	 *
	 */

//영업관리 컨트롤러
@Controller
public class BusinessManagementSettingController {
	@Autowired
	BusinessManagementSettingService service;
	
	
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
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		String shopCode = user.getShopCode();
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
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		String shopCode = user.getShopCode();
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
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		String shopCode = user.getShopCode();
		
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
	
	/**
	 * 3-1 시술품목 수정전 SELECT
	 * @param itemCode
	 * @param modelro
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/form/modifyProcedureItem", method = RequestMethod.GET)
	public String modifyProcedureItem(@RequestParam("itemCode") String itemCode,Model model) {
		model.addAttribute("item", service.selectItem(itemCode));
		return "/phoenix/crm/businessManagement/procedureItemModify";
	}
	
	@RequestMapping(value="/phoenix/crm/process/modifyProcedureItem", method = RequestMethod.POST)
	public String modifyProcedure(ProcedureItem item,Model model) {
		service.modifyItem(item);
		return "redirect:/phoenix/crm/form/pcedureItemSetting";
	}
	
	
	/**
	 * 4-1 시술품목디자인 수정전에 SELECT
	 * @param itemDesignCode
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/form/modifyProcedureItemDesign", method = RequestMethod.GET)
	public String modifyProcedureDesign(@RequestParam("itemDesignCode") String itemDesignCode,Model model) {
		model.addAttribute("item", service.selectItemDesign(itemDesignCode));
		return "/phoenix/crm/businessManagement/procedureItemDesignModify";
	}
	
	
	/**
	 * 4-2시술품목디자인 수정.
	 * @param item
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/process/modifyProcedureItemDesign", method = RequestMethod.POST)
	public String modifyProcedureDesign(ProcedureItemDesign item,Model model) {
		service.modifyItemDesign(item);
		return "redirect:/phoenix/crm/form/procedureItemDesignSetting";
	}
	
	
	/**
	 * 5-1 시술품목 삭제.
	 * 받는 리퀘스트객체가 ProcedureItem이 아니라 ProcedureItemDesign입니다.
	 * 맵퍼에 너무 하나셀렉할때마다 쓰는것 같아서
	 * 이런 쓰레기같은 방법으로도 할수 있구나 해서 해놓은것입니다.
	 * Design으로 객체를 받아서
	 * 서비스에서 시술품목디자인(아이템상세)를 삭제하고
	 * 받은 매개변수값을 다시 시술품목(아이템)삭제합니다.
	 * 나중에 정상적인 방법으로 바꿀께용~~~
	 * @param item
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/process/deleteProcedureItem", method = RequestMethod.GET)
	public String deleteProcedure(ProcedureItemDesign item){
		service.deleteItem(item);
		return "redirect:/phoenix/crm/form/procedureItemSetting";
	}
	
	
	/**
	 * 5-2시술품목디자인 삭제.
	 * @param itemDesignCode
	 * @return
	 */
	@RequestMapping(value="/phoenix/crm/process/deleteProcedureItemDesign", method = RequestMethod.GET)
	public String deleteProcedureDesign(ProcedureItemDesign item){
		service.deleteItemDesign(item);
		return "redirect:/phoenix/crm/form/procedureItemDesignSetting";
	}
}
