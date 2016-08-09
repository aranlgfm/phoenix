<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
	
	$(document).ready(function() {	
	/* 	
		$('#submitBtn').click(function() {
			if($('#EmployeeLevelName').val() == '') {
				$('#EmployeeLevelName').val('직급을 입력해 주세요.');
			}else if($('#EmployeeName').val() == '') {
				$('#EmployeeName').val('직원명을 입력해 주세요.');
			}else if($('#EmployeePw').val() == '') {
				$('#EmployeePw').val('');
			}else if($('#EmployeeBirthDate').val() == '') {
				$('#EmployeeBirthDate').val('생년월일을 입력해 주세요.');
			}else if($('#EmployeeJoinDate').val() == '') {
				$('#EmployeeJoinDate').val('생년월일을 입력해 주세요.');
			}else {
				$('#submitBtn').submit();
			}
		});
		 */
		$(function() {
			$('#EmployeeBirthDate').datepicker( {	
		    	dateFormat : "yymmdd"
		    });
			$('#EmployeeJoinDate').datepicker( {	
		    	dateFormat : "yymmdd"
		    });
		});
	});
	
</script>
<title>직원 등록</title>
</head>
<body>
	
	<h1>직원 등록 페이지</h1>
	
	<form action="/phoenix/crm/employeeManagement/insertingEmployee" method="POST">
		<table class="table table-bordered">
			<tr>
				<td>* 직급선택</td>
				<td><input id="EmployeeLevelName" type="text" name="EmployeeLevelName" /></td>
			</tr>
			<tr>
				<td>* 직원명</td>
				<td><input id="EmployeeName" type="text" name="EmployeeName" /></td>
				
			</tr>
			<tr>
				<td>* 비밀번호</td>
				<td><input id="EmployeePw" type="password" name="EmployeePw" /></td>
				
			</tr>
			<tr>
				<td>생일</td>
				<td>
					<input id="EmployeeBirthDate" type="text" name="EmployeeBirthDate" />
					
					<!-- <input type="checkbox" name="Gregorian" value="양" />
					<input type="checkbox" name="Lunar" value="음" /> -->
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="EmployeeAddr" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="EmployeePhoneNo" /><!-- -<input type="text" name="Num2" />-<input type="text" name="Num3" /> --></td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td><input type="text" name="EmployeeCellPhoneNo" /><!-- -<input type="text" name="CellNum2" />-<input type="text" name="CellNum3" /> --></td>
			</tr>
			<tr>
				<td>* 입사일</td>
				<td><input id="EmployeeJoinDate" type="text" name="EmployeeJoinDate" /></td>
				
			</tr>
			<tr>
				<td>메모</td>
				<td><textarea rows="20" cols="50" name="EmployeeMemo"></textarea></td>
			</tr>
		</table>
		<button type="button" class="btn btn-default" id="submitBtn">등록</button>
	</form>
	
</body>
</html>