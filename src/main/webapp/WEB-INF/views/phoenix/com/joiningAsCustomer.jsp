<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/phoenix/com/form/joiningAsCustomer</title>
</head>
<body>
<h1>
	회원가입
</h1>
<div>
	<form action="/phoenix/com/process/joiningAsCustomer" method="POST">
		<input type="hidden" name="userGroupName" value="${group}"/>
		<table>
			<tr>
				<th>Filed</th>
				<th>Input</th>
			</tr>
			<tr>
				<td>* 아이디</td>
				<td><input type="text" name="userId" size="12"/></td>
			</tr>
			<tr>
				<td>* 비밀번호</td>
				<td><input type="password" name="userPw" size="12"/></td>
			</tr>
			<tr>
				<td>* 비밀번호확인</td>
				<td><input type="password" size="12"/></td>
			</tr>
			<tr>
				<td>* 이름</td>
				<td><input type="text" name="userName" size="12"/></td>
			</tr>
			<tr>
				<td>* 닉네임</td>
				<td><input type="text" name="userNickName" size="12"/></td>
			</tr>
			<tr>
				<td>* 성별</td>
				<td><input type="radio" name="userSexFlag" value="0"/>남
					<input type="radio" name="userSexFlag" value="1"/>여
				</td>
			</tr>
			
			<tr>
				<td><hr/></td>
				<td><hr/></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="userPostNumber" size="7"/></td>
			</tr>
			<tr>
				<td>상세주소</td>
				<td><input type="text" name="userAddress"/></td>
			</tr>
			<tr>
				<td>집전화번호</td><!-- userPhoneNumber -->
				<td><input type="text" size="5"/>-<input type="text" size="5"/>-<input type="text" size="5"/></td>
			</tr>
			<tr>
				<td>핸드폰번호</td><!-- userCellphoneNumber -->
				<td><input type="text" size="5"/>-<input type="text" size="5"/>-<input type="text" size="5"/></td>
			</tr>
			<tr>
				<td>* 이메일</td>
				<td><input type="text" name="userEmailAddress" size="12"/>@<input type="text" size="12"/>
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
				<td><input type="text" size="4"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
					<input type="radio" name="asdf" value="sun"/>양력
					<input type="radio" name="asdf" value="moon"/>음력
				</td>
			</tr>
			<tr>
				<td>기념일</td><!-- userAnniversaryDate -->
				<td><input type="text" size="4"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
				</td>
			</tr>
			<tr>
				<td>자기소개</td><!-- userBirthdayDate -->
				<td><textarea cols="70" rows="5">입력해라...귀찮아도...</textarea></td>
			</tr>
			
			<!-- 디자이너 분기 -->
				<c:if test="${group eq 'designer'}">
					<tr>
						<td><hr/></td>
						<td><hr/></td>
					</tr>
					<tr>
						<td>미용실코드</td>
						<td><input type="text" size="12"/></td>
					</tr>
					<tr>
						<td>미용실 명</td>
						<td><input type="text" size="12" readonly="readonly"/></td>
					</tr>
					<tr>
						<td>우편번호</td>
						<td><input type="text" size="7" readonly="readonly"/></td>
					</tr>
					<tr>
						<td>상세주소</td>
						<td><input type="text" readonly="readonly"/></td>
					</tr>
				</c:if>
				
				<c:if test="${group eq 'director'}">
							<!-- 미용실 분기 -->
					<tr>
						<td><hr/></td>
						<td><hr/></td>
					</tr>
					<tr>
						<td>* 미용실 명</td>
						<td><input type="text" size="12"/></td>
					</tr>
					<tr>
						<td>* 우편번호</td>
						<td><input type="text" size="7"/></td>
					</tr>
					<tr>
						<td>* 상세주소</td>
						<td><input type="text"/></td>
					</tr>
					<tr>
						<td>* 사업자번호</td>
						<td><input type="text" size="5"/>-<input type="text" size="5"/>-<input type="text" size="5"/></td>
					</tr>
					<tr>
						<td>미용실소개</td>
						<td><textarea cols="70" rows="5">입력해라...귀찮아도...</textarea></td>
					</tr>
				</c:if>	
		</table>
	<input type="submit" value="확인"/>
	<a href="/phoenix/com/form/terms"><input type="button" value="취소"/></a>
	</form>
	<!-- 여기도 확인버튼 분기시켜야함. 디자이너나 원장이 가입하면 요청이 달라야함. 페이지 다름. -->
</div>

</body>
</html>