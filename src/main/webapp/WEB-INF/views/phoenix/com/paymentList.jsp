<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/paymentList</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	h1
	{
		text-align: center;
	}
</style>
</head>
<body>
<br><br><br><br><br><br><br>
<h1>
	주문결제내역
</h1>
<br><br>

<div>
	<table class="table table-bordered">
		<tr>
			<td>주문번호</td>
			<td>주문일자</td>
			<td>주문내역</td>
			<td>주문금액</td>
			<td>주문상태</td>
			<!-- <td>환불신청</td> -->
		<tr>
		
		<c:forEach var="list" items="${orderListCommandList}">
			<tr>
				<td>${list.swOrderCode}</td>
				<td>${list.orderDate}</td>
				<td>${list.swName}</td>
				<td>${list.swWon}</td>
				<td>${list.orderStatus}</td>
<%-- 				<td>
					<form action="/phoenix/com/form/requestingRepayment" method="post"> 
						<input type="hidden" value="${list.swOrderCode}" name="swOrderCode">
						<input type="hidden" value="${list.orderDate}" name="orderDate">
						<input type="hidden" value="${list.swName}" name="swName">
						<input type="hidden" value="${list.swWon}" name="swWon">
						<input type="hidden" value="${list.orderStatus}" name="orderStatus">
						
							<input type="submit" value="${list.requestingRepayment}" name="requestingRepayment"/>
						
					</form>
				</td> --%>
			</tr>
		</c:forEach>
	</table>
</div>

</body>
</html>