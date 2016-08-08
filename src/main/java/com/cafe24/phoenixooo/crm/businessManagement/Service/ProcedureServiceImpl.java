package com.cafe24.phoenixooo.crm.businessManagement.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedurePayment;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestPageHelper;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestProcedurePayment;
import com.cafe24.phoenixooo.crm.businessManagement.Repository.ProcedureDao;

@Service
public class ProcedureServiceImpl implements ProcedureService{
	@Autowired
	private ProcedureDao dao;

	/**
	 * 아이템코드에 대한 아이템디자인 리스트
	 */
	@Override
	public List<ProcedureItemDesign> selectItemDesignList(String itemCode) {
		return dao.selectItemDesignList(itemCode); 
	}

	//시술등록	
	@Override
	public void insertProcedurePayment(RequestProcedurePayment payment) {
		dao.insertProcedurePayment(payment);
	}
	
	//시술회원리스트
	@Override
	public List<ProcedurePayment> getCustomerList(String shopCode) {
		 
		return dao.getCustomerList(shopCode);
	}
	
	
	
	//전체레코드수
	@Override
	public int selectTotalCount(RequestPageHelper pageHelper) {
		return dao.selectTotalCount(pageHelper);
	}
	
	//시술내역리스트
	@Override
	public List<ProcedurePayment> getPaymentList(Map<String, Object> map) {
		return dao.getPayMentList(map);
	}
	
	
	
	//시술수정
	@Override
	public void modifyProcedurePayment(RequestProcedurePayment payment) {
		dao.modifyProcedurePayment(payment);
	}
	
	//수정전 셀렉
	@Override
	public RequestProcedurePayment selectProcedurePayment(String paymentCode) {
		return dao.selectProcedurePayment(paymentCode);
	}
	
	//시술삭제
	@Override
	public void deleteProcedurePayment(String paymentCode) {
		dao.deleteProcedurePayment(paymentCode);
	}


	

}
