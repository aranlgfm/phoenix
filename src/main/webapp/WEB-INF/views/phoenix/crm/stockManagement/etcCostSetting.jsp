<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table, tr, th, td {
		border : 1px solid #000000;
	}
	td {
		border-collapse: collapse;
	}
</style>
</head>
<body>

<c:import url="stockManagement.jsp"></c:import>

<h1>기타지출설정</h1>

<form action="/phoenix/crm/process/stockManagement/insertEtcCostItem" method="POST">
	<div><input name="etcCostName" type="text"/><input type="submit" value="기타지출항목등록"/></div>
</form>

<h3>현재 지출항목</h3>
<c:forEach var="list" items="${list}">
	<input name="etcCostCode" type="hidden" value="${list.etcCostCode}"/>
	<input name="shopCode" type="hidden" value="${list.shopCode}"/>
	<div>
		${list.etcCostName}
	</div>
</c:forEach>

</body>
</html>