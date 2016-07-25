<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/login</title>
</head>
<body>
<h1>
	로그인
</h1>

<div>
	<label>아이디 : </label>
	<input type="text"/>
</div>

<div>
	<label>비밀번호 : </label>
	<input type="password"/>
</div>

<div>
	<a href="/phoenix/com/process/login"><input type="button" value="로그인"/></a>
	<a href="/phoenix"><input type="button" value="취소"/></a>
</div>

<div>
	<a href="/phoenix/com/form/findingId">아이디 찾기</a>
	<a href="/phoenix/com/form/findingPw">비밀번호 찾기</a>
</div>

</body>
</html>