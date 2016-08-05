package com.cafe24.phoenixooo.crm.businessManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.CustomerManagement.Model.CrmCustomer;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.RequestProcedurePayment;

@Repository
public class ProcedureDaoImpl implements ProcedureDao{
	private final String NS = "com.cafe24.phoenixooo.crm.businessManagement.Repository.ProcedureMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//디자인리스트
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
	public List<CrmCustomer> getCustomerList(String shopCode) {
		return sqlSession.selectList(NS+".getCustomerList", shopCode);
	}
	
	
	

}
