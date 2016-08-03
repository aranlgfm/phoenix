<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
	<h1>매출관리</h1>
	<a href="/phoenix/crm/salesManagement/periodSearch">기간검색</a>
	<div>
		<a href="/phoenix/crm/salesManagement/dailySales"><input type="button" value="일간총매출"></a>
		<a href="/phoenix/crm/salesManagement/monthlySales"><input type="button" value="월간총매출"></a>
		<a href="/phoenix/crm/salesManagement/yearlySales"><input type="button" value="년간총매출"></a>
		<a href=""><input type="button" value="일간직원매출"></a>
		<a href=""><input type="button" value="월간직원매출"></a>
		<a href=""><input type="button" value="년간직원매출"></a>
		<a href=""><input type="button" value="기간별매출통계"></a>
		<a href=""><input type="button" value="기간별지출통계"></a>
	</div>
	<div>
		<c:import url="/phoenix/crm/salesManagement/periodSearch"></c:import>
	</div>
	
	<div>
		<c:import url="/phoenix/crm/salesManagement/periodSalesGraph"></c:import>
	</div>
	
	<div>
		<c:import url="/phoenix/crm/salesManagement/periodSalesList"></c:import>
	</div> 
	
</body>
</html>