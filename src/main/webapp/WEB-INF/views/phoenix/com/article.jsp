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
				<td>${map.article.articleName }</td>
				<td>${map.article.articleDate}</td>
			</tr>
			<tr>
				<td>${map.article.articleContent }</td>
			</tr>
		</table>
	</div>
	<div>
		
	</div>
	
	<input class="recommendBtn" type="button" value="추천">

	<a href="/phoenix/com/form/modifyingBasicArticle?articleCode=${map.article.articleCode }">수정</a>
	<a href="/phoenix/com/process/deleteBasicArticle?articleCode=${map.article.articleCode }&boardGroupCode=${article.boardGroupCode}">삭제</a>
	
	
	<div>
		
		<c:forEach var="imgFile" items="${map.imgFile}" >
		<label>	[${imgFile.fileName}] 이미지 파일</label>
			<div> 
				<label>imgFile download :</label>
				<a href="${imgFile.filePath}" download="${imgFile.fileName}">${imgFile.fileName}</a>
			</div>
		</c:forEach>	
	</div>

	<div>
		<c:import url="/phoenix/com/commentList"></c:import>
	</div>
	
	<div>
		<c:import url="/phoenix/com/form/comment"></c:import>
	</div>
</body>
</html>