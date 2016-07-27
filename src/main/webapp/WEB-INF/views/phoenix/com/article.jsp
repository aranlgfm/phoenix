<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style>
		table,tr,td
		{
			border: 1px solid black;
		}
	</style>
</head>
<body>
	<!-- 게시글 내용 -->
	<h1>
		Hello world!  
	</h1>
	<div>
		<table>
			<tr>
				<td>제목</td>
				<td>${article.articleName }</td>
				<td>${article.articleDate}</td>
			</tr>
			<tr>
				<td>${article.articleContent }</td>
			</tr>
		</table>
	</div>
	
	<input class="recommendBtn" type="button" value="추천">

	<a href="/phoenix/com/form/modifyingBasicArticle?articleCode=${article.articleCode }">수정</a>
	<a href="/phoenix/com/process/deleteBasicArticle?articleCode=${article.articleCode }&boardGroupCode=${article.boardGroupCode}">삭제</a>
	
	<table>
		<c:forEach var="list" items="${article.commentList}">
			<tr>
				<td>${list.commentContent}</td>
				<td><a href="/phoenix/com/process/deleteComment?commentCode=${list.commentCode }&articleCode=${list.articleCode}">댓글 삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	
	<form action="/phoenix/com/process/insertComment" method="post">
		<input type="hidden" value=${article.articleCode } name="articleCode">
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