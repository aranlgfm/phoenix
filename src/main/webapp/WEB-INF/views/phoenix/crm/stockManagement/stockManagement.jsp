<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table, tr, th, td {
		border : 1px solid #000000;
	}
	td {
		border-collapse: collapse;
	}
</style>
</head>
<body>

<c:import url="../crmTemp.jsp"></c:import>

<hr>

<div>
	<a href="#">미용용품입고내역</a>
	<a href="#">미용용품결제내역</a>
	<a href="#">미용용품사용내역</a>
	<a href="#">미용용품설정</a>
	<a href="#">매입지출관리/설정</a>
	<a href="/phoenix/crm/form/stockManagement/etcCostSetting">기타지출설정</a>
</div>

</body>
</html>