<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/joiningAsDirector</title>
</head>
<body>
<h1>추가정보 입력</h1>
	<form action="/phoenix/com/process/joiningAsDirector" method="POST">
		<input type="hidden" name="userCode" value="${userCode}">	
		<table>	
			<tr>
				<td>* 미용실 명</td>
				<td><input type="text" name="shopName" size="12"/></td>
			</tr>
			<tr>
				<td>* 우편번호</td>
				<td><input type="text" name="shopPostNumber"size="7"/></td>
			</tr>
			<tr>
				<td>* 상세주소</td>
				<td><input type="text" name="shopAddress"/></td>
			</tr>
			<tr>
				<td>* 사업자번호</td>
				<td><input type="text" name="businessNumber" size="5"/>-<input type="text" size="5"/>-<input type="text" size="5"/></td>
			</tr>
			<tr>
				<td>미용실소개</td>
				<td><textarea name="shopMemo" cols="70" rows="5">입력해라...귀찮아도...</textarea></td>
			</tr>
		</table>
		<input type="submit" value="등록">
		<a href="/phoenix"><input type="button" value="취소"></a>
	</form>	
</body>
</html>