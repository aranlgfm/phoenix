package com.cafe24.phoenixooo.community.bService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.cRepository.UserManagementDao;
import com.cafe24.phoenixooo.community.dModel.UserCustomer;

@Service
public class UserManagementServiceImpl implements UserManagementService {
	@Autowired
	private UserManagementDao userDao;
	
	/**
	 * 회원가입 서비스
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
}
