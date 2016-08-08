<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/phoenix</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
</head>
<body>

<c:import url="top.jsp"></c:import>

<div>
	<a href="/phoenix/com/form/designerBoardContent">게시글1</a>
	<a href="/phoenix/com/form/designerBoardContent">게시글2</a>
	<a href="/phoenix/com/form/designerBoardContent">게시글3</a>
</div>

</body>
</html>