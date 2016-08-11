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
		.modifyArticle
		{
			width:60%;
			margin:auto;
			text-align:right;
		}		
		#table 
		{
			display: table; 
			width: 60%;
			margin:auto;
		}
		#table3
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
		.fileDiv{width:80%;text-align:right;}
	</style>
</head>
<body>

	<c:import url="../../top.jsp"></c:import>
	
	<br><br>
	
		<div class="fileDiv">
			<c:forEach var="imgFile" items="${map.imgFile}" >
				<label>	[${imgFile.fileName}] 이미지 파일</label>
				<div> 
					<label>imgFile download :</label>
					<a href="${imgFile.filePath}" download="${imgFile.fileName}">${imgFile.fileName}</a>
				</div>
			</c:forEach>	
		</div>
		
		<div id="table">
			<div class="row">
				<span class="cell col1 cell1">제목</span>
				<span class="cell col2 cell2">${map.article.articleName }</span>
			</div>
			<div class="row">
				<span class="cell col1 cell3">내용</span>
				<span class="cell col2 cell4">${map.article.articleContent }</span>
			</div>
		</div>
		
		<div class="modifyArticle">
			<!-- <input class="recommendBtn" type="button" value="추천"> -->
		
			<a href="/phoenix/com/form/modifyingBasicArticle?articleCode=${map.article.articleCode }">수정</a>	
			
			 &nbsp; &nbsp; &nbsp;
			<a href="/phoenix/com/process/deleteBasicArticle?articleCode=${map.article.articleCode }&boardGroupCode=${map.article.boardGroupCode}">삭제</a>	
		</div>
			
		<br><br><br>
			
		
		
		<br><br><br><br><br>
		
		<div>
			<c:import url="/phoenix/com/commentList"></c:import>
		</div>
		
		<br><br>
		
		<div>
			<c:import url="/phoenix/com/form/comment"></c:import>
		</div>
</body>
</html>