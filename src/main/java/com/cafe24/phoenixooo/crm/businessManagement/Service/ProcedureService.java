package com.cafe24.phoenixooo.crm.businessManagement.Service;

import java.util.List;
import java.util.Map;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedurePayment;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestPageHelper;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestProcedurePayment;

public interface ProcedureService {
	
	List<ProcedureItemDesign> selectItemDesignList(String itemCode);
	
	//시술등록
	void insertProcedurePayment(RequestProcedurePayment payment);
	
	//회원리스트
	List<ProcedurePayment> getCustomerList(Map<String, Object> map);
	
	//전체레코드수
	int selectTotalCount(RequestPageHelper pageHelper);
	
	//시술내역리스트
	List<ProcedurePayment> getPaymentList(Map<String, Object> map);
	
	//시술셀렉
	RequestProcedurePayment selectProcedurePayment(String paymentCode);
	
	//시술수정
	void modifyProcedurePayment(RequestProcedurePayment payment);
	
	//시술삭제
	void deleteProcedurePayment(String paymentCode);
}
