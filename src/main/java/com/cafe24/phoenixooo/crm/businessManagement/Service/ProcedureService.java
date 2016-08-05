package com.cafe24.phoenixooo.crm.businessManagement.Service;

import java.util.List;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;

public interface ProcedureService {
	
	List<ProcedureItemDesign> selectItemDesignList(String itemCode);
}
