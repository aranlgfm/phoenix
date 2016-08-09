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
	.basicBoardList
	{
		width:60%;
		margin:auto;
		border: 1px;
	}
	.centerCell
	{
		text-align:center;
		vertical-align: middle;
	}
	.insertingArticle
	{
		width:60%;
		margin:auto;
		text-align:right;
	}
</style>
<script>
	$(document).ready(function()
	{
		console.log();
		var articleNumber=${articleList};
	});
</script>
</head>

<!-- 실제 값들 가져오는 거 처리 해야함. 페이징해야되고, 글 몇개가져올지 해야되고. -->
<body>

	<c:import url="../../top.jsp"></c:import>
	
	<br><br><br>
	
	<div class="insertingArticle">
		<a href="/phoenix/com/form/insertingBasicArticle?boardGroupCode=COM_BOARDGROUP_3">글쓰기</a>
	</div>
	
	<br><br>
	
	<div class="basicBoardList">
		<table class="table table-bordered">
			<tr>
				<td class="centerCell">글번호</td>
				<td class="centerCell">글제목</td>
				<td class="centerCell">작성시간</td>
				<td class="centerCell">작성자</td>
			</tr>
			<c:forEach var="list" items="${articleList}">
				<tr>
					<td class="centerCell">${list.articleNumber}</td>
					<td><a href="/phoenix/com/form/basicArticle?articleCode=${list.articleCode}">${list.articleName}</a></td>
					<td class="centerCell">${list.articleDate}</td>
					<td class="centerCell">${list.userNickName}</td>					
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>