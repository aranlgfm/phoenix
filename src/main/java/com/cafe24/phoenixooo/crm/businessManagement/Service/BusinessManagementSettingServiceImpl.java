package com.cafe24.phoenixooo.crm.businessManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItemDesign;
import com.cafe24.phoenixooo.crm.businessManagement.Model.ProcedureItem;
import com.cafe24.phoenixooo.crm.businessManagement.Repository.BusinessManagementSettingDao;

@Service
public class BusinessManagementSettingServiceImpl implements BusinessManagementSettingService{
	@Autowired
	private BusinessManagementSettingDao dao;

	/**
	 * 1-1.시술품목(아이템)등록
	 * 1-2.시술품목(아이템) 리스트
	 * 2-1.시술디자인등록(품목의 상세)
	 * 
	 */
	
	
	/**
	 * 1-1. 시술품목(아이템)등록
	 * dao.getItemCode(item)에 아이템코드를 받아오고 자르고 증가시키고...으이?
	 */
	@Override
	public void insertProcedureItem(ProcedureItem item) {
		item.setItemCode(dao.getItemCode(item));
		dao.insertProcedureItem(item);
	}

	/**
	 * 1-2. 시술품목(아이템) 리스트
	 * 샾이 가지고 있는 모든 아이템 가지고 오는겅게...? 으이?
	 */
	@Override
	public List<ProcedureItem> selectItemList(String shopCode) {
		return dao.selectItemList(shopCode);
	}
	
	/**
	 * 2-1. 시술디자인등록(품목의 상세)	
	 * dao.getItemDesignCode(item)에 아이템코드를 받아오고 자르고 증가시키고...으이?
	 * 그리고 회원가입하고 으이으이?
	 */
	@Override
	public void insertProcedureItemDesign(ProcedureItemDesign item) {
		item.setItemDesignCode(dao.getItemDesignCode(item));
		dao.insertProcedureItemDesign(item);
	}

	/**
	 * 2-2.시술디자인등록 리스트
	 * 샾이 가지고 있는 모든 아이템의디자인을 가지고 와야함
	 * 그래서 CRM_ITEM_TB,CRM_ITEM_DESIGN_TB 조인해서 가져오자
	 */
	@Override
	public List<ProcedureItemDesign> selectItemDesignList(String shopCode) {
		return dao.selectItemDesignList(shopCode);
	}
	
	
	
}
