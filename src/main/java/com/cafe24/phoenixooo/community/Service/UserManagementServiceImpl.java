package com.cafe24.phoenixooo.community.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDirector;
import com.cafe24.phoenixooo.community.Repository.UserManagementDao;

@Service
public class UserManagementServiceImpl implements UserManagementService {
	@Autowired
	private UserManagementDao userDao;
	
	/**
	 * 기본회원가입
	 */
	@Override
	public int insertUser(UserCustomer user) {
		//유저코드 세팅
		user.setUserCode(userDao.getUserCode());
		if(user.getUserGroupName().equals("director")){
			user.setUserGroupName("미용실원장");
		}else if(user.getUserGroupName().equals("designer")){
			user.setUserGroupName("디자이너");
		}else {
			user.setUserGroupName("회원");	
		}
		return userDao.insertUser(user);
	}
	
	@Override
	public int insertDirector(UserDirector user) {
		return userDao.insertDirector(user);
	}
	
}
