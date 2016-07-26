<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/terms</title>
</head>
<body>
<h1>
	회원가입약관
</h1>

<div>
	<textarea cols="80" rows="20">
	제 1 조 (목적)
이 약관은 네이버 주식회사 ("회사" 또는 "네이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
	</textarea>
</div>

<div>
	<input type="checkbox"/>약관에 동의합니다.
</div>

<div>
	<a href="/phoenix/com/form/joiningAsCustomer?group=basic">일반고객</a>
	<a href="/phoenix/com/form/joiningAsCustomer?group=designer">디자이너</a>
	<a href="/phoenix/com/form/joiningAsCustomer?group=director">미용실</a>
</div>

</body>
</html>