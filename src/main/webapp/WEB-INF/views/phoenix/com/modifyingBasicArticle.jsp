<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	table
	{
		margin: auto;
	}
	.modifying
	{
		width:60%;
		margin:auto;
		text-align:center;
	}		
	#table 
	{
		display: table; 
		width: 60%;
		margin:auto;
	}
	.row {display: table-row;}
	.cell {display: table-cell; padding: 3px; border: 1px solid #DDD;}
	.col1 { width: 20%;}
	.col2 {width: 80%;}
	.cell3,.cell4{height:600px;}
	.cell3{vertical-align: middle;}
	.cell1,.cell2,.cell3{text-align: center;}
	.articleName{width:100%;height: 100%;}
	textarea{width:100%;height: 100%;}
</style>
<script>
	$(document).ready(function()
	{
		$(".modifyingBtn").click(function()
		{
			$(".modifyForm").attr("action","/phoenix/com/process/modifyBasicArticle");
			$(".modifyForm").attr("method","post");
			$(".modifyForm").submit();
		});
		
		$(".cancelBtn").click(function()
		{
			$(".modifyForm").attr("action","/phoenix/com/form/insertBasicArticle");
			$(".modifyForm").attr("method","post");
			$(".modifyForm").submit();
		});
	});
</script>
</head>
<body>
	<c:import url="../../top.jsp"></c:import>
	
	<form class="modifyForm">
		<input type="hidden" name="articleCode" value="${map.article.articleCode}">	
		<div id="table">
			<div class="row">
				<span class="cell col1 cell1">제목</span>
				<span class="cell col2 cell2"><input class="articleName" type="text" name="articleName" value="${map.article.articleName}"></span>
			</div>
			<div class="row">
				<span class="cell col1 cell3">내용</span>
				<span class="cell col2 cell4"><textarea class="articleContent" name="articleContent">${map.article.articleContent}</textarea></span>
			</div>
			<div class="row">
				<span class="cell col1">파일</span>
				<span class="cell col2"><input type="file" name="articleFile"></span>
			</div>
		</div>
		<div class="modifying">
			<input class="modifyingBtn" type="button" value="수정">
			<input class="cancelBtn" type="button" value="취소">
		</div>
	</form>
</body>
</html>