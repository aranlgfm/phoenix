<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
	$(function() {
	    $('#realDay').datepicker({	
	    	dateFormat : "yymmdd"
	    });
	});
</script>
<style>
	#confines 
	{
		border-style: solid;
    	border-width: medium;
	}
</style>
<title>기간 검색</title>
</head>
<body>
	<div id="confines">
		<form action="/phoenix/crm/salesManagement/periodSearch" method="post">
			<div>기간검색</div>
			<div>
				검색일자
				<input id="realDay" type="text" value="" name="paymentDate">
				<input type="submit" value="검색">
			</div>
		</form>
	</div>
</body>
</html>