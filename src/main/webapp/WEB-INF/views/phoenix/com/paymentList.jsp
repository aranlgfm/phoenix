<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/paymentList</title>
</head>
<body>
<h1>
	주문결제내역
</h1>

<div>
	<table>
		<th>주문번호</th>
		<th>주문일자</th>
		<th>주문내역</th>
		<th>주문금액</th>
		<th>주문상태</th>
		<th>환불신청</th>
		<tr>
			<td>141066282</td>
			<td>2016.07.05</td>
			<td>1개월패키지</td>
			<td>9900</td>
			<td>결제완료</td>
			<td><a href="/phoenix/com/form/requestingRepayment">환불</a></td>
		</tr>
		<tr>
			<td>161066283</td>
			<td>2016.08.05</td>
			<td>3개월패키지</td>
			<td>29900</td>
			<td>주문완료</td>
			<td><a href="/phoenix/com/form/requestingRepayment">환불</a></td>
		</tr>
		<tr>
			<td>201066284</td>
			<td>2016.08.05</td>
			<td>3개월패키지</td>
			<td>29900</td>
			<td>결제완료</td>
			<td><a href="/phoenix/com/form/requestingRepayment">환불</a></td>
		</tr>
	</table>
</div>

</body>
</html>