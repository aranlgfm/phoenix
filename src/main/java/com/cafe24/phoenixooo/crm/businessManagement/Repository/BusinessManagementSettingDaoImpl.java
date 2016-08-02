package com.cafe24.phoenixooo.crm.businessManagement.Repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.Repository.DaoHelper;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;

@Repository
public class BusinessManagementSettingDaoImpl implements BusinessManagementSettingDao {
	private final String NS = "com.cafe24.phoenixooo.crm.businessManagement.Repository.BusinessManagementSettingMapper";

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private DaoHelper helper; 
	
	/**
	 * 시술품목등록 
	 * 전에 아이템코드 등록해야함
	 */
	@Override
	public void insertProcedureItem(ProcedureItem item) {
		sqlSession.insert(NS+".insertProcedureItem",item);
	}
	
	/**
	 * 시술품목의 디자인 등록
	 */
	@Override
	public void insertProcedureItemDesign(ProcedureItemDesign item) {
		sqlSession.insert(NS+".insertProcedureItemDesign",item);
	}
	
	

	/**
	 * 시술품목(아이템)코드 증가
	 */
	@Override
	public String getItemCode(ProcedureItem item) {
		String result = sqlSession.selectOne(NS+".getItemCode",item);
		System.out.println("getItemCode");
		System.out.println(result);
		int rs = (int)Integer.parseInt(result.substring(helper.getITEMCODE().length()));
		rs++;
		result = helper.getITEMCODE()+rs;
		return result;
	}
	
	/**
	 * 시술디자인(아이템세부)코드 증가
	 */
	@Override
	public String getItemDesignCode(ProcedureItemDesign item) {
		String result = sqlSession.selectOne(NS+".getItemDesignCode",item);
		System.out.println("getItemDesignCode");
		System.out.println(result);
		int rs = (int)Integer.parseInt(result.substring(helper.getITEMDESIGNCODE().length()));
		rs++;
		result = helper.getITEMDESIGNCODE()+rs;
		return result;
	}
	
	/**
	 * 시술품목(아이템) 리스트
	 */
	@Override
	public List<ProcedureItem> selectItemList(String shopCode) {
		return sqlSession.selectList(NS+".selectItemList", shopCode);
	}
	
	/**
	 * 시술디자인(아이템세부) 리스트
	 */
	@Override
	public List<ProcedureItemDesign> selectItemDesignList(String shopCode) {
		return sqlSession.selectList(NS+".selectItemDesignList", shopCode);
	}
}