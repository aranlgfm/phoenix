package com.cafe24.phoenixooo.community.Repository;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDesigner;
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
	 * 디자이너 회원가입 (미용실코드 업데이트)
	 * @param user
	 * @return
	 */
	int insertDesigner(UserDesigner user);
	
	/**
	 * 회원가입시 primary키값 증가
	 * @return
	 */
	String getUserCode();
	
	/**
	 * 추가정보 등록시 미용실코드값 증가
	 * @return
	 */
	String getShopCode();
	
	/**
	 * 아이디 찾기
	 * @param user
	 * @return
	 */
	String findingId(UserCustomer user);
}
