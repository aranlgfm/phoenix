<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/login</title>
</head>
<body>
<h1>
	메일 테스트
</h1>

<div>
	<c:if test="${str eq true}">
		<h3>제대로 발송</h3>
	</c:if>	
	<c:if test="${str ne true}">
		<h3>제대로</h3> <h1>안</h1><h3>발송</h3>
	</c:if>	
</div>


</body>
</html>