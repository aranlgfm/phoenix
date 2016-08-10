<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>goodsStock</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	/* table, tr, th, td {
		border : 1px solid #000000;
	}
	td {
		border-collapse: collapse; */
	}
</style>
<script>
/* on('ready',function(){})이 왜 안되는 거지? 버전 문제인가? */
		
	$(document).ready(function()
		{
			console.log("jquery 테스트");
			$('.insertingGoodsStockBtn').on('click',function()
				{
					$(".insertingGoodsStock").submit();
				}
			)
		}
	)
	console.log("jquery 테스트");
</script>
</head>
<body>

	<c:import url="stockManagement.jsp"></c:import>
	
	<c:set var="shopCode" value="CRM_SHOP_1" scope="session"></c:set>
	
	<hr>
	
	<div id="all">
		<!-- 입고가 되고 나면 결제 하는 시스템으로 되어 있다 -->
		<form class="insertingGoodsStock" action="/phoenix/crm/form/insertingGoodsStock" method="post">
			<input class="insertingGoodsStockBtn btn btn-primary" type="button" value="미용용품입고등록">
		</form>
		<br>
		
		
			<table class="table table-hover">
				<tr class="textCenter">
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
					<tr class="textCenter">
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
		</div>
	
</body>
</html>