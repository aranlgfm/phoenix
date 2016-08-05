package com.cafe24.phoenixooo.crm.businessManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestProcedurePayment;

public interface ProcedureDao {
		List<ProcedureItemDesign> selectItemDesignList(String itemCode);
		
		//시술등록
		void insertProcedurePayment(RequestProcedurePayment payment);
}
