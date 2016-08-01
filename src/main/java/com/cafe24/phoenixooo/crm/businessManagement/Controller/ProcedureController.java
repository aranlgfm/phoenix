package com.cafe24.phoenixooo.crm.businessManagement.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 시술내역 시술내역리스트 등 영업관리의 첫페이지 작동시키는 컨트롤러 
 * @author 201-04
 *
 */
@Controller
public class ProcedureController {
	
	//임시메인
	@RequestMapping(value = "/phoenix/crm/businessManagement/businessManagement", method = RequestMethod.GET)
	public String businessManagement() {
		return "/phoenix/crm/businessManagement/businessManagementTemp";
	}
	
	
}	
