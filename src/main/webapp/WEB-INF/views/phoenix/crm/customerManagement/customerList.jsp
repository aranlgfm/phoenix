<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
.tag:HOVER {
	color : #000000;
	text-decoration: none;
}
.tag:LINK {
	color : #000000;
	text-decoration: none;
}
.tag:VISITED {
	color : #000000;
	text-decoration: none;
}
.tag:FOCUS {
	color : #000000;
	text-decoration: none;
}
th {
	background-color : #7c7c7c;
	color : #ffffff;
}
</style>
</head>
<body>
<c:import url="customerManagement.jsp"></c:import>

<div id="all">
	<ul class="nav nav-tabs">
		<li class="active"><a href="/phoenix/crm/customerManagement/form/customerList">회원목록</a></li>
		<li><a href="/phoenix/crm/customerManagement/form/insertingCustomer">회원등록</a></li>
	</ul>

	<c:import url="searchingForCustomerByDetail.jsp"></c:import>
	
	<br>
	<br>
	<br>
	<br>

	<div>
		<table class="table table-hover">
			<tr>
				<th>고객명</th>
				<th>고객연락처</th>
				<th>성별</th>
				<th>담당자</th>
				<th>시술등록</th>
				<th>예약등록</th>
				<th>정보수정</th>
				<th>고객삭제</th>
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
				<td><a class="tag" href="/phoenix/crm/form/insertProcedurePayment?customerCode=${list.customerCode}">시술등록</a></td>
				<td><a class="tag" href="">예약등록</a></td>
				<td><a class="tag" href="/phoenix/crm/customerManagement/form/modifyCustomer?customerCode=${list.customerCode}">정보수정</a></td>
				<td><a class="tag" href="/phoenix/crm/customerManagement/process/deleteCustomer?customerCode=${list.customerCode}">고객삭제</a></td>
			</tr>
		</c:forEach>
		</table>
	</div>
</div>
</body>
</html>