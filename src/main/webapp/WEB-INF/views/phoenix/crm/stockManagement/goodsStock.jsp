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
	<!-- 입고가 되고 나면 결제 하는 시스템으로 되어 있다 -->
	<form action="/phoenix/crm/form/insertingGoodsStock" method="post">
		<input type="submit" value="미용용품입고등록">
	</form>
	
	
		<table>
			<tr>
				<td>
					입고일
				</td>
				<td>
					거래처
				</td>
				<td>
					제품명
				</td>
				<td>
					입고액
				</td>
				<td>
					담당자
				</td>
				<td>
					관리
				</td>
			</tr>
			<c:forEach var="list" items="${goodsStockList}">
				<tr>
					<td>
						${list.stockDate}
					</td>
					<td>
						${list.accountName}
					</td>
					<td>
						${list.goodsName}
					</td>
					<td>
						${list.purchaseForOneOrder}
					</td>
					<td>
						${list.employeeName}
					</td>
					<td>
						<form action="/phoenix/crm/form/goodsPayment" method="post">
							<input type="hidden" name="stockCode" value="${list.stockCode}">
							<input type="hidden" name="goodsName" value="${list.goodsName}">
							<input type="hidden" name="accountName" value="${list.accountName}">
							<input type="hidden" name="purchaseForOneOrder" value="${list.purchaseForOneOrder}">
							
							<input type="submit" value="결제">
						</form>
						<form action="/phoenix/crm/form/goodsStockDetail" method="post">
							<input type="hidden" name="stockCode" value="${list.stockCode}">						
							<input type="hidden" name="stockDate" value="${list.stockDate}">
							<input type="hidden" name="employeeName" value="${list.employeeName}">		
							<input type="hidden" name="accountName" value="${list.accountName}">
							<input type="hidden" name="goodsName" value="${list.goodsName}">
							<input type="hidden" name="buyingGoodsUnitWon" value="${list.buyingGoodsUnitWon}">
							<input type="hidden" name="goodsQuantityNumber" value="${list.goodsQuantityNumber}">
							<input type="hidden" name="purchaseForOneOrder" value="${list.purchaseForOneOrder}">	
							
							<input type="submit" value="상세">
						</form>
					</td>
					<%-- 				
					<td>
						${list.stockCode} 왼쪽에 stockCode
					</td> 
					--%>
				</tr>
			</c:forEach>
		</table>

</body>
</html>