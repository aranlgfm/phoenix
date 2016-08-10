<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
	<style>
	/* 	#table2
		{
			display: table; 
			width: 100%;
			margin:auto;
		}  */
		.title{text-align: center;} 
		.row {display: table-row;}
		.cell6,.cell7,.cell8 {display: table-cell; padding: 3px; border: 0px solid #DDD;}
		.col1 { width: 20%;}
		.col2 {width: 80%;}
		
		.col3 { width:15%;}
		.col4 {width: 65%;}
		.col5 {width: 20%;}
		.cell3,.cell4{height:600px;}
		.cell3{vertical-align: middle;}
	</style>
</head>
<body>
		<form action="/phoenix/com/process/insertComment" method="post">
			<input type="hidden" value="${articleCode}" name="articleCode">
			<div id="table3">
				<div class="row">
					<span class="cell col3 cell6">아이디나옴</span>
				</div>
				<div class="row">
					<span class="cell col4 cell8"><textarea rows="5"  cols="140%" name="commentContent"></textarea></span>
				</div>
				<div class="row">
					<span class="cell col5 cell7"><input class="insertComment" type="submit" value="등록"></span>
				</div>
			</div>
		</form>
</body>
</html>