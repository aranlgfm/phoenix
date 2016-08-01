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
	 * 시술품목(아이템)등록
	 * 코드 불러와서 매개변수로 받은 인스턴스에 넣어주고 다시 그 인스터스를 가지고 insert
	 */
	@Override
	public void insertProcedureItem(ProcedureItem item) {
		item.setItemCode(dao.getItemCode(item));
		dao.insertProcedureItem(item);
	}

	/**
	 * 시술디자인등록(품목의 상세)	
	 */
	@Override
	public void insertProcedureItemDesign(ProcedureItemDesign item) {
		item.setItemDesignCode(dao.getItemDesignCode(item));
		dao.insertProcedureItemDesign(item);
	}
	/**
	 * 시술품목(아이템) 리스트
	 */
	@Override
	public List<ProcedureItem> selectItemList(String shopCode) {
		return dao.selectItemList(shopCode);
	}
	
	
	
}
