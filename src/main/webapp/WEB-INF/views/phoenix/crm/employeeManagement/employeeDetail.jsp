<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 상세보기</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>employeeLevelName</td>
			<td>employeeCode</td>
			<td>shopCode</td>
			<td>employeeName</td>
			<td>employeeAddr</td>
			<td>employeePhoneNo</td>
			<td>employeeCellPhoneNo</td>
			<td>employeeMemo</td>
		</tr>
		<c:if test="${employeeo != null}">
			<td>${employeeo.employeeLevelName}</td>
			<td>${employeeo.employeeCode}</td>
			<td>${employeeo.shopCode}</td>
			<td>${employeeo.employeeName}</td>
			<td>${employeeo.employeeAddr}</td>
			<td>${employeeo.employeePhoneNo}</td>
			<td>${employeeo.employeeCellPhoneNo}</td>
			<td>${employeeo.employeeMemo}</td>
		</c:if>
	</table>
	<button><a href="/phoenix/crm/employeeManagement/updateEmployee">수정</a></button>
	<button><a href="/phoenix/crm/employeeManagement/deleteEmployee">삭제</a></button>
</body>
</html>