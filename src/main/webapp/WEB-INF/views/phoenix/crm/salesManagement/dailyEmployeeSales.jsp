<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
.won {
		text-align : right;
		padding-right : 20%;
}
.title {
	text-align: center;
}
</style>
<script>
	$(document).ready(function(){
		var today = '${emp.today}';
		if(today.length > 9){
			$('#date').val(today);
		}else{
			var date1 = today.substring(0,4);
			var date2 = today.substring(4,6);
			var date3 = today.substring(6,8);
			$('#date').val(date1+'-'+date2+'-'+date3);
		}
	});
</script>
</head>
<body>

<!-- 여기부터 메뉴부분 -->
<c:import url="../crmTemp.jsp"></c:import>

<c:set var = "cashSum" value = "0" />
<c:set var = "cashCountSum" value = "0" />
<c:set var = "cardSum" value = "0" />
<c:set var = "cardCountSum" value = "0" />

<div id="all">	
	<ul class="nav nav-tabs">
		<li>
			<a href="/phoenix/crm/salesManagement/dailySales">일간총매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/salesManagement/monthlySales">월간총매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/salesManagement/yearlySales">연간총매출</a>
	 	</li>
	 	<li class="active dayLi">
	 		<a href="/phoenix/crm/form/salesManagement/dailyEmployeeSales">일간직원매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/form/salesManagement/monthlyEmployeeSales">월간직원매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/form/salesManagement/yearEmployeeSales">연간직원매출</a>
	 	</li>
	</ul>
	
<!-- 여기까지 메뉴부분 -->
	
	<br>
	
	<form id="searchForm" class="form-horizontal" role="form" action="/phoenix/crm/process/salesManagement/dailyEmployeeSales" method="POST">
		<!-- 기간검색 -->
		<div class="form-group">
			<div class="col-sm-2">
				<input id="date" name="date" type="date" class="form-control"/>
			</div>
			<div class="col-sm-2">
				<select name="employeeCode" class="form-control" class="control-label col-sm-3">
					<option value="">직원명</option>
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
			<th class="title">현금/(건)</th>
			<th class="title">카드/(건)</th>
		</tr>
		<c:forEach var="empSales" items="${emp.empSales}">
			<tr>
				<td>${empSales.employeeName}</td> 
				<td class="won"><fmt:formatNumber value="${empSales.totalCash}" groupingUsed="true"/>원 (${empSales.countCash})</td>
				<td class="won"><fmt:formatNumber value="${empSales.totalCard}" groupingUsed="true"/>원 (${empSales.countCard})</td>
			</tr>
			<c:set var= "cashSum" value="${cashSum + empSales.totalCash}"/>
			<c:set var= "cashCountSum" value="${cashCountSum + empSales.countCash}"/>
			<c:set var= "cardSum" value="${cardSum + empSales.totalCard}"/>
			<c:set var= "cardCountSum" value="${cardCountSum + empSales.countCard}"/>
		</c:forEach>
		
		<tr>
			<td>총합계</td>
			<td class="won"><fmt:formatNumber value="${cashSum}" groupingUsed="true"/>원 (<c:out value="${cashCountSum}"/>)</td>
			<td class="won"><fmt:formatNumber value="${cardSum}" groupingUsed="true"/>원 (<c:out value="${cardCountSum}"/>)</td>
		</tr>
	</table>
	
</div>	
	
</body>
</html>