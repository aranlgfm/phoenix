<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$(".dailySales").removeClass("active");
		$(".monthlySales").addClass("active");
	
	
	});
</script>
</head>
<body>
	<div>
		<div>
			<c:import url="/phoenix/crm/salesManagement/monthlySalesList"></c:import>
		</div>
	</div>
</body>
</html>