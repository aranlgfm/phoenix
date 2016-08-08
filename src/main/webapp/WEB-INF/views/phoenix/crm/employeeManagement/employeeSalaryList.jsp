<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>급여지급 리스트</h1>
	
	<a href="/phoenix/crm/employeeManagement/insertingEmployeeSalary">급여지급 입력</a>
	
	<table border="1">
		<tr>
			<td>직원명</td>
			<td>급여지급일</td>
			<td>근무년월</td>
			<td>지급급여</td>
		</tr>
		<c:forEach var="list" items="${employeeSalaryList}">
			<tr>
				<td>${list.employeeName}</td>
				<td>${list.salaryPayCode}</td>
				<td>${list.salaryMonthCode}</td>
				<td>${list.salaryWon}</td>
			</tr>
		</c:forEach>
	</table>
	
	<form action="/phoenix/crm/employeeManagement/employeeSalaryList" method="GET">
		검색어 : 
		<input type="text" name="word">
		<button>검색</button>
	</form>
	
	<c:if test="${page>1}">
		<a href="/phoenix/crm/employeeManagement/employeeSalaryList?page=${page-1}">이전</a>
	</c:if>
	<c:if test="${page<lastPage}">
		<a href="/phoenix/crm/employeeManagement/employeeSalaryList?page=${page+1}">다음</a>
	</c:if>
	
	
</body>
</html>