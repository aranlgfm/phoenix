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
	 * 1-1.시술품목(아이템) INSERT
	 * 1-2.시술품목(아이템) SELECT LIST
	 * 2-1.시술디자인(아이템 상세) INSERT
	 * 2-2.시술디자인(아이템 상세) SELECT LIST
	 * 3-1 시술품목(아이템) SELECT ONE
	 * 3-2 시술품목(아이템) UPDATE	
	 * 4-1 시술디자인(아이템세부) SELECT ONE
	 * 4-2 시술디자인(아이템세부) UPDATE
	 * 
	 */
	
	
	/**
	 * 1-1. 시술품목(아이템) INSERT
	 * dao.getItemCode(item)에 아이템코드를 받아오고 자르고 증가시키고...으이?
	 */
	@Override
	public void insertProcedureItem(ProcedureItem item) {
		item.setItemCode(dao.getItemCode(item));
		dao.insertProcedureItem(item);
	}

	/**
	 * 1-2. 시술품목(아이템) SELECT LIST
	 * 샾이 가지고 있는 모든 아이템 가지고 오는겅게...? 으이?
	 */
	@Override
	public List<ProcedureItem> selectItemList(String shopCode) {
		return dao.selectItemList(shopCode);
	}

	
	
	/**
	 * 2-1. 시술디자인(아이템 상세)	 INSERT
	 * dao.getItemDesignCode(item)에 아이템코드를 받아오고 자르고 증가시키고...으이?
	 * 그리고 회원가입하고 으이으이?
	 */
	@Override
	public void insertProcedureItemDesign(ProcedureItemDesign item) {
		item.setItemDesignCode(dao.getItemDesignCode(item));
		dao.insertProcedureItemDesign(item);
	}

	/**
	 * 2-2.시술디자인 SELECT LIST
	 * 샾이 가지고 있는 모든 아이템의디자인을 가지고 와야함
	 * 그래서 CRM_ITEM_TB,CRM_ITEM_DESIGN_TB 조인해서 가져오자
	 */
	@Override
	public List<ProcedureItemDesign> selectItemDesignList(String shopCode) {
		return dao.selectItemDesignList(shopCode);
	}

	
	
	/**
	 * 3-1 시술품목(아이템) SELECT ONE
	 */
	@Override
	public ProcedureItem selectItem(String ItemCode) {
		return	dao.selectItem(ItemCode);
	}
	
	/**
	 * 3-2 시술품목(아이템) UPDATE	
	 */
	@Override
	public void modifyItem(ProcedureItem item) {
		dao.modifyItem(item);
	}

	
	
	/**
	 * 4-1 시술디자인(아이템세부) SELECT ONE
	 */
	@Override
	public ProcedureItemDesign selectItemDesign(String ItemDesignCode) {
		return	dao.selectItemDesign(ItemDesignCode);
	}
	
	/**
	 * 4-2 시술디자인(아이템세부) UPDATE
	 */
	@Override
	public void modifyItemDesign(ProcedureItemDesign item) {
		dao.modifyItemDesign(item);
	}
	
	
}
