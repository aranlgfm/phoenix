<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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
			margin:auto;
		}
		#table3
		{
			display: table; 
			margin:auto;
		} 
		.row {display: table-row;}
		.cell {display: table-cell; padding: 3px; border: 1px solid #DDD;}
		.col1 { width: 20%;}
		.col2 {width: 80%;}
		.cell3,.cell4{height:600px;}
		.cell3{vertical-align: middle;}
		.cell1,.cell2,.cell3{text-align: center;}
		#fileDiv5{width:80%; text-align: left;}
		.articleName{width:100%;height: 100%;}
		textarea{width:100%;height: 100%;}
		.goInsertBtn{text-align: center;}
</style>
<script>
	$(document).ready(function(){
		
		//이미지 파일 추가
		$("#AddImgBtn").click(function(){
			console.log("이미지 추가버튼 클릭됨!");
			$("#imgFileAdd").append('<div><label>이미지파일: </label><input id="imgFile" type="file" name="imgFile"/></div>');
		});
		
		//게시글 서브밋하기
		$('#goInsertBtn').click(function(){
			$('#insertBasicArticle').submit();
		})
		
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../../top.jsp"></c:import>
	
	<br><br><br>

	<div id="all">
			
	
		<form id="insertBasicArticle" action="/phoenix/com/form/insertBasicArticle" method="post" enctype="multipart/form-data">
			<div id="fileDiv5">
				<label>이미지파일: </label>
				<input id="imgFile" type="file" name="imgFile" />
				<input id="AddImgBtn" type="button" value="이미지 추가"/>
				<span id="imgFileAdd"></span>
			<br><br>
			</div>	
	
			<input type="hidden" value="${article.boardGroupCode}" name="boardGroupCode">	
			<div id="table">
				<div class="row">
					<span class="cell col1 cell1">제목</span>
					<span class="cell col2 cell2"><input class="articleName" type="text" name="articleName"></span>
				</div>
				<div class="row">
					<span class="cell col1 cell3">내용</span>
					<span class="cell col2 cell4"><textarea class="articleContent" cols="150%" rows="20" name="articleContent"></textarea></span>
				</div>
			</div>
			<div class="goInsertBtn">
				<input id="goInsertBtn" type="button" value="등록">	
				<input id="cancelBtn" type="button" value="취소">
			</div>	
		</form>
	</div>
</body>
</html>