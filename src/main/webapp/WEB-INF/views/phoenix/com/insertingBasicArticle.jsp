<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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

	<form id="insertBasicArticle" action="/phoenix/com/form/insertBasicArticle" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${article.boardGroupCode}" name="boardGroupCode">
		<table>
			<tr>
				<td>제목</td>
				<td><input class="articleName" type="text" name="articleName"></td><td></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea class="articleContent" cols="80" rows="20" name="articleContent"></textarea></td>
				</tr>
		</table>
		<div>
			<label>이미지파일: </label>
			<input id="imgFile" type="file" name="imgFile" />
			<input id="AddImgBtn" type="button" value="이미지 추가"/>
			
		</div>	
		<span id="imgFileAdd"></span>
		<input id="goInsertBtn" type="button" value="등록">
		
	</form>
</body>
</html>