<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="/phoenix/com/form/modifyBasicArticle" method="post">
		<table>
			<input type="hidden" name="articleCode" value=${article.articleCode }>
			<tr>
				<td>제목</td>
				<td><input class="articleName" type="text" name="articleName" value=${article.articleName }></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea class="articleContent" cols="80" rows="20" name="articleContent">${article.articleContent }</textarea></td>
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