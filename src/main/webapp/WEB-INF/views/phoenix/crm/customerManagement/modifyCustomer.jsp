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
	고객리스트
</h1>

<form action="/phoenix/crm/customerManagement/process/modifyCustomer" method="POST">
	<table>
		<tr>
			<th>Filed</th>
			<th>Input</th>
		</tr>
		<tr>
			<td>커뮤니티회원여부</td>
			<td>${customer.userCode}</td>
		</tr>
		<tr>
			<td>고객명</td>
			<td>${customer.customerName}</td>
		</tr>
		<tr>
			<td>연락처</td>
			<td><input name="customerCellphoneNumber" type="text" value="${customer.customerCellphoneNumber}"/></td>
		</tr>
		<tr>
			<td>* 이메일</td>
			<td><input type="text" name="customerEmailAddress" size="12" value="${customer.customerEmailAddress}"/>@<input type="text" size="12"/>
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
			<td>담당자</td>	
			<td><input name="employeeName" type="text" value="${customer.employeeName}"/></td>
		</tr>
		<tr>	
			<td>기념일</td>
			<td><input name="customerAnniversaryDate" type="text" size="4" value="${customer.customerAnniversaryDate}"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
		</tr>
		<tr>	
			<td>생일</td>
			<td><input name="customerBirthDate" type="text" size="4" value="${customer.customerBirthDate}"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
				<input type="radio" name="asdf" value="sun"/>양력
				<input type="radio" name="asdf" value="moon"/>음력
			</td>
		</tr>
		<tr>	
			<td>우편번호</td>
			<td><input type="text" name="customerPostNumber" size="7" value="${customer.customerPostNumber}"/></td>
		</tr>
		<tr>	
			<td>상세주소</td>
			<td><input type="text" name="customerAddress" value="${customer.customerAddress}"/></td>
		</tr>
		<tr>	
			<td>메모</td>
			<td><textarea cols="70" rows="5" name="customerMemo">${customer.customerMemo}</textarea></td>
		</tr>
	</table>
	<input type="submit" value="회원정보수정"/>
	<a href="/phoenix/crm/customerManagement/form/customerList"><input type="button" value="취소"/></a>
</form>
</body>
</html>