<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:import url="stockManagement.jsp"></c:import>
	
	<div id="all">
		<hr>
		<a class="btn btn-primary" href="/phoenix/crm/form/stockManagement/etcCostSetting?shopCode=${shopCode}">기타지출항목설정</a>
		<a class="btn btn-primary" href="/phoenix/crm/form/stockManagement/etcCostTypeSetting?shopCode=${shopCode}">[기타지출세부항목설정]</a>
		<br><br>
		<form action="/phoenix/crm/process/stockManagement/insertEtcCostType" method="POST">
			<div>
				<input name="shopCode" type="hidden" value="${shopCode}"/>
			</div>
			<div>
			<select name="etcCostCode">
				<option>||기타지출항목||</option>
				<c:forEach var="list" items="${cost.list}">
					<option value="${list.etcCostCode}">${list.etcCostName}</option>
				</c:forEach>
			</select>
				<input name="etcCostTypeName" type="text"/>
				<input type="submit" value="기타지출세부항목등록"/>
			</div>
			<br>
		</form>
		
		<div class="divTh">현재기타지출세부항목</div>
			<table>
				<c:forEach var="cost" items="${cost.typeList}">
					<tr>
						<td>${cost.etcCostName}</td>
						<td>${cost.etcCostTypeName}</td>
						<td><a href="/phoenix/crm/process/stockManagement/deleteEtcCostType?etcCostTypeCode=${cost.etcCostTypeCode}"><input type="button" value="삭제"/></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
</body>
</html>