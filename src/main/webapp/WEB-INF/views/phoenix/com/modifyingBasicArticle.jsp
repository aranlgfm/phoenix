<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 수정화면</h1>
	<form action="/phoenix/com/process/modifyBasicArticle" method="post">
		<input type="hidden" name="articleCode" value="${map.article.articleCode}">
		<table>
			<tr>
				<td>제목</td>
				<td><input class="articleName" type="text" name="articleName" value="${map.article.articleName}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea class="articleContent" cols="80" rows="20" name="articleContent">${map.article.articleContent}</textarea></td>
			</tr>
			<tr>
				<td>파일</td>
				<td><input type="file" name="articleFile"></td>
			</tr>
		</table>
		<input class="modifyingBtn" type="submit" value="수정">
	</form>
</body>
</html>