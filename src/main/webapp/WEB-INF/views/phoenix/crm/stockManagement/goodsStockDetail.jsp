<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<table>
			<tr>
				<td>
					매입일
				</td>
				<td>
					<input type="text" name="stockDate" value="${goodsStock.stockDate }">
				</td>
			</tr>
			<tr>
				<td>
					담당직원
				</td>
				<td>
					<select name="employeeName">
						<option value="${goodsStock.employeeName }">${goodsStock.employeeName }</option>
						<option value=""></option>
						<option value=""></option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					거래처명
				</td>
				<td>
					<select name="accountName">
						<option value="${goodsStock.accountName }">${goodsStock.accountName }</option>
						<option value=""></option>
						<option value=""></option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					미용용품명
				</td>
				<td>
					<select name="goodsName">
						<option value="${goodsStock.goodsName }">${goodsStock.goodsName }</option>
						<option value=""></option>
						<option value=""></option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					단가
				</td>
				<td>
					<input type="text" name="buyingGoodsUnitWon" value="${goodsStock.buyingGoodsUnitWon }">
				</td>
			</tr>
			<tr>
				<td>
					수량
				</td>
				<td>
					<input type="text" name="goodsQuantityNumber" value="${goodsStock.goodsQuantityNumber }">
				</td>
			</tr>
			<tr>
				<td>
					총매입가
				</td>
				<td>
					<input type="text" name="purchaseForOneOrder" value="${goodsStock.purchaseForOneOrder }">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="수정">
					<input type="submit" value="삭제">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>