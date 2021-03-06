package com.cafe24.phoenixooo.community.Model;
/**
 * User의 DTO입니다.
 * 알아서 하세요.
 * @author 201-24
 *
 */

public class UserCustomer {
	
	/*
	 * 
	 * 회원가입 Userjoin
	회원정보수정 Usermodify
	아이디찾기 UserfindId
	비번찾기 UserfindPw
	*
	*/
	
	private String userCode;
	private String userGroupName;
	private String userJoinDate; // 여기까지 
	
	private String shopCode;
	private String userId;
	private String userPw;
	private String userName;
	private String userNickName;
	private int userSexFlag;
	private String userAnniversaryDate;
	private String userBirthdayDate;
	private String userAddress;
	private String userPostNumber;
	private String userEmailAddress;
	private String userPhoneNumber;
	private String userCellphoneNumber;
	private String userIntroduceContent;
	
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserGroupName() {
		return userGroupName;
	}
	public void setUserGroupName(String userGroupName) {
		this.userGroupName = userGroupName;
	}
	public String getUserJoinDate() {
		return userJoinDate;
	}
	public void setUserJoinDate(String userJoinDate) {
		this.userJoinDate = userJoinDate;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public int getUserSexFlag() {
		return userSexFlag;
	}
	public void setUserSexFlag(int userSexFlag) {
		this.userSexFlag = userSexFlag;
	}
	public String getUserAnniversaryDate() {
		return userAnniversaryDate;
	}
	public void setUserAnniversaryDate(String userAnniversaryDate) {
		if(userAnniversaryDate.equals("")){
			this.userAnniversaryDate = null;
		}else{
			this.userAnniversaryDate = userAnniversaryDate;
		}
	}
	public String getUserBirthdayDate() {
		return userBirthdayDate;
	}
	public void setUserBirthdayDate(String userBirthdayDate) {
		if(userBirthdayDate.equals("")){
			this.userBirthdayDate = null;
		}else{
			this.userBirthdayDate = userBirthdayDate;
		}
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserPostNumber() {
		return userPostNumber;
	}
	
	public void setUserPostNumber(String userPostNumber) {
		if(userPostNumber.length() < 3){
			this.userPostNumber = null;
		}else{
			this.userPostNumber = userPostNumber;
		}
	}
	
	public String getUserEmailAddress() {
		return userEmailAddress;
	}
	public void setUserEmailAddress(String userEmailAddress) {
		this.userEmailAddress = userEmailAddress;
	}
	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}
	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}
	public String getUserCellphoneNumber() {
		return userCellphoneNumber;
	}
	public void setUserCellphoneNumber(String userCellphoneNumber) {
		this.userCellphoneNumber = userCellphoneNumber;
	}
	public String getUserIntroduceContent() {
		return userIntroduceContent;
	}
	public void setUserIntroduceContent(String userIntroduceContent) {
		this.userIntroduceContent = userIntroduceContent;
	}
	
	@Override
	public String toString() {
		return "UserCustomer [userCode=" + userCode + ", userGroupName=" + userGroupName + ", userJoinDate="
				+ userJoinDate + ", shopCode=" + shopCode + ", userId=" + userId + ", userPw=" + userPw + ", userName="
				+ userName + ", userNickName=" + userNickName + ", userSexFlag=" + userSexFlag
				+ ", userAnniversaryDate=" + userAnniversaryDate + ", userBirthdayDate=" + userBirthdayDate
				+ ", userAddress=" + userAddress + ", userPostNumber=" + userPostNumber + ", userEmailAddress="
				+ userEmailAddress + ", userPhoneNumber=" + userPhoneNumber + ", userCellphoneNumber="
				+ userCellphoneNumber + ", userIntroduceContent=" + userIntroduceContent + "]";
	}
}
