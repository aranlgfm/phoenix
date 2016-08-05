package com.cafe24.phoenixooo.crm.businessManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;

@Repository
public class ProcedureDaoImpl implements ProcedureDao{
	private final String NS = "com.cafe24.phoenixooo.crm.businessManagement.Repository.ProcedureMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ProcedureItemDesign> selectItemDesignList(String itemCode) {
		System.out.println("DAODAO");
		return sqlSession.selectList(NS+".selectItemDesignList", itemCode);
	}
	

}
