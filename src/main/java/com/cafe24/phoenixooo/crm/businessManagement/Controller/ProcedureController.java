package com.cafe24.phoenixooo.crm.businessManagement.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter.DEFAULT;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Service.CustomerService;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedurePayment;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestProcedurePayment;
import com.cafe24.phoenixooo.crm.businessManagement.Service.BusinessManagementSettingService;
import com.cafe24.phoenixooo.crm.businessManagement.Service.ProcedureService;

/**
 * 시술내역 시술내역리스트 등 영업관리의 첫페이지 작동시키는 컨트롤러 
 * @author 201-04
 *
 */
@Controller
public class ProcedureController {
	@Autowired
	private BusinessManagementSettingService businessManagementSettingService;
	@Autowired
	private ProcedureService procedureService;
	
	
	//임시메인
	@RequestMapping(value = "/phoenix/crm/businessManagement/businessManagement", method = RequestMethod.GET)
	public String businessManagement(HttpSession session,Model model) {
		//그냥 내꺼 리스트를 만들자!
		List<CrmCustomer> list = procedureService.getCustomerList((String)session.getAttribute("shopCode"));
		model.addAttribute("list", list);
		return "/phoenix/crm/businessManagement/procedurePaymentCustomerList";
	}
	
	
	//시술내역	
	@RequestMapping(value = "/phoenix/crm/form/procedurePaymentCustomerList", method = RequestMethod.GET)
	public String procedurePayment(HttpSession session,Model model) {
		List<CrmCustomer> list = procedureService.getCustomerList((String)session.getAttribute("shopCode"));
		model.addAttribute("list", list);
		return "/phoenix/crm/businessManagement/procedurePaymentCustomerList";
	}
	
	
	//시술내역등록화면
	@RequestMapping(value = "/phoenix/crm/form/insertProcedurePayment", method = RequestMethod.GET)
	public String insertProcedurePayment(HttpSession session,Model model) {
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList((String)session.getAttribute("shopCode"));
		model.addAttribute("itemList", itemList);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
	
	
	// 아 ㅡㅡ..;;리스트 ㅈㄱㄴ...
	//시술등록처리
	@RequestMapping(value ="/phoenix/crm/process/insertProcedurePayment", method = RequestMethod.POST)
	public String insertProcedurePayment(RequestProcedurePayment payment,@RequestParam(value="again", defaultValue="turn") String again) {
		String url ="redirect:/phoenix/crm/form/procedurePayment";
		if(again.equals("turn")){
			url ="redirect:/phoenix/crm/form/procedurePaymentCustomerList";
		}
		procedureService.insertProcedurePayment(payment);
		return url;
	}
		
		
	
	//아이템셀렉박스 클릭시...디자인목록 보여주기..
	//샾코드 있어서 여기서부터 그냥 POST
	@RequestMapping(value = "/phoenix/crm/process/procedurePaymentSelectItem", method = RequestMethod.POST)
	public String procedurePaymentSelectItem(ProcedureItemDesign item, Model model) {
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(item.getShopCode());
		List<ProcedureItemDesign> itemDesignList = procedureService.selectItemDesignList(item.getItemCode());
		model.addAttribute("itemList", itemList);
		model.addAttribute("itemDesignList", itemDesignList);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
	
	
	
	//아이템상세 디자인
	@RequestMapping(value = "/phoenix/crm/process/procedurePaymentSelectItemDesign", method = RequestMethod.POST)
	public String procedurePaymentSelectItemDesign(ProcedureItemDesign item, Model model) {
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(item.getShopCode());
		List<ProcedureItemDesign> itemDesignList = procedureService.selectItemDesignList(item.getItemCode());
		ProcedureItemDesign itemDesign = null;
		
		for(int i=0; i<itemDesignList.size(); i++){
			System.out.println(itemDesignList.get(i).getItemDesignCode());
			if(itemDesignList.get(i).getItemDesignCode().equals(item.getItemDesignCode())){
				itemDesign = itemDesignList.get(i);
			}
		}
		
		model.addAttribute("itemList", itemList);
		model.addAttribute("itemDesignList", itemDesignList);
		model.addAttribute("itemDesign", itemDesign);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
	
	
	
	
	
	
	
	
}	
