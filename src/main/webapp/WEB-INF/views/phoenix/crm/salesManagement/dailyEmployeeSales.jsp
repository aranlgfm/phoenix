<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<title>Insert title here</title>
<style>
#all {
		width : 70%;
		margin : auto;
}
</style>
<script>
	$(document).ready(function(){
		var today = '${emp.today}';
		var date1 = today.substring(0,4);
		var date2 = today.substring(4,6);
		var date3 = today.substring(6,8);
		$('#date').val(date1+'-'+date2+'-'+date3);
	});
</script>
</head>
<body>

<!-- 여기부터 메뉴부분 -->
<c:import url="../crmTemp.jsp"></c:import>

<div id="all">	
	
	<div class="container">
	<ul class="nav nav-tabs">
		<li>
			<a href="/phoenix/crm/salesManagement/dailySales">일간총매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/salesManagement/monthlySales">월간총매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/salesManagement/yearlySales">년간총매출</a>
	 	</li>
	 	<li class="active dayLi">
	 		<a href="/phoenix/crm/form/salesManagement/dailyEmployeeSales">일간직원매출</a>
	 	</li>
	 	<li>
	 		<a href="">월간직원매출</a>
	 	</li>
	 	<li>
	 		<a href="">년간직원매출</a>
	 	</li>
	 	<li>
	 		<a href="">기간별매출통계</a>
	 	</li>	
	</ul>
	</div>
	
<!-- 여기까지 메뉴부분 -->
	
	<br>
	
	<form id="insertForm" class="form-horizontal" role="form" action="/phoenix/crm/process/salesManagement/dailyEmployeeSales" method="POST">
		<!-- 기간검색 -->
		<div class="form-group">
			<div class="col-sm-2">
				<input id="date" name="date" type="date" class="form-control"/>
			</div>
			<div class="col-sm-2">
				<select class="form-control" class="control-label col-sm-3">
					<option>직원명</option>
					<c:forEach var="empList" items="${emp.empList}">
						<option value="${empList.employeeCode}">${empList.employeeName}</option>
					</c:forEach>
				</select>
			</div>
			<div class="col-sm-1">
				<input class="form-control" type="submit" value="검색"/>
			</div>
		</div>
	</form>
		<!-- 직원별 매출분포 -->
		<div>
			
		</div>
		<!-- 직원별 매출내역 : 리스트 -->
	<table class="table table-striped">
		<tr>
			<th>직원명</th>
			<th>현금/(건)</th>
			<th>카드/(건)</th>
		</tr>
		<c:forEach var="empSales" items="${emp.empSales}">
			<tr>
				<td>${empSales.employeeName}</td> 
				<td>${empSales.totalCash}/(${empSales.countCash})</td>
				<td>${empSales.totalCard}/(${empSales.countCard})</td>
			</tr>
		</c:forEach>
		
		<tr>
			<td>총합계</td>
			<td></td>
			<td></td>
		</tr>
	</table>
	
</div>	
	
</body>
</html>