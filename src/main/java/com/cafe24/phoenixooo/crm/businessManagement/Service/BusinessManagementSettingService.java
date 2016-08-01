package com.cafe24.phoenixooo.crm.businessManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;

public interface BusinessManagementSettingService {
	
	//시술품목(아이템)등록
	void insertProcedureItem(ProcedureItem item);	
	
	//시술디자인(아이템상세)등록
	void insertProcedureItemDesign(ProcedureItemDesign item);	
	
	//시술품목(아이템)리스트
	List<ProcedureItem> selectItemList(String shopCode);
}
