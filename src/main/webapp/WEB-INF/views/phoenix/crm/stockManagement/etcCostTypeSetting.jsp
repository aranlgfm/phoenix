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
	table {
		border-collapse: collapse;
	}
</style>
</head>
<body>

<c:import url="stockManagement.jsp"></c:import>

<hr>

<a href="/phoenix/crm/form/stockManagement/etcCostSetting?shopCode=${shopCode}">기타지출항목설정</a>
<a href="/phoenix/crm/form/stockManagement/etcCostTypeSetting?shopCode=${shopCode}">[기타지출세부항목설정]</a>

<form action="/phoenix/crm/process/stockManagement/insertEtcCostType" method="POST">
	<div>
		<input name="shopCode" type="hidden" value="${shopCode}"/>
	</div>
	<select name="etcCostCode">
		<option>||기타지출항목||</option>
	<c:forEach var="list" items="${list}">
		<option value="${list.etcCostCode}">${list.etcCostName}</option>
	</c:forEach>
	</select>
	<div>
		<input name="etcCostTypeName" type="text"/>
		<input type="submit" value="기타지출세부항목등록"/>
	</div>
</form>

<h3>현재기타지출세부항목</h3>
	<table>
		<c:forEach var="cost" items="${cost}">
		<tr>
			<td>${cost.etcCostName}</td>
			<td>${cost.etcCostTypeName}</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>