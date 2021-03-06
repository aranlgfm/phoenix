package com.cafe24.phoenixooo.community.Service;

import java.util.Map;

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
	 * (서비스) 디자이너 추가정보 입력 시 미용실정보 가져오기
	 */
	UserDirector selectUserDirectorList(UserDesigner user);
	
	/**
	 * (서비스) 아이디 찾기 
	 * @param user
	 * @return
	 */
	String findingId(UserCustomer user);
	
	/**
	 * (서비스) 비번찾기
	 * @param user
	 * @return
	 */
	String findingPw(UserCustomer user);
	
	/**
	 * (서비스) 로그인
	 * @param user(rf)
	 * @return
	 */
	UserCustomer login(UserCustomer user);
	
	
	/**
	 * (서비스) 회원정보 셀렉(수정용)
	 * @param user(rf)
	 * @return
	 */
	UserCustomer modifySelect(UserCustomer user);
	
	/**
	 * (서비스) 회원정보 수정
	 * @param user
	 * @return
	 */
	Map<String, Object> modifyUpdate(UserCustomer user);
	
	/**
	 * (서비스) 회원탈퇴
	 * @param user
	 * @return
	 */
	int deleteUser(UserCustomer user);
	
	UserCustomer loginToCrm(UserCustomer user);
	
	/**
	 * JSON 아이디 유효성
	 * @param userId
	 * @return
	 */
	int checkUserId(String userId);
}
