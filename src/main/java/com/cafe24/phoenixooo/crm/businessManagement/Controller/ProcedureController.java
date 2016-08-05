package com.cafe24.phoenixooo.crm.businessManagement.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.CustomerManagement.Service.CustomerService;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
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
	private CustomerService customerService;
	@Autowired
	private BusinessManagementSettingService businessManagementSettingService;
	@Autowired
	private ProcedureService procedureService;
	
	
	//임시메인
	@RequestMapping(value = "/phoenix/crm/businessManagement/businessManagement", method = RequestMethod.GET)
	public String businessManagement(CrmCustomer customer,Model model) {
		List<CrmCustomer> list = customerService.getCustomerList();
		model.addAttribute("list", list);
		return "/phoenix/crm/businessManagement/procedurePaymentCustomerList";
	}
	
	
	//시술내역	
	@RequestMapping(value = "/phoenix/crm/form/procedurePaymentCustomerList", method = RequestMethod.GET)
	public String procedurePayment(CrmCustomer customer,Model model) {
		List<CrmCustomer> list = customerService.getCustomerList();
		model.addAttribute("list", list);
		return "/phoenix/crm/businessManagement/procedurePaymentCustomerList";
	}
	
	//시술내역등록	
	@RequestMapping(value = "/phoenix/crm/form/procedurePayment", method = RequestMethod.GET)
	public String procedurePayment(HttpSession session,Model model) {
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList((String)session.getAttribute("shopCode"));
		model.addAttribute("itemList", itemList);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
	
	//아이템셀렉박스 클릭시...디자인목록 보여주기..	
	@RequestMapping(value = "/phoenix/crm/process/procedurePaymentSelectItem", method = RequestMethod.GET)
	public String procedurePaymentSelectItem(ProcedureItemDesign item, Model model) {
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(item.getShopCode());
		List<ProcedureItemDesign> itemDesignList = procedureService.selectItemDesignList(item.getItemCode());
		model.addAttribute("itemList", itemList);
		model.addAttribute("itemDesignList", itemDesignList);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
	
	@RequestMapping(value = "/phoenix/crm/process/procedurePaymentSelectItemDesign", method = RequestMethod.GET)
	public String procedurePaymentSelectItemDesign(ProcedureItemDesign item, Model model) {
		System.out.println("디자인컨트롤러");
		System.out.println(item.getItemDesignCode());
		System.out.println(item.getShopCode());
		System.out.println(item.getItemCode());
		
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(item.getShopCode());
		List<ProcedureItemDesign> itemDesignList = procedureService.selectItemDesignList(item.getItemCode());
		//ProcedureItemDesign itemDesign;
		System.out.println("for문시작");
		System.out.println("for문시작");
		for(int i=0; i<itemDesignList.size(); i++){
			System.out.println(itemDesignList.get(i).getItemDesignCode());
			if(itemDesignList.get(i).getItemDesignCode().equals(item.getItemDesignCode())){
				//itemDesign = itemDesignList.get(i);
			}
		}
		//ProcedureItemDesign itemDesign = procedureService.selectItemDesign(item.getItemDesignCode());
		model.addAttribute("itemList", itemList);
		model.addAttribute("itemDesignList", itemDesignList);
		//model.addAttribute("itemDesign", itemDesign);
		return null;
	}
	
}	
