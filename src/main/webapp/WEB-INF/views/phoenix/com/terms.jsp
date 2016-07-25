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
	<textarea>약관입니다.</textarea>
</div>

<div>
	<input type="checkbox"/>약관에 동의합니다.
</div>

<div>
	<a href="/phoenix/com/form/joiningAsCustomer">일반고객</a>
	<a href="/phoenix/com/form/joiningAsDesigner">디자이너</a>
	<a href="/phoenix/com/form/joiningAsDirector">원장님</a>
</div>

</body>
</html>