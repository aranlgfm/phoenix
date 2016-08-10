<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style>
	#all {
			width : 70%;
			margin : auto;
		}
</style>
<script>
	
	$(document).ready(function(){
		
		
		//ID : realDay인 태그를 누르면 달력 나와서 format방식에 해당하는 data-type(String)을 value값으로 준다.
		$(function() {
		    $('."toMonth"').datepicker({	
		    	dateFormat : "yyyymm"
		    });
		});
		
	});
	
	
</script>

<title>기간 검색</title>
</head>
<body>
<div id="all">
	<div>
		<form class="navbar-search pull-left" action="/phoenix/crm/salesManagement/monthlySales" method="post">
			<div>
			<strong>기간검색</strong>
				<input class="toMonth" type="text" value="${serverTime}" name="toMonth">
				<input class="btn" type="submit" value="검색">
			</div>
		</form>
		
	</div>
</div>
</body>
</html>