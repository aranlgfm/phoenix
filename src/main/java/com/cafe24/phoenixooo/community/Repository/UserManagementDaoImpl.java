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
	 * (DAO구현)기본회원가입
	 */
	@Override
	public int insertUser(UserCustomer user) {
		return sqlSession.insert(NS+".insertUser",user);
	}
	
	/**
	 * (DAO구현)미용실 추가입력
	 */
	@Override
	public int insertDirector(UserDirector user){
		return sqlSession.insert(NS+".insertDirector",user); 
	}
	
	/**
	 * (DAO구현)디자이너 추가입력
	 */
	@Override
	public int insertDesigner(UserDesigner user){
		return sqlSession.update(NS+".insertDesigner",user);
	}
	
	/**
	 * (DAO구현)디자이너 추가입력시 미용실정보 가져오기
	 */
	@Override
	public UserDirector selectUserDirectorList(UserDesigner user) {
		return sqlSession.selectOne(NS+".selectUserDirectorList", user);
	}
	
	/**
	 * (DAO구현)USERCODE 증가 메서드
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
	 * (DAO구현)SHOPCODE 증가 메서드
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
	 * (DAO구현)아이디찾기 메서드
	 */
	@Override
	public String finding(UserCustomer user) {
		return sqlSession.selectOne(NS+".finding",user);
	}
	
	/**
	 * (DAO구현)비번찾기 메서드
	 */
	@Override
	public String findingPw(UserCustomer user) {
		return sqlSession.selectOne(NS+".findingId",user);
	}
	
	/**
	 * (DAO구현)로그인 메서드
	 */
	@Override
	public UserCustomer login(UserCustomer user) {
		return sqlSession.selectOne(NS+".login",user);
	}
	
	/**
	 * (DAO구현)회원정보 셀렉(회원정보 수정용)
	 */
	@Override
	public UserCustomer modifySelect(UserCustomer user) {
		return sqlSession.selectOne(NS+".modifyInfoSelect",user);
	}

	/**
	 * (DAO구현)회원정보 수정
	 */
	@Override
	public int modifyUpdate(UserCustomer user) {
		return sqlSession.update(NS+".modifyInfoUpdate",user);
	}
	
	/**
	 * (DAO구현)미용실 삭제
	 */
	@Override
	public int userDrawalForShop(UserCustomer user) {
		System.out.println("(DAO구현)미용실 삭제");
		sqlSession.delete(NS+".userDrawalForShop",user);
		return 0;
	}
	
	/**
	 * (DAO구현)회원 삭제
	 */
	@Override
	public int userDrawal(UserCustomer user) {
		System.out.println("(DAO구현)미용실 삭제");
		sqlSession.delete(NS+".userDrawal",user);
		return 0;
	}
	
	
	@Override
	public UserCustomer loginToCrm(UserCustomer user) {
		return sqlSession.selectOne(NS+".loginToCrm", user);
	}
	
	/**
	 * JSON 유효성검사
	 * @param userId
	 * @return
	 */
	@Override
	public int checkUserId(String userId) {
		return sqlSession.selectOne(NS+".checkUserId", userId);
	}

}
