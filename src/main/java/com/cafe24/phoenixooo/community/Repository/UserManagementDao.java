package com.cafe24.phoenixooo.community.Repository;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDesigner;
import com.cafe24.phoenixooo.community.Model.UserDirector;

public interface UserManagementDao {
	/**
	 * (DAO)일반고객 회원가입
	 * @param user
	 * @return
	 */
	int insertUser(UserCustomer user);
	
	/**
	 * (DAO)미용실고객 회원가입
	 * @param user
	 * @return
	 */
	int insertDirector(UserDirector user);
	
	/**
	 * (DAO)디자이너 회원가입 (미용실코드 업데이트)
	 * @param user
	 * @return
	 */
	int insertDesigner(UserDesigner user);
	
	/**
	 * (DAO)회원가입시 primary키값 증가
	 * @return
	 */
	String getUserCode();
	
	/**
	 * (DAO)추가정보 등록시 미용실코드값 증가
	 * @return
	 */
	String getShopCode();
	
	/**
	 * (DAO)아이디 찾기
	 * @param user
	 * @return
	 */
	String finding(UserCustomer user);
	
	/**
	 * (DAO)비번찾기
	 * @param user
	 * @return
	 */
	String findingPw(UserCustomer user);
	
	/**
	 * (DAO)로그인
	 * @param user(rf)
	 * @return
	 */
	UserCustomer login(UserCustomer user);
	
	/**
	 * (DAO)회원정보 불러오기
	 * @param user(rf)
	 * @return
	 */
	UserCustomer modifySelect(UserCustomer user);
	
	/**
	 * (DAO)회원정보 수정
	 * @param user(rf)
	 * @return
	 */
	int modifyUpdate(UserCustomer user);
	
	//userDrawalForShop,userDrawal
	/**
	 * (DAO)미용실()삭제
	 * @param user
	 * @return
	 */
	int userDrawalForShop(UserCustomer user);
	
	/**
	 * (DAO)회원()삭제
	 * @param user
	 * @return
	 */
	int userDrawal(UserCustomer user);
	
	UserCustomer loginToCrm(UserCustomer user);
	
	int checkUserId(String userId);
	
}
