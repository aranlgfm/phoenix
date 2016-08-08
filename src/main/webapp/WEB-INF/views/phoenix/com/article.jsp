<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
	<style>
		.title
		{
			text-align: center;
		}
		.articleContent
		{
			width:60%;
			margin:auto;
			text-align:center;
			border: 1px;
		}
		td,th
		{
			text-align:center;
		}
		.modifyArticle
		{
			width:60%;
			margin:auto;
			text-align:right;
		}	
		.content
		{
			height:500px;
		}	
		.firstElement
		{
			width:20%;
		}
		.secondElement
		{
			width:80%;
		}
	</style>
</head>
<body>
	<c:import url="../../top.jsp"></c:import>
	
	<br><br>
	
	<div class="articleContent">
		<table class="table table-bordered">
			<tr>
				<td class="firstElement">제목</td>
				<td class="secondElement">${map.article.articleName }</td>
			</tr>
			<tr class="content">
				<td class="firstElement">내용</td>
				<td class="secondElement">${map.article.articleContent }</td>
			</tr>
		</table>
	</div>
	
	<div class="modifyArticle">
		<input class="recommendBtn" type="button" value="추천">
	
		<a href="/phoenix/com/form/modifyingBasicArticle?articleCode=${map.article.articleCode }">수정</a>
		<a href="/phoenix/com/process/deleteBasicArticle?articleCode=${map.article.articleCode }&boardGroupCode=${article.boardGroupCode}">삭제</a>		
	</div>
		
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