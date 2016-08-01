<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="customerManagement.jsp"></c:import>

<h1>
	고객등록화면  
</h1>

	<form action="/phoenix/crm/process/insertCustomer" method="POST">
		<table>
			<tr>
				<th>Filed</th>
				<th>Input</th>
			</tr>
			<tr>
				<td>* 이름</td>
				<td><input type="text" name="customerName" size="12"/></td>
			</tr>
			<tr>
				<td>* 핸드폰번호</td>
				<td><input name="customerCellphoneNumber" type="text" size="5"/>-<input type="text" size="5"/>-<input type="text" size="5"/></td>
			</tr>
			<tr>
				<td>* 성별</td>
				<td><input type="radio" name="customerSexFlag" value="0"/>남
					<input type="radio" name="customerSexFlag" value="1"/>여
				</td>
			</tr>
			<tr>
				<td>최초방문일</td>
				<td>
					<input name="customerFirstVisitDate" type="text" size="4"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
				</td>
			</tr>
			<tr>
				<td>담당자</td>
				<td>
					<input name="employeeName" type="text"/>
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="customerBirthDate" type="text" size="4"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
					<input type="radio" name="asdf" value="sun"/>양력
					<input type="radio" name="asdf" value="moon"/>음력
				</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="customerPostNumber" size="7"/></td>
			</tr>
			<tr>
				<td>상세주소</td>
				<td><input type="text" name="customerAddress"/></td>
			</tr>
			
			<tr>
				<td>* 이메일</td>
				<td><input type="text" name="customerEmailAddress" size="12"/>@<input type="text" size="12"/>
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
				<td>기념일</td><!-- userAnniversaryDate -->
				<td><input name="customerAnniversaryDate" type="text" size="4"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
				</td>
			</tr>
			<tr>
				<td>메모</td>
				<td><textarea cols="70" rows="5" name="customerMemo"></textarea></td>
			</tr>
		</table>
	<input type="submit" value="확인"/>
	<a href="/phoenix/crm/customerManagement"><input type="button" value="취소"/></a>
	</form>

</body>
</html>