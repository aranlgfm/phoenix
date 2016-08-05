<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	#confines, #procsl, #prodsl, #totalMoney
	{
		border-style: solid;
    	border-width: medium;
	}
</style>
<body>
	<h1>기간별 매출 내역</h1>
	<div id="confines">
		<div>${SalesInfo.paymentDate} 시술 매출 내역</div>
		<table id="procsl">
			<tr>
				<th>품목</th>
				<th>현금/(건)</th>
				<th>카드/(건)</th>
			</tr>

			<c:forEach var="list" items="${list}">
			<tr>
				
				<td>${list.itemDesignName} </td>
				<td>
					<c:if test="${list.paymentTypeGb eq '현금'}">${list.totalMoney}/(${list.totalCount})</c:if>
				</td>
				<td>
					<c:if test="${list.paymentTypeGb eq '카드'}">${list.totalMoney}/(${list.totalCount})</c:if>
				</td>
			</tr>
			</c:forEach>
	
		</table>
		<div>${SalesInfo.paymentDate} 제품 판매 내역</div>
		<table id="prodsl">
			<tr>
				<th>제품명</th>
				<th>카드</th>
				<th>현금</th>
				<th>영수증</th>
				<th>미수금</th>
				<th>합계</th>
			</tr>
			<tr>
				<td>1</td>
				<td>1</td>
				<td>1</td>
				<td>1</td>
				<td>1</td>
				<td>1</td>
			</tr>
		</table>
	</div>
	
	<div id="totalMoney">
		최종결산 금액
	</div>
	
</body>
</html>