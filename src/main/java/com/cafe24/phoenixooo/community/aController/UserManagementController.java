package com.cafe24.phoenixooo.community.aController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.community.bService.UserManagementService;
import com.cafe24.phoenixooo.community.dModel.UserCustomer;
import com.cafe24.phoenixooo.community.dModel.UserDirector;

/**
 * 1.회원가입약관  
 * 2.커뮤니티 로그인 
 * 3.일반고객 가입화면 - 분기함.
 * 4.디자이너 가입화면
 * 5.미용실원장 가입화면
 * 6.아이디 찾기 
 * 7.비번 찾기 
 * 8.회원수정
 * 9.회원탈퇴
 */

@Controller
public class UserManagementController {
	@Autowired
	private UserManagementService userService;
	
	/**
	 * 1. 회원가입약관 화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/form/terms", method = RequestMethod.GET)
	public String comFormTerms() {
		return "/phoenix/com/terms";
	}

	/**
	 * 2. 커뮤니티 로그인 화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/form/login", method = RequestMethod.GET)
	public String comFormLogin() {
		return "/phoenix/com/login";
	}
	
	/**
	 * 2. 커뮤니티 로그인 처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/login", method = RequestMethod.GET)
	public String comProcessLogin() {
	return "/phoenix";
	}
	
	/**
	 * 3. 커뮤니티 일반고객 가입화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/form/joiningAsCustomer", method = RequestMethod.GET)
	public String comFormJoiningAsCustomer(@RequestParam(value="group") String word, Model model) {
		model.addAttribute("group", word);
		System.out.println(word);
		System.out.println("안녕 가입화면이야");
		return "/phoenix/com/joiningAsCustomer";
	}
	
	
	/**
	 * 3. 커뮤니티 일반고객 가입처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/joiningAsCustomer", method = RequestMethod.POST)
	public String comProcessJoiningAsCustomer(UserCustomer user) {
		System.out.println("안녕...처리화면이야");
		System.out.println(user);
		userService.insertUser(user);
		String url = null;
		System.out.println("가입처리 이 ㅅ.");
		System.out.println(user.getUserGroupName());
		if(user.getUserGroupName().equals("미용실원장")){
			url = "/phoenix/com/joiningAsDirector";
		}else if(user.getUserGroupName().equals("디자이너")){
			url = "/phoenix/com/joiningAsDesigner";
		}else{
			url = "/phoenix";
		}
		return url;
	}
	
	/**
	 * 4.커뮤니티 디자이너 가입처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/joiningAsDesigner", method = RequestMethod.POST)
	public String comProcessJoiningAsDesigner() {
		
		return "/phoenix";
	}
	
	/**
	 * 5.커뮤니티 미용실원장 가입처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/joiningAsDirector", method = RequestMethod.POST)
	public String comFormJoiningAsDirector() {
		//System.out.println(user.getShopName());
		//System.out.println(user.getBusinessNumber());
		return "/phoenix/com/joiningAsDirector";
		//return "/phoenix";
	}
	
	/**
	 * 6.커뮤니티 아이디찾기 화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/form/findingId", method = RequestMethod.GET)
	public String comFormFindingId() {
		return "/phoenix/com/findingId";
	}
	
	/**
	 * 6.커뮤니티 아이디찾기 처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/findingId", method = RequestMethod.GET)
	public String comProcessFindingId() {
		return "/phoenix/com/login";
	}
	
	/**
	 * 7.커뮤니티 비번찾기 화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/form/findingPw", method = RequestMethod.GET)
	public String comFormFindingPw() {
	return "/phoenix/com/findingPw";
	}
	
	/**
	 * 7.커뮤니티 비번찾기 처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/findingPw", method = RequestMethod.GET)
	public String comProcessFindingPw() {
	return "/phoenix/com/login";
	}

	/**
	 * 8.커뮤니티 회원정보수정 화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/form/userModification", method = RequestMethod.GET)
	public String comFormUserModification() {
	return "/phoenix/com/userModification";
	}
	
	/**
	 * 8.커뮤니티 회원정보수정 처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/modifyUser", method = RequestMethod.GET)
	public String comProcessModifyUser() {
	return "/phoenix";
	}
	
	
	/**
	 * 9.커뮤니티 회원탈퇴신청 화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/form/userWithdrawal", method = RequestMethod.GET)
	public String comFormUserWithdrawal() {
	return "/phoenix/com/userWithdrawal";
	}

	/**
	 * 9.커뮤니티 회원탈퇴 처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/withdraw", method = RequestMethod.GET)
	public String comProcessWithdraw() {
	return "/phoenix/com/userWithdrawalGoodbye";
	}
	
	
	
}
