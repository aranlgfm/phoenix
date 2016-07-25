<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/findingPw</title>
</head>
<body>
<h1>
	임시 비밀번호
</h1>

<div>
	<label>아이디 : </label>
	<input type="text"/>
</div>

<div>
	<label>이메일 : </label>
	<input type="text"/>
</div>

<div>
	<a href="/phoenix/com/process/findingPw"><input type="button" value="메일보내기"/></a>
	<a href="/phoenix"><input type="button" value="취소"/></a>
</div>

</body>
</html>