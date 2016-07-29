<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/userWithdrawal</title>
</head>
<body>
<h1>
	회원탈퇴
</h1>
	<form action="/phoenix/com/process/withdraw" method="POST">
	<div>
		<input type="checkbox"/>정말 탈퇴하시겠습니까?
	</div>
		<input name="userCode" type="text" value="${sessionScope.user.userCode}"/>
	<div>
		<label>비밀번호 : </label>
		<input name="userPw" type="password"/>
	</div>
		<input type="submit" value="확인"/>
		<a href="/phoenix"><input type="button" value="취소"/></a>
	</form>
</body>
</html>