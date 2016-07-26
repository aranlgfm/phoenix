package com.cafe24.phoenixooo.community.cRepository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.dModel.UserCustomer;

@Repository
public class UserManagementDaoImpl implements UserManagementDao {
	private final String NS = "com.cafe24.phoenixooo.community.cRepository.UserManagementMapper";
	
	@Autowired
	private DaoHelper helper;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertUser(UserCustomer user) {
		System.out.println("DAO여");
		return sqlSession.insert(NS+".insertUser",user);
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
