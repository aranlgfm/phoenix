<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>일간총매출</h1>
	<div>
		<div>
			<c:import url="/phoenix/crm/salesManagement/periodSearch"></c:import>
		</div>
		
		<div>
			<c:import url="/phoenix/crm/salesManagement/periodSalesGraph"></c:import>
		</div>
		
		<div>
			<c:import url="/phoenix/crm/salesManagement/periodSalesList"></c:import>
		</div>
	</div>
</body>
</html>