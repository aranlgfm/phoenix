<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<h3>시술품목수정</h3>
	
	<form action="/phoenix/crm/process/modifyProcedureItem" method="post">
		<input type="hidden" name="itemCode" value="${item.itemCode}">
		<table>
			<tr>
				<td>시술품목명</td>
				<td><input type="text" name="itemName" value="${item.itemName}"></td>
			</tr>
		</table>
		<input type="submit" value="수정">
		<input type="button" value="취소">
	</form>	
</body>
</html>