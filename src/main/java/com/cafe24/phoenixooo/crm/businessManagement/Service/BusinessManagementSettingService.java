package com.cafe24.phoenixooo.crm.businessManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;

public interface BusinessManagementSettingService {
	
		//시술품목(아이템) INSERT
	void insertProcedureItem(ProcedureItem item);	
	
		//시술디자인(아이템상세) INSERT
	void insertProcedureItemDesign(ProcedureItemDesign item);	
	
		//시술품목(아이템) SELECT LIST
	List<ProcedureItem> selectItemList(String shopCode);
	
		//시술디자인(아이템상세) SELECT LIST
	List<ProcedureItemDesign> selectItemDesignList(String shopCode);
	
		//시술품목(아이템) SELECT ONE 
	ProcedureItem selectItem(String ItemCode);
	
		//시술품목(아이템) UPDATE
	void modifyItem(ProcedureItem item);
	
		//시술품목디자인 SELECT ONE 
	ProcedureItemDesign selectItemDesign(String ItemDesignCode);
	
		//시술품목디자인 UPDATE
	void modifyItemDesign(ProcedureItemDesign item);
	
	
	//시술품목디자인 DELETE
	void deleteItem(ProcedureItemDesign item);
		
	
	//시술품목디자인 DELETE
	void deleteItemDesign(ProcedureItemDesign item);
	
	
	
}
