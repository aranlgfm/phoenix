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
<c:import url="customerManagement.jsp"></c:import>

<h1>
	고객리스트
</h1>

<table>
			<tr>
				<th>고객명</th>
				<th>고객연락처</th>
				<th>성별</th>
				<th>담당자</th>
				<th>시술등록</th>
				<th>예약등록</th>
				<th>정보수정</th>
			</tr>
	<c:forEach var="list" items="${list}">
			<tr>
				<td>${list.customerName}</td>
				<td>${list.customerCellphoneNumber}</td>
		<c:if test="${list.customerSexFlag == 0}">
				<td>남</td>
		</c:if>
		<c:if test="${list.customerSexFlag == 1}">
				<td>여</td>
		</c:if>
				<td>${list.employeeName}</td>
				<td><a href="">시술등록</a></td>
				<td><a href="">예약등록</a></td>
				<td><a href="/phoenix/crm/customerManagement/form/modifyCustomer?customerCode=${list.customerCode}">정보수정</a></td>
			</tr>
		</c:forEach>
</table>
</body>
</html>