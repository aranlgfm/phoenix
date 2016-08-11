<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</style>
<script>
	$(document).ready(function(){
		$(".dailySales").removeClass("active");
		$(".monthlySales").addClass("active");
	});
</script>

<body>
	<div>
		<c:import url="salesManagementMain.jsp"></c:import>
	</div>
		<br>
	<div>
		<c:import url="monthSearch.jsp"></c:import>
	</div>
		<br><br><br>
	
	<div id="all">
		<c:forEach var="list" items="${list}" begin="1" end="1"> 
			<strong>${list.paymentYearMonth} 시술 매출 내역</strong>
		</c:forEach>
		<table class="table table-striped">
			<tr>
				<th>일자</th>
				<th>현금/(건)</th>
				<th>카드/(건)</th>
			</tr>

			<c:forEach var="list" items="${list}">
			<tr>
				<td>${list.paymentDate} </td>
				<td>${list.totalCash}/(${list.countCash})</td>
				<td>${list.totalCard}/(${list.countCard})</td>
			</tr>
			</c:forEach>
			<tr>
				<td>총합계</td>
				<td></td>
				<td></td>
			</tr>
		</table>
		
		<strong>
			최종결산 금액
		</strong>
	</div>
</body>
</html>