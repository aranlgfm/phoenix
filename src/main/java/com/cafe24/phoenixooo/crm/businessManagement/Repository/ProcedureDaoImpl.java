package com.cafe24.phoenixooo.crm.businessManagement.Repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedurePayment;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestPageHelper;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestProcedurePayment;

@Repository
public class ProcedureDaoImpl implements ProcedureDao{
	private final String NS = "com.cafe24.phoenixooo.crm.businessManagement.Repository.ProcedureMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//디자인리스트1
	@Override
	public List<ProcedureItemDesign> selectItemDesignList(String itemCode) {
		return sqlSession.selectList(NS+".selectItemDesignList", itemCode);
	}
	
	//시술등록
	@Override
	public void insertProcedurePayment(RequestProcedurePayment payment) {
		sqlSession.insert(NS+".insertProcedurePayment", payment);
		
	}
	
	//회원리스트
	@Override
	public List<ProcedurePayment> getCustomerList(String shopCode) {
		return sqlSession.selectList(NS+".getCustomerList", shopCode);
	}
	//전체카운터?
	@Override
	public int selectTotalCount(RequestPageHelper pageHelper) {
		
		return sqlSession.selectOne(NS+".selectTotalCount", pageHelper);
	}
	
	//시술내역리스트 
	@Override
	public List<ProcedurePayment> getPayMentList(Map<String, Object> map) {
		return sqlSession.selectList(NS+".getPaymentList", map);
	}
	
	//시술수정
	@Override
	public void modifyProcedurePayment(RequestProcedurePayment payment) {
		sqlSession.update(NS+".modifyProcedurePayment", payment);
	}
	
	//시술셀렉
	@Override
	public RequestProcedurePayment selectProcedurePayment(String paymentCode) {
		return sqlSession.selectOne(NS+".selectProcedurePayment", paymentCode);
	}
	
	//시술삭제
	@Override
	public void deleteProcedurePayment(String paymentCode) {
		sqlSession.delete(NS+".deleteProcedurePayment", paymentCode);
	}

	
	
	
	

}
