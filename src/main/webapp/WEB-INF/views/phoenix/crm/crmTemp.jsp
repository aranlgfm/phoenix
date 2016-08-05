<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/phoenix</title>
</head>
<body>
	<h1>임시메인</h1>
	
	<a href="/phoenix/crm/businessManagement/businessManagement">영업관리</a>
	<a href="/phoenix/crm/customerManagement/form/customerManagement">회원관리</a>
	<a href="/phoenix/crm/employeeManagement/employeeList">직원관리</a>
	<a href="/phoenix/crm/stockManagement/stockManagement">매입/지출</a>
	<a href="/phoenix/crm/salesManagement/salesManagementHome">매출관리</a>
	
	
	<c:choose>
		<c:when test="${user ne null and user ne 'false'}">
			<span>${user.userNickName}님 환영합니다.</span>
			<a href="/phoenix/crm/process/logout"><input type="button" value="로그아웃"/></a>
		</c:when>
		<c:otherwise>
			<a href="/phoenix/com/form/terms"><input type="button" value="회원가입"/></a>
			<a href="/phoenix/com/form/login"><input type="button" value="로그인"/></a>
		</c:otherwise>	
	</c:choose>
	
</body>
</html>