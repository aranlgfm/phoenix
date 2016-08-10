<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	<hr>
	<div id="all">	
		<form action="/phoenix/crm/form/insertingAccount" method="get">
			<input class="btn btn-primary" type="submit" value="거래처 등록">
		</form>
	</div>	
</body>
</html>