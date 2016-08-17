<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style>
	#all {
			width : 70%;
			margin : auto;
		}
	.totalMoney
	{
		font-weight: bold;
	}
</style>
<script>
	$(document).ready(function(){
		
		$(".dailySales").addClass("active");
		
		
		var ihd = $('td');
		var al = $.makeArray(ihd);
		console.log(al);
		
		console.log(typeof(al));
	
		
	});
</script>

<body>
	<div>
		<c:import url="salesManagementMain.jsp"></c:import>
	</div>
		<br>
	<div>
		<c:import url="dailySearch.jsp"></c:import>
	</div>
		
	
	<div id="all">
		<c:forEach var="list" items="${list}" begin="1" end="1"> 
			<strong>${list.paymentDate} 시술 매출 내역</strong>
		</c:forEach>
		<table class="table table-striped">
			<tr>
				<th>품목</th>
				<th>현금/(건)</th>
				<th>카드/(건)</th>
			</tr>

			<c:forEach var="list" items="${list}">
			<tr>
				<td>${list.itemDesignName}</td>
				<td><fmt:formatNumber value="${list.totalCash}" groupingUsed="true"/>/(${list.countCash})</td>
				<td><fmt:formatNumber value="${list.totalCard}" groupingUsed="true"/>/(${list.countCard})</td>
			</tr>
			<c:set var="cashSum" value="${cashSum + list.totalCash}"/>
			<c:set var="cardSum" value="${cardSum + list.totalCard}"/>
			<c:set var="totalSum" value="${cardSum + cashSum}"/>
			</c:forEach>
		
			<tr>
				<td>총합계</td>
				<td><fmt:formatNumber value="${cashSum}" groupingUsed="true"/>원</td>
				<td><fmt:formatNumber value="${cardSum}" groupingUsed="true"/>원</td>
			</tr>
		</table>
		<div class="totalMoney">
			<div class="col-sm-5">최종결산금액</div>
			<div class="col-sm-7"><fmt:formatNumber value="${totalSum}" groupingUsed="true"/>원</div>
		</div>	
	</div>
</body>
</html>