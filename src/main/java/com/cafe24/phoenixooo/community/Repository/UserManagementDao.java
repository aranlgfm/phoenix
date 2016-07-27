package com.cafe24.phoenixooo.community.Repository;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDirector;

public interface UserManagementDao {
	/**
	 * 일반고객 회원가입
	 * @param user
	 * @return
	 */
	int insertUser(UserCustomer user);
	/**
	 * 미용실고객 회원가입
	 * @param user
	 * @return
	 */
	int insertDirector(UserDirector user);
	/**
	 * 회원가입시 primary키값 증가
	 * @return
	 */
	String getUserCode();
}
