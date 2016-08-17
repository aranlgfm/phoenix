<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>댓글 리스트</title>
	<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
	<style>
 		#table 
		{
			display: table; 
			width: 60%;
			margin:auto;
		} 
		.row {display: table-row;}
		.cell {display: table-cell; padding: 3px; border: 1px solid #DDD;}
		.col1 { width: 20%;}
		.col2 {width: 80%;}
		.col3 { width:15%;}
		.col4 {width: 65%;}
		.col5 {width: 20%;}
		.cell3,.cell4{height:600px;}
		.cell3{vertical-align: middle;}
		.cell1,.cell2,.cell3{text-align: center;}		
	</style>
</head>
<body>
	
<%-- 	<c:forEach var="list" items="${commentList}">
		<table>
			<tr>
				<th>${list.userCode}</th>
				<th>${list.commentDate}</th>
			</tr>
		</table>
		<div>
			<span>&nbsp;&nbsp;</span>${list.commentContent}
		</div>
	</c:forEach> --%>
	
	
	
	<c:forEach var="list" items="${commentList}">
		<div id="table">
			<div class="row">
				<span class="cell col3 cell6">${list.userNickName}</span>
				<span class="cell col4 cell8">${list.commentContent}</span>
				<span class="cell col5 cell7">${list.commentDate}</span>
			</div>
		</div>
		<br><br>
	</c:forEach>
	
	
</body>
</html>