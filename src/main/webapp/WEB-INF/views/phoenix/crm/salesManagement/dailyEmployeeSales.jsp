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
</head>
<body>

	<!-- 여기부터 메뉴부분 -->
	<c:import url="../crmTemp.jsp"></c:import>
	<h1>일간직원매출</h1>
	<a href="/phoenix/crm/salesManagement/periodSearch">기간검색</a>
	<div>
		<a href="/phoenix/crm/salesManagement/dailySales"><input type="button" value="일간총매출"></a>
		<a href="/phoenix/crm/salesManagement/monthlySales"><input type="button" value="월간총매출"></a>
		<a href="/phoenix/crm/salesManagement/yearlySales"><input type="button" value="년간총매출"></a>
		<a href="/phoenix/crm/form/salesManagement/dailyEmployeeSales"><input type="button" value="[일간직원매출]"></a>
		<a href=""><input type="button" value="월간직원매출"></a>
		<a href=""><input type="button" value="년간직원매출"></a>
		<a href=""><input type="button" value="기간별매출통계"></a>
		<a href=""><input type="button" value="기간별지출통계"></a>
	</div>
	
	<!-- 여기까지 메뉴부분 -->
	
	<form>
		<!-- 기간검색 -->
		<div>
			<input name="" type="date"/>
			<select>
				<option>직원명</option>
				<c:forEach var="empList" items="${emp.empList}">
					<option value="${empList.employeeCode}">${empList.employeeName}</option>
				</c:forEach>
			</select>
			<input type="submit" value="검색"/>
		</div>
		<!-- 직원별 매출분포 -->
		<div>
			
		</div>
		<!-- 직원별 매출내역 : 리스트 -->
		<table>
			<tr>
				<th>직원명</th>
				<th>총금액</th>
				<th>현금</th>
				<th>카드</th>
			</tr>
			<c:forEach var="empSales" items="${emp.empSales}">
				<tr>
					<td>${empSales.employeeName}</td> 
					<td>${empSales.paymentTotalWon}</td>
						<c:if test="${empSales.paymentType eq '현금'}">
					<td>
						${empSales.paymentTotalWon}
					</td>
						</c:if>
<td></td>
<td></td>
						<c:if test="${empSales.paymentType eq '카드'}">
					<td>
						${empSales.paymentTotalWon}
					</td>
						</c:if>
				</tr>
			</c:forEach>
		</table>
	</form>
	
</body>
</html>