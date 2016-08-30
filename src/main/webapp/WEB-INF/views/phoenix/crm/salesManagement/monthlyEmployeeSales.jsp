<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
.totalMoney
{
	font-weight: bold;
}
</style>
<script>
	$(document).ready(function(){
		
		// 화면 열리면 바로 달력에 오늘에 해당하는 년, 월 입력하기
		// 검색 후에는 검색했던 년, 달로 입력
		var today = '${emp.today}';
		var date1 = today.substring(0,4);
		$('#selectYear').val(date1);

		if(today.length > 6){
			var date2 = today.substring(5,7);
			$('#selectMonth').val(date2);
		}else{
			var date2 = today.substring(4,6);
			$('#selectMonth').val(date2);
		}
		
		$('#btn').click(function(){
			$('#date').val($('#selectYear').val()+'-'+$('#selectMonth').val());
			$('#searchForm').submit();
		});
		
	});
</script>
</head>
<body>

<!-- 여기부터 메뉴부분 -->
<c:import url="../crmTemp.jsp"></c:import>

<div id="all">
	<ul class="nav nav-tabs">
		<li>
			<a href="/phoenix/crm/salesManagement/ds">일간총매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/salesManagement/ms">월간총매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/salesManagement/ys">연간총매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/form/salesManagement/dailyEmployeeSales">일간직원매출</a>
	 	</li>
	 	<li class="active dayLi">
	 		<a href="/phoenix/crm/form/salesManagement/monthlyEmployeeSales">월간직원매출</a>
	 	</li>
	 	<li>
	 		<a href="/phoenix/crm/form/salesManagement/yearEmployeeSales">연간직원매출</a>
	 	</li>
	</ul>

<c:set var = "cashSum" value = "0" />
<c:set var = "cashCountSum" value = "0" />
<c:set var = "cardSum" value = "0" />
<c:set var = "cardCountSum" value = "0" />	
<!-- 여기까지 메뉴부분 -->
	
	<br>
	
	<form id="searchForm" class="form-horizontal" role="form" action="/phoenix/crm/process/salesManagement/monthlyEmployeeSales" method="POST">
		<!-- 기간검색 -->
		<input id="date" name="date" type="hidden"/>
		<div class="form-group">
			<div class="col-sm-2">
				<select id="selectYear" class="form-control">
					<option value="2016">2016</option>
					<option value="2015">2015</option>
					<option value="2014">2014</option>
					<option value="2013">2013</option>
				</select>
			</div>
			<div class="col-sm-1">
				<select id="selectMonth" class="form-control">
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
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
				<input id="btn" class="form-control" type="button" value="검색"/>
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
			<c:set var="totalSum" value="${cardSum + cashSum}"/>
		</c:forEach>
		
		<tr>
			<td>총합계</td>
			<td class="won"><fmt:formatNumber value="${cashSum}" groupingUsed="true"/>원 (<c:out value="${cashCountSum}"/>)</td>
			<td class="won"><fmt:formatNumber value="${cardSum}" groupingUsed="true"/>원 (<c:out value="${cardCountSum}"/>)</td>
		</tr>
	</table>
	<div class="totalMoney">
		<div class="col-sm-5">최종결산금액</div>
		<div class="col-sm-7"><fmt:formatNumber value="${totalSum}" groupingUsed="true"/>원</div>
	</div>	
</div>	
	
</body>
</html>