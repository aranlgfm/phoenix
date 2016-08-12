<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
	<script>
	$(document).ready(function()
			{
			$(".goodsStock").addClass("active");
			});
	</script>
</head>

<body>
<c:import url="stockManagement.jsp"></c:import>
<div id="all">
	<hr>
	<div class="divTh">결제 등록</div>
	<br><br>
	<form action="/phoenix/crm/process/insertGoodsPayment" method="post">
		<input type="hidden" name="stockCode" value="${goodsStock.stockCode}">
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
					<input class="form-control" type="text" name="paymentDate">
				</td>
			</tr>
			<tr>
				<td>
					결제담당자
				</td>
				<td>
					<select class="form-control" name="employeeName">
						<option value="존">존</option>
						<option value="비와이">비와이</option>
						<option value="토마스">토마스</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					결제금액
				</td>
				<td>
					<input class="form-control" type="text" name="purchaseForOneOrder">
				</td>
			</tr>
			<tr>
				<td>
					메모
				</td>
				<td>
					<textarea class="form-control" name="paymentMemo" cols="110" rows="5"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input class="form-control" type="submit" value="결제하기">
				</td>
				<%-- <td>
					${goodsStock.stockCode}
				</td> --%>
			</tr>
		</table>
	</form>
</div>
</body>

</html>