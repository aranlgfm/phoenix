<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>CRM 상품</h1>
	<form action="/phoenix/com/form/swPayment" method="post">
		<button>구매</button>
	</form>
	
	<table>
		<c:forEach var="list" items="${swList }">
			<tr>
				<td>${list.swName} </td>
				<td>${list.swTerm}일 </td>
				<td><a href="/phoenix/com/form/paymentList?swCode=${list.swCode}">구매</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>