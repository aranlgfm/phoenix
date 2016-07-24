<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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

<div>
	<input type="checkbox"/>정말 탈퇴하시겠습니까?
</div>

<div>
	<label>비밀번호 : </label>
	<input type="text"/>
</div>

<div>
	<a href="/com/process/withdraw"><input type="button" value="확인"/></a>
	<a href="/phoenix"><input type="button" value="취소"/></a>
</div>

</body>
</html>