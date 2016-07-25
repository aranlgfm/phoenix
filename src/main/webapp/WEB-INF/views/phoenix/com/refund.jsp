<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/refund</title>
</head>
<body>
<h1>
	환불 신청
</h1>

<div>
	<table>
		<th>원 주문번호</th>
		<th>환불상품</th>
		<th>가격</th>
		<th>환불예정금액</th>
		<tr>
			<td>161066283</td>
			<td>3개월패키지</td>
			<td>29000</td>
			<td>20000</td>
		</tr>
	</table>
</div>

<div>
	<label>환불은행</label>
	<input type="text"/>
</div>

<div>
	<label>환불계좌번호</label>
	<input type="text"/>
</div>

<div>
	<a href="/com/process/requestToRepayment"><input type="button" value="확인"/></a>
	<a href="/com/form/paymentList"><input type="button" value="취소"/></a>
</div>

</body>
</html>