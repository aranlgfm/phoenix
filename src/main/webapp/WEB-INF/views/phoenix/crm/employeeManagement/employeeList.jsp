<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 리스트</title>
</head>
<body>
	<h1>직원 리스트 페이지</h1>
	
	<a href="/phoenix/crm/employeeManagement/insertingEmployee">직원 입력</a>
	
	<table border="1">
		<tr>
			<td>직급</td>
			<td>직원명</td>
			<td>핸드폰번호</td>
			<!-- <td>입사일</td> -->
		</tr>
		<c:forEach var="list" items="${employeeList}">
			<tr>
				<td>${list.employeeLevelName}</td>
				<td><a href="/phoenix/crm/employeeManagement/employeeDetail?employeeCode=${list.employeeCode}">${list.employeeName}</a></td>
				<td>${list.employeeCellPhoneNo}</td>
				<%-- <td>${list.employeeJoinDate}</td> --%>
			</tr>
		</c:forEach>
	</table>
	
	<form action="/phoenix/crm/employeeManagement/employeeList" method="GET">
		검색어 : 
		<input type="text" name="word">
		<button>검색</button>
	</form>
	
	<c:if test="${page>1}">
		<a href="/phoenix/crm/employeeManagement/employeeList?page=${page-1}">이전</a>
	</c:if>
	<c:if test="${page<lastPage}">
		<a href="/phoenix/crm/employeeManagement/employeeList?page=${page+1}">다음</a>
	</c:if>
	
</body>
</html>