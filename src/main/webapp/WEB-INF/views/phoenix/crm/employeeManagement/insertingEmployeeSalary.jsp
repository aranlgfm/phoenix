<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
	
	$(document).ready(function(){
		$(function() {
			$('#SalaryMonthDate').datepicker({	
		    	dateFormat : "yymmdd"
		    });
		});
	});
	
</script>
<title>급여 지급 입력</title>
</head>
<body>
	<h1>급여 지급 입력</h1>
	
	<form action="/phoenix/crm/employeeManagement/insertingEmployeeSalary" method="POST">
		<table border="1">
			<tr>
				<td>급여지급일</td>
				<td><input type="text" name="SalaryPayDate" value="현재시각" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>근무년월</td>
				<td><input id="SalaryMonthDate" type="text" name="SalaryMonthDate" /></td>
			</tr>
			<tr>
				<td>직원명</td>
				<td><input type="text" name="EmployeeName" /></td>
			</tr>
			<tr>
				<td>지급급여</td>
				<td><input type="text" name="SalaryWon" /></td>
			</tr>
		</table>
		<button>등록</button>
	</form>
</body>
</html>