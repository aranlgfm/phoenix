<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>댓글 리스트</title>
	<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
	
</head>
<body>
	
	<c:forEach var="list" items="${commentList}">
		<table>
			<tr>
				<th>${list.userCode}</th>
				<th>${list.commentDate}</th>
			</tr>
		</table>
		<div>
			<span>&nbsp&nbsp>></span>${list.commentContent}
		</div>
	</c:forEach>
	
</body>
</html>