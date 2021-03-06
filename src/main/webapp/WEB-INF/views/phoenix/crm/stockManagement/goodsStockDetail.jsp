<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<script>
	$(document).ready(function()
		{
			$(".goodsStock").addClass("active");
			$('.deleteGoodsStockBtn').on('click',function()
				{
					$(".goodsStockForm").attr('action','/phoenix/crm/process/deleteGoodsStock');
					$(".goodsStockForm").submit();
				}
			)
			
			$('.updateGoodsStockBtn').on('click',function()
				{
					$(".goodsStockForm").attr('action','/phoenix/crm/process/updateGoodsStock');
					$(".goodsStockForm").submit();
				}
			)
		}
	)
</script>
</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	<!-- 수정 할려면 jquery  써야될 거 같은데? -->
	<div id="all">
		<hr>
		<div class="divTh">상세보기</div>
		<br>
		<form class="goodsStockForm" action="" method="post">
			<input type="hidden" name="stockCode" value="${goodsStock.stockCode }">
			<table>
				<tr>
					<td>
						매입일
					</td>
					<td>
						<input class="form-control" type="text" name="stockDate" value="${goodsStock.stockDate }">
					</td>
				</tr>
				<tr>
					<td>
						담당직원
					</td>
					<td>
						<select class="form-control" name="employeeName">
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
						<select class="form-control" name="accountName">
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
						<select class="form-control" name="goodsName">
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
						<input class="form-control" type="text" name="goodsQuantityNumber" value="${goodsStock.goodsQuantityNumber }">
					</td>
				</tr>
				<tr>
					<td>
						총매입가
					</td>
					<td>
						<input class="form-control" type="text" name="purchaseForOneOrder" value="${goodsStock.purchaseForOneOrder }">
					</td>
				</tr>
				<tr>
					<td>
						<input class="updateGoodsStockBtn form-control" type="button" value="수정">
						<input class="deleteGoodsStockBtn form-control" type="button" value="삭제">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>