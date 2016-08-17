package com.cafe24.phoenixooo.community.Service;

import java.util.HashMap;
import java.util.Map;

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
		
		//유저 개인정보 입력하지 않으면 공백으로 해줌.
		if(user.getUserIntroduceContent() == null){
			user.setUserIntroduceContent("");
		}
		
		userDao.insertUser(user);
		return userCode;
	}
	
	/**
	 * (서비스구현)원장가입
	 */
	@Override
	public int insertDirector(UserDirector user) {
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
	 * (서비스) 디자이너 추가정보 입력 시 미용실정보 가져오기
	 */
	@Override
	public UserDirector selectUserDirectorList(UserDesigner user) {
		return userDao.selectUserDirectorList(user);
	}
	
	/**
	 * (서비스구현)아이디찾기
	 * 수정중
	 */
	@Override
	public String findingId(UserCustomer user) {
		return userDao.finding(user);
	}
	
	/**
	 * (서비스구현)비번찾기
	 */
	@Override
	public String findingPw(UserCustomer user) {
		return userDao.finding(user);
	}
	
	/**
	 * (서비스구현) 로그인
	 */
	@Override
	public UserCustomer login(UserCustomer user) {
		return userDao.login(user);
	}
	
	
	/**
	 * (서비스구현) 회원정보셀렉(수정용)
	 */
	@Override
	public UserCustomer modifySelect(UserCustomer user) {
		return userDao.modifySelect(user);
	}
	
	/**
	 * (서비스구현) 회원정보수정
	 */
	@Override
	public Map<String, Object> modifyUpdate(UserCustomer user) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		int result = userDao.modifyUpdate(user);
		UserCustomer userCustomer = userDao.modifySelect(user);
		map.put("userCustomer", userCustomer);
		map.put("result", result);
		return map; 
	}
	
	/**
	 * (서비스구현) 회원탈퇴
	 */
	@Override
	public int deleteUser(UserCustomer user) {
		userDao.userDrawalForShop(user);
		return userDao.userDrawal(user);
	}
	
	@Override
	public UserCustomer loginToCrm(UserCustomer user) {
		// TODO Auto-generated method stub
		return userDao.loginToCrm(user);
	}
	
	/**
	 * JSON 유효성
	 */
	@Override
	public int checkUserId(String userId) {
		return userDao.checkUserId(userId);	
	}

}
