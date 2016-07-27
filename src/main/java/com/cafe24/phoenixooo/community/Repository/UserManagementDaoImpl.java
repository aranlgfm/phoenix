package com.cafe24.phoenixooo.community.Repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDesigner;
import com.cafe24.phoenixooo.community.Model.UserDirector;

@Repository
public class UserManagementDaoImpl implements UserManagementDao {
	private final String NS = "com.cafe24.phoenixooo.community.Repository.UserManagementMapper";
	
	@Autowired
	private DaoHelper helper;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * 기본회원가입
	 */
	@Override
	public int insertUser(UserCustomer user) {
		return sqlSession.insert(NS+".insertUser",user);
	}
	
	/**
	 * 미용실 추가입력
	 */
	@Override
	public int insertDirector(UserDirector user){
		return sqlSession.insert(NS+".insertDirector",user); 
	}
	
	/**
	 * 디자이너 추가입력
	 */
	@Override
	public int insertDesigner(UserDesigner user){
		return sqlSession.update(NS+".insertDesigner",user);
	}
	
	/**
	 * USERCODE 증가 메서드
	 */

	@Override
	public String getUserCode() {
		String result = sqlSession.selectOne(NS+".getUserCode");
		int rs = (int)Integer.parseInt(result.substring(helper.getUSERCODE().length()));
		rs++;
		result = helper.getUSERCODE()+rs;
		return result;
	}
	
	/**
	 * SHOPCODE 증가 메서드
	 */
	@Override
	public String getShopCode() {
		String result = sqlSession.selectOne(NS+".getShopCode");
		int rs = (int)Integer.parseInt(result.substring(helper.getSHOPCODE().length()));
		rs++;
		result = helper.getSHOPCODE()+rs;
		return result;
	}
	
	/**
	 * 아이디찾기 메서드
	 */
	@Override
	public String findingId(UserCustomer user) {
		return sqlSession.selectOne(NS+".findingId",user);
	}

	
	
	
}
