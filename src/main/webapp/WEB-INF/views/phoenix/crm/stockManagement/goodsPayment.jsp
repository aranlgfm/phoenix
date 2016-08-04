<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	여기서 결제 등록할겁니다!
	<br><br>
	<form action="/phoenix/crm/process/insertGoodsPayment" method="post">
		<table>
			<tr>
				<td>
					매입제품
				</td>
				<td>
					${goodsStock.goodsName}
				</td>
			</tr>
			<tr>
				<td>
					거래처
				</td>
				<td>
					${goodsStock.accountName}
				</td>
			</tr>
			<tr>
				<td>
					총매입금액
				</td>
				<td>
					${goodsStock.purchaseForOneOrder}
				</td>
			</tr>
			<tr>
				<td>
					결제일
				</td>
				<td>
					<input type="text" name="paymentDate">
				</td>
			</tr>
			<tr>
				<td>
					결제담당자
				</td>
				<td>
					<select name="employeeName">
						<option></option>
						<option></option>
						<option></option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					결제금액
				</td>
				<td>
					<input type="text" name="purchaseForOneOrder">
				</td>
			</tr>
			<tr>
				<td>
					메모
				</td>
				<td>
					<textarea name="paymentMemo" cols="150" rows="5"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="결제하기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>