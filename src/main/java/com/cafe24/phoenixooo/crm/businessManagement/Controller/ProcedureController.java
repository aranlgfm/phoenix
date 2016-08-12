package com.cafe24.phoenixooo.crm.businessManagement.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.crm.businessManagement.Model.PageHelper;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedurePayment;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestPageHelper;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestProcedurePayment;
import com.cafe24.phoenixooo.crm.businessManagement.Service.BusinessManagementSettingService;
import com.cafe24.phoenixooo.crm.businessManagement.Service.ProcedureService;
import com.cafe24.phoenixooo.crm.salesManagement.Model.EmployeeListForSales;
import com.cafe24.phoenixooo.crm.salesManagement.Service.EmployeeSalesService;

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
	@Autowired
	EmployeeSalesService empService;
	
	/**
	 * 1-1. 시술내역 - 시술내역 관리 첫페이지화면
	 * 1-2. 시술내역(리스트별) - 시술내역 관리 첫페이지화면 리스트정렬
	 * 2-1. 시술내역등록화면 - 시술내역화면클릭시 화면 1번과 동일
	 * 2-2. 시술내역등록화면 - 시술품목설정
	 * 2-3. 시술내역등록화면 - 시술품목의 디자인설정
	 * 3. 시술등록처리 	
	 * 4. 수정설명 생략 
	 */
	
	//임시메인
	@RequestMapping(value = "/phoenix/crm/businessManagement/businessManagement", method = RequestMethod.GET)
	public String businessManagement(HttpSession session,RequestPageHelper rpageHelper,Model model) {
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shopCode", user.getShopCode());
		rpageHelper.setShopCode(user.getShopCode());
		rpageHelper.setTableName("CRM_CUSTOMER_TB");
		rpageHelper.setColumName("CUSTOMER_NM");
		int totalRecord = (procedureService.selectTotalCount(rpageHelper));
		rpageHelper.setTotalRecordSize(totalRecord);
		map.put("pageHelper", new PageHelper(rpageHelper));
		
		List<ProcedurePayment> list = procedureService.getCustomerList(map);
		model.addAttribute("list", list);
		model.addAttribute("pageHelper",map.get("pageHelper"));
		return "/phoenix/crm/businessManagement/procedurePaymentCustomerList";
	}
	
	/**
	 * 1-1 시술내역
	 * @param session
	 * @param model
	 * @return
	 * 테이블 명 : CRM_CUSTOMER_TB
	 * 컬럼 명 : CUSTOMER_NM
	 */
	@RequestMapping(value = "/phoenix/crm/form/procedurePaymentCustomerList", method = RequestMethod.GET)
	public String procedurePayment(HttpSession session,RequestPageHelper rpageHelper,Model model) {
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shopCode", user.getShopCode());
		rpageHelper.setShopCode(user.getShopCode());
		
		rpageHelper.setTableName("CRM_CUSTOMER_TB");
		rpageHelper.setColumName("CUSTOMER_NM");
		int totalRecord = (procedureService.selectTotalCount(rpageHelper));
		rpageHelper.setTotalRecordSize(totalRecord);
		map.put("pageHelper", new PageHelper(rpageHelper));
		
		List<ProcedurePayment> list = procedureService.getCustomerList(map);
		if(map == null){
			return "/phoenix/crm/businessManagement/procedurePaymentCustomerList";
		}
		model.addAttribute("list", list);
		model.addAttribute("pageHelper",map.get("pageHelper"));
		return "/phoenix/crm/businessManagement/procedurePaymentCustomerList";
	}
	
	/**
	 * 1-2 시술내역 의 정렬 단어검색 등등
	 * @param session
	 * @param model
	 * @return
	 * 테이블 명 : CRM_CUSTOMER_TB
	 * 컬럼 명 : CUSTOMER_NM
	 */
	@RequestMapping(value = "/phoenix/crm/form/procedurePaymentCustomerList", method = RequestMethod.POST)
	public String procedurePaymentforPost(HttpSession session,RequestPageHelper rpageHelper,Model model) {
		
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shopCode", user.getShopCode());
		rpageHelper.setShopCode(user.getShopCode());
		rpageHelper.setTableName("CRM_CUSTOMER_TB");
		rpageHelper.setColumName("CUSTOMER_NM");
		int totalRecord = (procedureService.selectTotalCount(rpageHelper));
		rpageHelper.setTotalRecordSize(totalRecord);
		map.put("pageHelper", new PageHelper(rpageHelper));
		
		List<ProcedurePayment> list = procedureService.getCustomerList(map);
		model.addAttribute("list", list);
		model.addAttribute("pageHelper",map.get("pageHelper"));
		return "/phoenix/crm/businessManagement/procedurePaymentCustomerList";
		
		
		/**
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shopCode", (String)session.getAttribute("shopCode"));
		
		int totalRecord = (procedureService.selectTotalCount(rpageHelper));
		
		rpageHelper.setTotalRecordSize(totalRecord);
		map.put("pageHelper", new PageHelper(rpageHelper));
		//리스트 가져오기;
		List<ProcedurePayment> list = procedureService.getPaymentList(map);
		model.addAttribute("list", list);
		model.addAttribute("pageHelper",map.get("pageHelper"));
		return "/phoenix/crm/businessManagement/procedurePaymentList";
		 */
	}
	
	
	
	
	/**
	 * 2-1. 시술내역등록화면 1번화면에서 입력하기위해 넘어옴.
	 * 시술품목(아이템)리스트 뿌려줌.
	 * @param payment (request객체)
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/form/insertProcedurePayment", method = RequestMethod.GET)
	public String insertProcedurePayment(HttpSession session,Model model,@RequestParam(value="customerCode", required=false) String customerCode) {
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(user.getShopCode());

		EmployeeListForSales emp = new EmployeeListForSales();
		emp.setShopCode(user.getShopCode());
		List<EmployeeListForSales> employeeList = empService.selectEmployeeList(emp);
		
		model.addAttribute("employeeList",employeeList);
		model.addAttribute("customerCode",customerCode);
		model.addAttribute("itemList", itemList);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
	
	
	/**
	 * 2-2 시술내역등록화면 시술품목select
	 * 화면에서 아이템을 select하면 해당하는 아이템의 세부 디자인불러옴
	 * ajax로 해야는데 그냥 해보고 싶었음.  
	 * @param item
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/procedurePaymentSelectItem", method = RequestMethod.POST)
	public String procedurePaymentSelectItem(ProcedureItemDesign item, Model model) {
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(item.getShopCode());
		List<ProcedureItemDesign> itemDesignList = procedureService.selectItemDesignList(item.getItemCode());
		
		EmployeeListForSales emp = new EmployeeListForSales();
		emp.setShopCode(item.getShopCode());
		List<EmployeeListForSales> employeeList = empService.selectEmployeeList(emp);
		
		model.addAttribute("employeeList",employeeList);
		model.addAttribute("itemList", itemList);
		model.addAttribute("itemDesignList", itemDesignList);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
	
	
	/**
	 * 2-3 시술내역등록화면 시술디자인(품목상세)select
	 * 화면에서 디자인 select하면 해당하는 가격 등의 정보가 뜸.
	 * 사실 많이 떠야는데 뜨는거는 가격밖에 없음 ㅋ.ㅋ;;
	 * 마찬가지로 ajax말고 자바랑 jstl로 하고싶었음.
	 * @param item
	 * @param model
	 * @return
	 */
	
	@RequestMapping(value = "/phoenix/crm/process/procedurePaymentSelectItemDesign", method = RequestMethod.POST)
	public String procedurePaymentSelectItemDesign(ProcedureItemDesign item, Model model) {

		ProcedureItemDesign itemDesign = null;
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(item.getShopCode());
		List<ProcedureItemDesign> itemDesignList = procedureService.selectItemDesignList(item.getItemCode());
		
		for(int i=0; i<itemDesignList.size(); i++){
			System.out.println(itemDesignList.get(i).getItemDesignCode());
			if(itemDesignList.get(i).getItemDesignCode().equals(item.getItemDesignCode())){
				itemDesign = itemDesignList.get(i);
			}
		}
		
		
		EmployeeListForSales emp = new EmployeeListForSales();
		emp.setShopCode(item.getShopCode());
		List<EmployeeListForSales> employeeList = empService.selectEmployeeList(emp);
		
		
		model.addAttribute("employeeList",employeeList);
		model.addAttribute("itemList", itemList);
		model.addAttribute("itemDesignList", itemDesignList);
		model.addAttribute("itemDesign", itemDesign);
		return "/phoenix/crm/businessManagement/procedurePayment";
	}
	
	
	
	/**
	 * 3.시술내역입력처리 2-1~2-3번에입력된 내용 처리 처리함.
	 * 
	 * @param payment
	 * @param addPayment 해당값에 따라 추가등록과 등록 나누어짐.
	 * @return
	 */
	@RequestMapping(value ="/phoenix/crm/process/insertProcedurePayment", method = RequestMethod.POST)
	public String insertProcedurePayment(RequestProcedurePayment payment,@RequestParam(value="addPayment") String addPayment,HttpSession session) {
		
		String url ="redirect:/phoenix/crm/form/procedurePaymentCustomerList";
		if(addPayment.equals("등록")){
			session.removeAttribute("customerCode");
		}else{
			url ="redirect:/phoenix/crm/form/insertProcedurePayment";
		}
		
//		if(addPayment != null){
//			url ="redirect:/phoenix/crm/form/insertProcedurePayment";
//		}else{
//			session.removeAttribute("customerCode");
//		}
		
		procedureService.insertProcedurePayment(payment);
		return url;
	}
	
	
	/**
	 * 4.시술내역리스트
	 * 테이블명 : CRM_PAYMENT_TB
	 * 컬럼명 : ITEMDESIGN_NM
	 */
	@RequestMapping(value = "/phoenix/crm/form/ProcedurePaymentList", method = RequestMethod.GET)
	public String getProcedurePayment(HttpSession session,RequestPageHelper rpageHelper,Model model) {
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		//pageHelper통한 페이지;;
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shopCode", user.getShopCode());
		
		//테이블명과 샾코드를 가져다가 넣음.
		rpageHelper.setShopCode(user.getShopCode());
		rpageHelper.setTableName("CRM_PAYMENT_TB");
		rpageHelper.setColumName("ITEMDESIGN_NM");
		System.out.println(rpageHelper);
		int totalRecord = (procedureService.selectTotalCount(rpageHelper));
		rpageHelper.setTotalRecordSize(totalRecord);
		
		map.put("pageHelper", new PageHelper(rpageHelper));
		//리스트 가져오기;
		List<ProcedurePayment> list = procedureService.getPaymentList(map);
		model.addAttribute("list", list);
		model.addAttribute("pageHelper",map.get("pageHelper"));
		return "/phoenix/crm/businessManagement/procedurePaymentList";
	}
	
	/**
	 * 4.시술내역리스트 POST
	 * 정렬 단어검색 등등..
	 * @param session
	 * @param pageHelper
	 * @param model
	 * @return
	 * 테이블명 : CRM_PAYMENT_TB
	 * 컬럼명 : ITEMDESIGN_NM 
	 * rpageHelper.setColumName("ITEMDESIGN_NM");
	 * 
	 */
	@RequestMapping(value = "/phoenix/crm/form/ProcedurePaymentList", method = RequestMethod.POST)
	public String getProcedurePaymentforPost(HttpSession session,RequestPageHelper rpageHelper,Model model) {
		
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		//pageHelper통한 페이지;;
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shopCode", user.getShopCode());
		
		//테이블명과 샾코드를 가져다가 넣음.
		rpageHelper.setShopCode(user.getShopCode());
		rpageHelper.setTableName("CRM_PAYMENT_TB");
		rpageHelper.setColumName("ITEMDESIGN_NM");
		System.out.println(rpageHelper);
		int totalRecord = (procedureService.selectTotalCount(rpageHelper));
		rpageHelper.setTotalRecordSize(totalRecord);
		
		map.put("pageHelper", new PageHelper(rpageHelper));
		//리스트 가져오기;
		List<ProcedurePayment> list = procedureService.getPaymentList(map);
		model.addAttribute("list", list);
		model.addAttribute("pageHelper",map.get("pageHelper"));
		return "/phoenix/crm/businessManagement/procedurePaymentList";
	}
	
	/**
	 * 수정첫화면
	 */
	@RequestMapping(value ="/phoenix/crm/form/modifyProcedurePayment", method = RequestMethod.GET)
	public String modifyProcedurePayment(@RequestParam("paymentCode") String paymentCode,Model model) {
		ProcedureItemDesign itemDesign = null;
	
		//수정전 셀렉을 한다.
		RequestProcedurePayment procedurePayment= procedureService.selectProcedurePayment(paymentCode);
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(procedurePayment.getShopCode());
		List<ProcedureItemDesign> itemDesignList = procedureService.selectItemDesignList(procedurePayment.getItemCode());
		
		for(int i=0; i<itemDesignList.size(); i++){
			System.out.println(itemDesignList.get(i).getItemDesignCode());
			if(itemDesignList.get(i).getItemDesignCode().equals(procedurePayment.getItemDesignCode())){
				itemDesign = itemDesignList.get(i);
			}
		}
		
		EmployeeListForSales emp = new EmployeeListForSales();
		emp.setShopCode(procedurePayment.getShopCode());
		List<EmployeeListForSales> employeeList = empService.selectEmployeeList(emp);
		
		
		model.addAttribute("employeeList",employeeList);
		model.addAttribute("procedurePayment", procedurePayment);
		model.addAttribute("itemList", itemList);
		model.addAttribute("itemDesignList", itemDesignList);
		model.addAttribute("itemDesign", itemDesign);
		return "/phoenix/crm/businessManagement/procedurePaymentModify";
	}
	
	/**
	 * 수정처리
	 */
	@RequestMapping(value ="/phoenix/crm/process/modifyProcedurePayment", method = RequestMethod.POST)
	public String modifyProcedurePayment(RequestProcedurePayment payment,HttpSession session) {
		procedureService.modifyProcedurePayment(payment);
		session.removeAttribute("paymentCode");
		return "redirect:/phoenix/crm/form/ProcedurePaymentList";
	}
	
	
	/**
	 *  수정에서 아이템관려 셀렉할시
	 * @param item
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/modifyProcedurePaymentSelectItem", method = RequestMethod.POST)
	public String modifyProcedurePaymentSelectItem(RequestProcedurePayment payment, Model model) {
		
		RequestProcedurePayment procedurePayment= procedureService.selectProcedurePayment(payment.getPaymentCode());
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(payment.getShopCode());
		List<ProcedureItemDesign> itemDesignList = procedureService.selectItemDesignList(payment.getItemCode());
		
		model.addAttribute("procedurePayment", procedurePayment);
		model.addAttribute("itemList", itemList);
		model.addAttribute("itemDesignList", itemDesignList);
		return "/phoenix/crm/businessManagement/procedurePaymentModify";
	}
	
	/**
	 * 수정에서 디자인관련 셀렉시
	 * @param item
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/modifyProcedurePaymentSelectItemDesign", method = RequestMethod.POST)
	public String modifyprocedurePaymentSelectItemDesign(RequestProcedurePayment payment, Model model) {
		ProcedureItemDesign itemDesign = null;
		
		RequestProcedurePayment procedurePayment= procedureService.selectProcedurePayment(payment.getPaymentCode());
		List<ProcedureItem> itemList = businessManagementSettingService.selectItemList(payment.getShopCode());
		List<ProcedureItemDesign> itemDesignList = procedureService.selectItemDesignList(payment.getItemCode());
		
		for(int i=0; i<itemDesignList.size(); i++){
			System.out.println(itemDesignList.get(i).getItemDesignCode());
			if(itemDesignList.get(i).getItemDesignCode().equals(payment.getItemDesignCode())){
				itemDesign = itemDesignList.get(i);
			}
		}
		
		model.addAttribute("procedurePayment", procedurePayment);
		model.addAttribute("itemList", itemList);
		model.addAttribute("itemDesignList", itemDesignList);
		model.addAttribute("itemDesign", itemDesign);
		return "/phoenix/crm/businessManagement/procedurePaymentModify";
	}
	
	
	@RequestMapping(value="/phoenix/crm/process/deleteProcedurePayment",method=RequestMethod.GET)
	public String deleteProcedurePayment(String paymentCode){
		procedureService.deleteProcedurePayment(paymentCode);
		return "redirect:/phoenix/crm/form/ProcedurePaymentList";
	}
}	
