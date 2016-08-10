<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>stockManagement</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
.tag:HOVER {
	color : #000000;
	text-decoration: none;
}
.tag:LINK {
	color : #000000;
	text-decoration: none;
}
.tag:VISITED {
	color : #000000;
	text-decoration: none;
}
.tag:FOCUS {
	color : #000000;
	text-decoration: none;
}
th {
	background-color : #7c7c7c;
	color : #ffffff;
}
</style>
</head>
<body>
<c:import url="../crmTemp.jsp"></c:import>

<c:set var="shopCode" value="CRM_SHOP_1" scope="session"></c:set>

<hr>

<div id="all">
	<ul class="nav nav-tabs">
		<li><a href="/phoenix/crm/form/goodsStock">미용용품입고내역</a></li>
		<li><a href="#">미용용품결제내역</a></li>
		<li><a href="/phoenix/crm/form/goodsUseList">미용용품사용내역</a></li>
		<li><a href="/phoenix/crm/form/stockManagementSetting">미용용품설정</a></li>
		<li><a href="/phoenix/crm/form/stockManagement/etcCostList">매입지출등록</a></li>
		<li><a href="/phoenix/crm/form/stockManagement/etcCostSetting?shopCode=${shopCode}">기타지출설정</a></li>
	</ul>	
</div>

</body>
</html>