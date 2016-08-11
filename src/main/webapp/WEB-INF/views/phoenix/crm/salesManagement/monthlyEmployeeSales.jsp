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
		
		// 화면 열리면 바로 달력에 오늘에 해당하는 년, 월 입력하기
		// 검색 후에는 검색했던 년, 달로 입력
		var today = '${emp.today}';
		var date1 = today.substring(0,4);
		$('#selectYear').val(date1);

		if(today.length > 9){
			var date2 = today.substring(5,7);
			$('#selectMonth').val(date2);
		}else{
			var date2 = today.substring(4,6);
			$('#selectMonth').val(date2);
		}
		
		$('#btn').click(function(){
			$('#date').val($('#selectYear').val()+$('#selectMonth').val());
			$('#searchForm').submit();
		});
		
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
	 	<li>
	 		<a href="/phoenix/crm/form/salesManagement/dailyEmployeeSales">일간직원매출</a>
	 	</li>
	 	<li class="active dayLi">
	 		<a href="/phoenix/crm/form/salesManagement/monthlyEmployeeSales">월간직원매출</a>
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
	
	<form id="searchForm" class="form-horizontal" role="form" action="/phoenix/crm/process/salesManagement/dailyEmployeeSales" method="POST">
		<!-- 기간검색 -->
		<input name="date" type="hidden"/>
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
					<option>직원명</option>
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