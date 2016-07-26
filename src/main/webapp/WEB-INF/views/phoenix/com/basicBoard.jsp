<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<h1>
		기본 게시판
	</h1>

	<table>
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성시간</th>
			<th>작성자</th>
		</tr>
		<c:forEach var="list" items="${articleList}">
			<tr>
				<td>${list.articleCode}</td>
				<td>${list.articleName}</td>
				<td>${list.articleContent}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>