<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/joiningAsCustomer</title>
</head>
<body>
<h1>
	일반고객 회원가입
</h1>

<div>
	<table>
		<th>Filed</th>
		<th>Input</th>
		<tr>
			<td>이름</td>
			<td><input type="text"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password"/></td>
		</tr>
		<tr>
			<td>비밀번호확인</td>
			<td><input type="password"/></td>
		</tr>
		<tr>
			<td>등등...</td>
			<td>추가예정</td>
		</tr>
	</table>
	<h3>일단 확인누르면 /phoenix로 가게 해둠</h3>
	<a href="/com/process/joiningAsCustomer"><input type="button" value="확인"/></a>
	<a href="/com/form/terms"><input type="button" value="취소"/></a>
</div>

</body>
</html>