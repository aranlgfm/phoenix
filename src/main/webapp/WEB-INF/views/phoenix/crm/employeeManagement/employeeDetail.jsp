<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 상세보기</title>
</head>
<body>
	<h1>직원 상세보기</h1>
	
	<table border="1">
		<tr>
			<td>직급</td>
			<td>직원코드</td>
			<td>미용실코드</td>
			<td>이름</td>
			<td>주소</td>
			<td>전화번호</td>
			<td>핸드폰번호</td>
			<td>메모</td>
		</tr>
		<c:if test="${employee != null}">
			<td>${employee.employeeLevelName}</td>
			<td>${employee.employeeCode}</td>
			<td>${employee.shopCode}</td>
			<td>${employee.employeeName}</td>
			<td>${employee.employeeAddr}</td>
			<td>${employee.employeePhoneNo}</td>
			<td>${employee.employeeCellPhoneNo}</td>
			<td>${employee.employeeMemo}</td>
		</c:if>
	</table>
	<button><a href="/phoenix/crm/employeeManagement/updateEmployee?employeeCode=${employee.employeeCode}">수정</a></button>
	<button><a href="/phoenix/crm/employeeManagement/deleteEmployee?employeeCode=${employee.employeeCode}">삭제</a></button>
</body>
</html>