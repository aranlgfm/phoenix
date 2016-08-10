<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	<hr>
	<div id="all">
		<form action="/phoenix/crm/form/insertingGoods" method="get">
			<input type="submit" value="제품 등록">
		</form>	
		<a href="/phoenix/crm/form/goodsSetting">미용용품설정목록</a>
	</div>	
</body>
</html>