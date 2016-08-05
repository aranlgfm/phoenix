<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
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
		<c:if test="${user eq 'false'}">
			<h3 style="color: red;">해킹감지</h3>
		</c:if>
	<form action="/phoenix/crm/process/login" method="POST">
		<div>
			<label>미용실코드 : </label>
			<input type="text" name="shopCode"/>
		</div>
		<div>
			<label>아이디 : </label>
			<input type="text" name="userId"/>
		</div>
		
		<div>
			<label>비밀번호 : </label>
			<input type="password" name="userPw"/>
		</div>
		
		<div>
			<input type="submit" value="로그인"/>
			<a href="/phoenix"><input type="button" value="취소"/></a>
		</div>
	</form>
	<div>
		<a href="/phoenix/com/form/findingId">아이디 찾기</a>
		<a href="/phoenix/com/form/findingPw">비밀번호 찾기</a>
	</div>

</body>
</html>