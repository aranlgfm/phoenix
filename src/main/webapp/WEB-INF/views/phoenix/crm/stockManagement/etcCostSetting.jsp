<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>

	<c:import url="stockManagement.jsp"></c:import>
	
	<hr>
	<div id="all">
		<a href="/phoenix/crm/form/stockManagement/etcCostSetting?shopCode=${shopCode}">[기타지출항목설정]</a>
		<a href="/phoenix/crm/form/stockManagement/etcCostTypeSetting?shopCode=${shopCode}">기타지출세부항목설정</a>
		
		<form action="/phoenix/crm/process/stockManagement/insertEtcCostItem" method="POST">
			<div>
				<input name="shopCode" type="hidden" value="${shopCode}"/>
				<input name="etcCostName" type="text"/>
				<input type="submit" value="기타지출항목등록"/>
			</div>
		</form>
		
		<h3>현재 지출항목</h3>
		
		<table>
		<c:forEach var="list" items="${list}">
			<tr>
				<td>${list.etcCostName}</td>
				<td><a href="/phoenix/crm/process/stockManagement/deleteEtcCostItem?etcCostCode=${list.etcCostCode}"><input type="button" value="삭제"/></a></td>
			</tr>
		</c:forEach>
		</table>
	</div>
</body>
</html>