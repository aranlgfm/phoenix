<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/userModification</title>
</head>
<body>

<h1>
	회원정보수정
</h1>

<div>
	<form action="/phoenix/com/process/modifyUser" method="POST">
	<input type="text" name="userCode" size="12"  value="${sessionScope.user.userCode}"/>
	<table>
		<tr>
			<th>Filed</th>
			<th>Input</th>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="userId" size="12" readonly="readonly" value="${user.userId}"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="userPw" size="12"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="userName" size="12" readonly="readonly" value="${user.userName}"/></td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td><input type="text" name="userNickName" size="12" value="${user.userNickName}"/></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<c:choose>
					<c:when test="${user.userSexFlag == 0}">
						<input type="radio" name="userSexFlag" value="male" disabled="disabled"/>남	
						<input type="radio" name="userSexFlag" value="female" disabled="disabled" checked="checked"/>여	
					</c:when>
					<c:otherwise>
						<input type="radio" name="userSexFlag" value="male" disabled="disabled" checked="checked"/>남
						<input type="radio" name="userSexFlag" value="female" disabled="disabled"/>여	
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
		<tr>
				<td><hr/></td>
				<td><hr/></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="userPostNumber" size="7" value="${user.userPostNumber}"/></td>
			</tr>
			<tr>
				<td>상세주소</td>
				<td><input type="text" name="userAddress" value="${user.userAddress}"/></td>
			</tr>
			<tr>
				<td>집전화번호</td><!-- userPhoneNumber -->
				<td><input type="text" size="5" name="userPhoneNumber" value="${user.userPhoneNumber}"/>-<input type="text" size="5"/>-<input type="text" size="5"/></td>
			</tr>
			<tr>
				<td>핸드폰번호</td><!-- userCellphoneNumber -->
				<td><input type="text" size="5" name="userCellphoneNumber" value="${user.userCellphoneNumber}"/>-<input type="text" size="5"/>-<input type="text" size="5"/></td>
			</tr>
			<tr>
				<td>* 이메일</td>
				<td><input type="text" size="12" name="userEmailAddress" value="${user.userEmailAddress}"/>@<input type="text" size="12"/>
				<select>
					<option>::선 택::</option>
					<option>gmail.com</option>
					<option>naver.com</option>
					<option>daum.net</option>
					<option>yahoo.co.kr</option>
					<option>nate.com</option>
					<option>cafe24.com</option>
					<option>ksmart.org</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>생년월일</td><!-- userBirthdayDate -->
				<td><input type="text" size="4" name="userBirthdayDate" value="${user.userBirthdayDate}">년
					<input type="text" size="4"/>월<input type="text" size="4"/>일
					<input type="radio" name="asdf" value="sun"/>양력
					<input type="radio" name="asdf" value="moon"/>음력
				</td>
			</tr>
			<tr>
				<td>기념일</td><!-- userAnniversaryDate -->
				<td><input type="text" size="4" name="userAnniversaryDate"  value="${user.userAnniversaryDate}"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
				</td>
			</tr>
			<tr>
				<td>자기소개</td><!-- userBirthdayDate -->
				<td>
					<textarea cols="70" rows="5" name="userIntroduceContent">${user.userIntroduceContent}</textarea>
				</td>
			</tr>
	</table>
	<div>
		<input type="submit" value="수정"/>
		<a href="/phoenix"><input type="button" value="취소"/></a>
	</div>
	</form>

</div>


</body>
</html>