package com.cafe24.phoenixooo.crm.businessManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;

public interface ProcedureDao {
		List<ProcedureItemDesign> selectItemDesignList(String itemCode);
}
