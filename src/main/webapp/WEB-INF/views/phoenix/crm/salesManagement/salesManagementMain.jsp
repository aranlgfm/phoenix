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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	
</script>
<style>
	#all {
			width : 70%;
			margin : auto;
		}
</style>

<title>SalesManegementMain</title>
</head>
<body>
	<c:import url="../crmTemp.jsp"></c:import>
	<div id="all">	
		<ul class="nav nav-tabs">
			<li class="dailySales"><a href="/phoenix/crm/salesManagement/dailySales">일간총매출</a></li>
		 	<li class="monthlySales"><a href="/phoenix/crm/salesManagement/monthlySales">월간총매출</a></li>
		 	<li class="yearlySales"><a href="/phoenix/crm/salesManagement/yearlySales">년간총매출</a></li>
		 	<li class=""><a href="/phoenix/crm/form/salesManagement/dailyEmployeeSales">일간직원매출</a></li>
		 	<li class=""><a href="/phoenix/crm/form/salesManagement/monthlyEmployeeSales">월간직원매출</a></li>
		 	<li class=""><a href="/phoenix/crm/form/salesManagement/yearlyEmployeeSales">년간직원매출</a></li>
		 	<li class=""><a href="/phoenix/crm/salesManagement/periodSales">기간별매출통계</a></li>	
		</ul>
	</div>
</body>
</html>