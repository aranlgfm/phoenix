package com.cafe24.phoenixooo.crm.businessManagement.Repository;


import java.util.List;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;

public interface BusinessManagementSettingDao {
	//시술품목(아이템)등록
	void insertProcedureItem(ProcedureItem item);
	//시술품목디자인(아이템세부) 등록
	void insertProcedureItemDesign(ProcedureItemDesign item);
	
	//시술품목(아이템)코드
	String getItemCode(ProcedureItem item);

	//시술품목디자인(아이템세부)코드
	String getItemDesignCode(ProcedureItemDesign item);
	
	//시술품목(아이템) 리스트
	List<ProcedureItem> selectItemList(String shopCode);
	
	//시술품목디자인(아이템세부) 리스트
	List<ProcedureItemDesign> selectItemDesignList(String shopCode);
	
	
	//시술품목(아이템) 셀렉 (수정용)
	ProcedureItem selectItem(String ItemCode);
		
	//시술품목(아이템) 수정
	void modifyItem(ProcedureItem item);
	
	//시술품목디자인셀렉 (수정용)
	ProcedureItemDesign selectItemDesign(String ItemDesignCode);
	
	//시술품목디자인 수정
	void modifyItemDesign(ProcedureItemDesign item);
	
	
	
	
	
	//시술품목 DELTE
		void deleteItem(ProcedureItem item);

	//시술품목디자인 DELTE
	void deleteItemDesign(ProcedureItemDesign item);
}
