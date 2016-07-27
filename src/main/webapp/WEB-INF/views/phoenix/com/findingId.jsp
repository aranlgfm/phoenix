<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/findingId</title>
</head>
<body>
	<h1>
		아이디 찾기
	</h1>
	
	<div>
		<p>가입시 입력한 이름과 이메일 주소를 적어주세요.</p>
	</div>
	<form action="/phoenix/com/process/findingId" method="POST">
		<div>
			<label>이 름 :</label>
			<input type="text" name="userName" value=""/>
		</div>
		<div>
			<label>이메일 :</label>
			<input type="text" name="userEmailAddress" value=""/>
		</div>
		
		<div>
			
			<input type="submit" value="보내기"/>
			<a href="/phoenix"><input type="button" value="취소"/></a>
		</div>
	</form>
</body>
</html>