<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>댓글 입력 폼</h1>
	
	<form action="/phoenix/com/process/insertComment" method="post">
		<input type="hidden" value="${articleCode}" name="articleCode">
		<table>
			<tr>
				<td><span>아이디나옴</span></td>
				<td><textarea rows="10" cols="150" name="commentContent"></textarea></td>
				<td><input class="insertComment" type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
</body>
</html>