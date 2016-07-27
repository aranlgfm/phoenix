package com.cafe24.phoenixooo.community.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDesigner;
import com.cafe24.phoenixooo.community.Model.UserDirector;
import com.cafe24.phoenixooo.community.Repository.UserManagementDao;

@Service
public class UserManagementServiceImpl implements UserManagementService {
	@Autowired
	private UserManagementDao userDao;
	
	/**
	 * (서비스구현)기본회원가입
	 */
	@Override
	public String insertUser(UserCustomer user) {
		//유저코드 겟
		String userCode = userDao.getUserCode(); 
		//유저코드 세팅
		user.setUserCode(userCode);
		
		if(user.getUserGroupName().equals("director")){
			user.setUserGroupName("미용실원장");
		}else if(user.getUserGroupName().equals("designer")){
			user.setUserGroupName("디자이너");
		}else {
			user.setUserGroupName("회원");	
		}
		
		userDao.insertUser(user);
		return userCode;
	}
	
	/**
	 * (서비스구현)원장가입
	 */
	@Override
	public int insertDirector(UserDirector user) {
		user.setShopCode(userDao.getShopCode());
		return userDao.insertDirector(user);
	}

	/**
	 * (서비스구현)디자이너가입
	 */
	@Override
	public int insertDesigner(UserDesigner user) {
		userDao.insertDesigner(user);
		return 0;
	}
	
	/**
	 * (서비스구현)아이디찾기
	 * 수정중
	 */
	@Override
	public int findingId(UserCustomer user) {
		String result = userDao.finding(user);
		if(null != result && "" != result){
			System.out.println("아이디는 : '"+result+"' 입니다.");
		}else{
			System.out.println("일치하는 회원이 없습니다.");
		}
		return 0;
	}

	@Override
	public int findingPw(UserCustomer user) {
		String result = userDao.finding(user);
		if(null != result && "" != result){
			System.out.println("인증번호를 메일로 보냈습니다.");
		}else{
			System.out.println("없다.");
		}
		return 0;
	}
	
	
}
