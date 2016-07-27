package com.cafe24.phoenixooo.community.Service;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDirector;

public interface UserManagementService {
	/**
	 * 일반회원 가입 및 공통회원가입
	 * @param user
	 * @return
	 */
	int insertUser(UserCustomer user);
	/**
	 * 미용실회원 추가정보 
	 * @param user
	 * @return
	 */
	int insertDirector(UserDirector user);
}
