package com.cafe24.phoenixooo.crm.businessManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Repository.ProcedureDao;

@Service
public class ProcedureServiceImpl implements ProcedureService{
	@Autowired
	ProcedureDao dao;
	
	/**
	 * 아이템코드에 대한 아이템디자인 리스트
	 */
	@Override
	public List<ProcedureItemDesign> selectItemDesignList(String itemCode) {
		return dao.selectItemDesignList(itemCode); 
	}
	
	

}
