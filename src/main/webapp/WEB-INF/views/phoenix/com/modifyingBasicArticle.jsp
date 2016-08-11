<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
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
	.btns
	{
		width:100%;
		text-align:center;
	}		
	#table 
	{
		display: table; 
		width: 100%;
		margin:auto;
	}
	.row {display: table-row;}
	.cell {display: table-cell; padding: 3px; border: 1px solid #DDD;}
	.col1 { width: 20%;height: 40px;}
	.col2 {width: 80%;height: 40px;}
	.cell3,.cell4{height:600px;}
	.cell3{vertical-align: middle;}
	.cell1,.cell2,.cell3{text-align: center;}
	.articleName{width:100%;height: 100%;}
	textarea{width:100%;height: 100%;}
	.btns{margin: auto;}
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
			$(".modifyForm").attr("action","/phoenix/com/form/basicArticle");
			$(".modifyForm").attr("method","get");
			$(".modifyForm").submit();
		});
	});
</script>
</head>
<body>
	<c:import url="../../top.jsp"></c:import>
	
	<div id="all">
		<form class="modifyForm">	
			<div id="table">
				<div class="row">
					<span class="cell col1 cell1">제목</span>
					<span class="cell col2 cell2"><input class="articleName" type="text" name="articleName" value="${map.article.articleName}"></span>
				</div>
				<div class="row">
					<span class="cell col1 cell3">내용</span>
					<span class="cell col2 cell4"><textarea class="articleContent" name="articleContent">${map.article.articleContent}</textarea></span>
					<input type="hidden" name="articleCode" value=${map.article.articleCode}>
				</div>
				<div class="row">
					<span class="cell col1">파일</span>
					<span class="cell col2"><input type="file" name="articleFile"></span>
				</div>
			</div>
		</form>
		<div class="btns">	
			<input class="modifyingBtn" type="button" value="수정">			
			<input class="cancelBtn" type="button" value="취소">
		</div>
	</div>
</body>
</html>