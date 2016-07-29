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
		<tr>
			<td>
				주문번호
			</td>
			<td>
				환불상품
			</td>
			<td>
				가격
			</td>
			<td>
				환불예정금액
			</td>
		</tr>
		<tr>
			<td>${orderListCommand.swOrderCode}</td>
			<td>${orderListCommand.swName}</td>
			<td>${orderListCommand.swWon}</td>
			<td>에쩡금액계산해야함</td>
		</tr>
	</table>
</div>

<form action="/phoenix/com/form/requestRepayment" method="post">
	<input type="hidden" value="${swOrderCode}" name="swOrderCode">
	<input type="hidden" value="${orderDate}" name="orderDate">
	<input type="hidden" value="${swName}" name="swName">
	<input type="hidden" value="${swWon}" name="swWon">
	<input type="hidden" value="${orderStatus}" name="orderStatus">

	<div>
		<label>환불은행</label>
		<input type="text" name="bankName"/>
	</div>
	
	<div>
		<label>환불계좌번호</label>
		<input type="text" name="accountNumber"/>
	</div>
	
	<div>
		<input type="submit" value="확인"/>
	</div>
</form>
</body>
</html>