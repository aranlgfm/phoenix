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
	<h3>시술품목디자인수정</h3>
	
	<form action="/phoenix/crm/process/modifyProcedureItemDesign" method="post">
		<input type="hidden" name="itemDesignCode" value="${item.itemDesignCode}">
		<table>
			<tr>
				<td>시술디자인명</td>
				<td><input type="text" name="itemDesignName" value="${item.itemDesignName}"></td>
			</tr>
			<tr>
				<td>시술가격</td>
				<td><input type="text" name="itemDesignPrice" value="${item.itemDesignPrice}"></td>
			</tr>
		</table>
		<input type="submit" value="수정">
		<input type="button" value="취소">
	</form>	
</body>
</html>