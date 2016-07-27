package com.cafe24.phoenixooo.community.Service;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDesigner;
import com.cafe24.phoenixooo.community.Model.UserDirector;

public interface UserManagementService {
	/**
	 * (서비스) 일반회원 가입 및 공통회원가입
	 * @param user
	 * @return
	 */
	String insertUser(UserCustomer user);
	/**
	 * (서비스) 미용실회원 추가정보 
	 * @param user
	 * @return
	 */
	int insertDirector(UserDirector user);
	
	/**
	 * (서비스) 디자이너 회원 추가정보
	 * @param user
	 * @return
	 */
	int insertDesigner(UserDesigner user);
	
	/**
	 * (서비스) 아이디 찾기 
	 * @param user
	 * @return
	 */
	int findingId(UserCustomer user);
}
