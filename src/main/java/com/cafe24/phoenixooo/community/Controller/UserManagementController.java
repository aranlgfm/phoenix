package com.cafe24.phoenixooo.community.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDesigner;
import com.cafe24.phoenixooo.community.Model.UserDirector;
import com.cafe24.phoenixooo.community.Service.UserManagementService;

/**
 * 1.회원가입약관  
 * 2.커뮤니티 로그인 
 * 3.일반고객 가입화면 - 분기(디자이너,원장).
 * 4.디자이너 가입
 * 5.미용실원장 가입
 
 * 6.아이디 찾기 
 * 7.비번 찾기 
 * 8.회원수정
 * 9.회원탈퇴
 * 10.CRM 로그인
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
	@RequestMapping(value = "/phoenix/com/process/login", method = RequestMethod.POST)
	public String comProcessLogin(HttpSession session, UserCustomer user) {
		String pageUrl;
		
		//로그인 취소시에도 세션에 false값 저장되어있어서 힘듭니다.
		
		if(userService.login(user) != null){
			session.setAttribute("user", userService.login(user));
			pageUrl = "/phoenix";
		}else{
			session.setAttribute("user", "false");
			pageUrl = "/phoenix/com/login";
		}
		return pageUrl;
	}
	
	/**
	 * 2. 커뮤니티 로그아웃 처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/logout", method = RequestMethod.GET)
	public String comProcessLogout(HttpSession session) {
		session.invalidate();
		return "/phoenix";
	}
	
	
	/**
	 * 3. 커뮤니티 일반고객 가입화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/form/joiningAsCustomer", method = RequestMethod.GET)
	public String comFormJoiningAsCustomer(@RequestParam(value="group") String word, Model model) {
		model.addAttribute("group", word);
		return "/phoenix/com/joiningAsCustomer";
	}
	
	
	/**
	 * 3. 커뮤니티 일반고객 가입처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/joiningAsCustomer", method = RequestMethod.POST)
	public String comProcessJoiningAsCustomer(UserCustomer user,Model model) {
		String result = null; 
		String url = null;
		result = userService.insertUser(user);
		
		if(user.getUserGroupName().equals("미용실원장")){
			model.addAttribute("userCode",result);
			url = "/phoenix/com/joiningAsDirector";
		}else if(user.getUserGroupName().equals("디자이너")){
			model.addAttribute("userCode",result);
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
	public String comProcessJoiningAsDesigner(UserDesigner user) {
		userService.insertDesigner(user);
		return "/phoenix";
	}
	
	/**
	 * 5.커뮤니티 미용실원장 가입처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/joiningAsDirector", method = RequestMethod.POST)
	public String comFormJoiningAsDirector(UserDirector user) {
		userService.insertDirector(user);
		return "/phoenix";
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
	@RequestMapping(value = "/phoenix/com/process/findingId", method = RequestMethod.POST)
	public String comProcessFindingId(UserCustomer user) {
		userService.findingId(user);
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
	@RequestMapping(value = "/phoenix/com/process/findingPw", method = RequestMethod.POST)
	public String comProcessFindingPw(UserCustomer user) {
		userService.findingPw(user);
		return "/phoenix/com/test";
	}

	/**
	 * 8.커뮤니티 회원정보수정 화면
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/form/userModification", method = RequestMethod.GET)
	public String comFormUserModification(HttpSession session,Model model) {
		UserCustomer user = (UserCustomer)session.getAttribute("user");
		user = userService.modifySelect(user);
		model.addAttribute("user",user);
		return "/phoenix/com/userModification";
	}
	
	/**
	 * 8.커뮤니티 회원정보수정 처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/com/process/modifyUser", method = RequestMethod.POST)
	public String comProcessModifyUser(HttpSession session,UserCustomer user) {
		user = userService.modifyUpdate(user);
		session.setAttribute("user", user);
		return "/phoenix/com/userModification";
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
	@RequestMapping(value = "/phoenix/com/process/withdraw", method = RequestMethod.POST)
	public String comProcessWithdraw(HttpSession session,UserCustomer user) {
		userService.deleteUser(user);
		session.invalidate();
	return "/phoenix/com/userWithdrawalGoodbye";
	}
	
	/**
	 * 10.CRM 로그인 화면으로 이동
	 */
	@RequestMapping(value="/phoenix/crm/form/login", method = RequestMethod.GET)
	public String crmFormBusiness(){
		return "/phoenix/com/loginToCrm";
	}
	
	/**
	 * 10. CRM 로그인 처리
	 * @return
	 */
	@RequestMapping(value = "/phoenix/crm/process/login", method = RequestMethod.POST)
	public String crmProcessLogin(HttpSession session, UserCustomer user) {
		String pageUrl;
		
		//로그인 취소시에도 세션에 false값 저장되어있어서 힘듭니다.
		
		if(userService.login(user) != null){
			session.setAttribute("user", userService.login(user));
			pageUrl = "/phoenix/crm/crmTemp";
		}else{
			session.setAttribute("user", "false");
			pageUrl = "/phoenix/com/loginToCrm";
		}
		return pageUrl;
	}
}
