package com.cafe24.phoenixooo.crm.businessManagement.Repository;

import java.util.List;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestProcedurePayment;

public interface ProcedureDao {
		List<ProcedureItemDesign> selectItemDesignList(String itemCode);
		
		//시술등록
		void insertProcedurePayment(RequestProcedurePayment payment);
		
		//회원리스트
		List<CrmCustomer> getCustomerList(String shopCode);
			
}
