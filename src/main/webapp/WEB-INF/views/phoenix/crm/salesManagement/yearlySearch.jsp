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
		    $('.toMonths, .toMonthe').datepicker({	
		    	dateFormat : "yymmdd",
	    		prevText: '이전 달',
	    	    nextText: '다음 달',
	    	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    	    showMonthAfterYear: true,
	    	    yearSuffix: '년'
		    });
		});
		
	});
	
	
</script>

<title>기간 검색</title>
</head>
<body>
<div id="all">
	<div>
		<form class="navbar-search pull-left" action="/phoenix/crm/salesManagement/yearlySearch" method="post">
			<div>
			<strong>기간검색</strong>
				<%-- <input class="toMonths" type="text" value="${serverTime}" name="paymentStartDay"> ~ 
				<input class="toMonthe" type="text" value="${serverTime}" name="paymentEndDay"> --%>
				<!-- 년간 검색 : 년 -->
				<select name="paymentYear">
					<option value="2016">2016년</option>
					<option value="2015">2015년</option>
					<option value="2014">2014년</option>
					<option value="2013">2013년</option>
					<option value="2012">2012년</option>
					<option value="2011">2011년</option>
					<option value="2010">2010년</option>
					<option value="2009">2009년</option>
					<option value="2008">2008년</option>
					<option value="2007">2007년</option>
					<option value="2006">2006년</option>
				</select>
				<input class="btn" type="submit" value="검색">
			</div>
		</form>
		
		
		
		
	</div>
</div>
</body>
</html>