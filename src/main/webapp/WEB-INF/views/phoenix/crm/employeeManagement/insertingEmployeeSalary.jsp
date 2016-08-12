<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
 		
	$(document).ready(function() {	
		$('#submitBtn').click(function() {
			if($('#SalaryMonthDate').val() == '') {
				$('#SalaryMonthDateMsg').html('근무년월을 입력해 주세요.');
			}else if($('#EmployeeName').val() == '') {
				$('#SalaryMonthDateMsg').html('');
				$('#EmployeeNameMsg').html('직원명을 입력해 주세요.');
			}else if($('#SalaryWon').val() == '') {
				$('#EmployeeNameMsg').html('');
				$('#SalaryWonMsg').html('지급급여를 입력해 주세요.');
			}else{
				$('#submitBtn').submit();
			}
		});
	});

</script>

<style>
	.textCenter{
		text-align: center;
	}
	.textRight{
		text-align: right;
	}
	.title{
		font-size: 30px;
		font-weight: bolder;
	}
	
	div.center { 
		width:550px; 
		margin:auto;
		
	}
	
	.centerT{
		position:absolute;
		width:550px; 
		margin:auto;
		text-align: center;
	}
	
	span{
		color: red;
	}
</style>

<title>급여 지급 입력</title>
</head>
<body>
	<c:import url="employeeManagementMain.jsp"></c:import>

	<hr>
	<div id="all"><!-- 전체 -->
	<div class="textCenter title">
		<h1>급여지급 등록</h1>
	</div>
	
	<br/>
	<br/>
	<div class="center">
	
	<form class="form-horizontal" id="employeeSalaryForm" role="form" action="/phoenix/crm/employeeManagement/insertingEmployeeSalary" method="POST">
		
			
			<!-- 급여지급일 -->  
			<div class="form-group">
				<label class="control-label col-sm-3" for="SalaryPayDate">급여지급일:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="SalaryPayDate" name="SalaryPayDate" placeholder="현재시각" readonly="readonly"/>
				</div>
				<span id="SalaryPayDateMsg"></span>
			</div>
			
			<!-- 근무년월 -->  
			<div class="form-group">
				<label class="control-label col-sm-3" for="SalaryMonthDate">근무년월:</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="SalaryMonthDate" name="SalaryMonthDate">
				</div>
				<span id="SalaryMonthDateMsg"></span>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeName">직원명:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="EmployeeName" name="EmployeeName" placeholder="2자이상 12자이하">
				</div>
				<span id="EmployeeNameMsg"></span>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="SalaryWon">지급급여:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="SalaryWon" name="SalaryWon" maxlength="12" placeholder="숫자만 입력">
				</div>
				<span id="SalaryWonMsg"></span>
			</div>
			
			<!-- 등록취소 -->
			<div class="form-group centerT"> 
				<div class="center col-sm-10">
					<button type="button" class="btn btn-default" id="submitBtn">등록</button>
					<a class="btn btn-default" href="/phoenix/crm/employeeManagement/employeeSalaryList">취소</a>
				</div>
			</div>
	</form>
	</div>
	</div><!-- 전체 -->
</body>
</html>