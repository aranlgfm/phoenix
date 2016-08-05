package com.cafe24.phoenixooo.crm.businessManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestProcedurePayment;

public interface ProcedureService {
	
	List<ProcedureItemDesign> selectItemDesignList(String itemCode);
	
	//시술등록
	void insertProcedurePayment(RequestProcedurePayment payment);
}
