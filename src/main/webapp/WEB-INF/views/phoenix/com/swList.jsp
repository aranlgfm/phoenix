<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	#all 
	{
		width: 70%;
		margin: auto;
	}
	h1
	{
		text-align: 
	}
</style>
<script>
	$(document).ready(function()
	{
		$(".paymentBtn").click(function()
		{
			$(".paymentForm").submit();
		});
	})
</script>
<body>
	<div id="all">
		<br><br><br><br><br><br><br><br>
	
		<div class="row">
			<div class="col-md-4">
			</div>
			<div class="col-md-2">
				<h1>CRM 상품</h1>
			</div>
			<div class="col-md-6">
			</div>
		</div>

		<br><br>
		
		<c:forEach var="list" items="${swList }">
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-1">
					${list.swName}
				</div>
				<div class="col-md-1">
					${list.swTerm}일
				</div>
				<div class="col-md-1">
					<form class="paymentForm" action="/phoenix/com/form/swPayment" method="post">
						<input class="paymentBtn" type="button" value="구매">
					</form>
				</div>
				<div class="col-md-5">
				</div>
			</div>	
		</c:forEach>	
	</div>
</body>
</html>