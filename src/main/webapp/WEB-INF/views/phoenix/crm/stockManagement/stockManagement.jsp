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
	<a href="#">제품매입등록/내역</a>
	<a href="#">제품결제내역</a>
	<a href="#">제품사용내역/등록</a>
	<a href="#">지출등록/내역</a>
	<a href="#">매입/지출관리설정</a>
</div>

</body>
</html>