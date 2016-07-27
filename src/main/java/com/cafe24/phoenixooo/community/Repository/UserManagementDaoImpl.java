package com.cafe24.phoenixooo.community.Repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDirector;

@Repository
public class UserManagementDaoImpl implements UserManagementDao {
	private final String NS = "com.cafe24.phoenixooo.community.Repository.UserManagementMapper";
	
	@Autowired
	private DaoHelper helper;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertUser(UserCustomer user) {
		System.out.println("DAO여");
		return sqlSession.insert(NS+".insertUser",user);
	}
	
	@Override
	public int insertDirector(UserDirector user){
		System.out.println("Director");
		return sqlSession.insert(NS+".insertDirector",user); 
	}
	
	/**
	 * USERCODE 구하는 메서드
	 */
	@Override
	public String getUserCode() {
		System.out.println("겟유저코드야!");
		String result = sqlSession.selectOne(NS+".getUserCode");
		System.out.println("겟유저코드"+result);
		System.out.println(result.length());
		System.out.println(helper.getUSERCODE().length());
		int rs = (int)Integer.parseInt(result.substring(helper.getUSERCODE().length()));
		rs++;
		result = helper.getUSERCODE()+rs;
		return result;
	}
	
	
	
}
