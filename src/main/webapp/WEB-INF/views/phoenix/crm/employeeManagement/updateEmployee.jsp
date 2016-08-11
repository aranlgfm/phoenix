<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

<title>직원 수정</title>
</head>
<body>
	<c:import url="employeeManagementMain.jsp"></c:import>

	<hr>
	

	<div id="all"><!-- 전체 -->
	<div class="textCenter title">
		<h1>직원 수정</h1>
	</div>
	
	<br/>
	<br/>
	<div class="center">
		
		<form class="form-horizontal" id="employeeForm" role="form" action="/phoenix/crm/employeeManagement/updateEmployee" method="POST">
		<input type="hidden" name="employeeCode" value="${employee.employeeCode}" />
							
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeLevelName">* 직급:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="EmployeeLevelName" name="EmployeeLevelName" placeholder="6자이상 12자이하" maxlength="12">
				</div>
				<span id="EmployeeLevelNameMsg"></span>
			</div>
			  
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeName">* 직원명:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="EmployeeName" name="EmployeeName" value="${employee.employeeName}" readonly="readonly">
				</div>
				<span id="EmployeeNameMsg"></span>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeePw">* 비밀번호:</label>
				<div class="col-sm-4"> 
					<input type="password" class="form-control"id="EmployeePw" name="EmployeePw" placeholder="6자이상 12자이하">
				</div>
				<span id="EmployeePwMsg"></span>
			</div>
			 <!-- 
			<div class="form-group">
				<label class="control-label col-sm-3" for="userRePw">비밀번호확인:</label>
				<div class="col-sm-4"> 
					<input type="password" class="form-control"id="userRepw" placeholder="다시입력해">
				</div>
				<span id="userRepwMsg"></span>
			</div>
			  -->
				<!-- 생년월일 -->  
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeBirthDate">생년월일:</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="EmployeeBirthDate" name="EmployeeBirthDate">
				</div>
			</div>
			<!--  
			 우편번호
			<div class="form-group">
				<label class="control-label col-sm-3" for="userPostNumber">우편번호:</label>
				<div class="col-sm-9 row">
					<div class="col-xs-4">
						<input type="text" class="form-control" id="userPostNumber" name="userPostNumber">
					</div>
					<div class="col-xs-3">
						<input type="button" id="searchPostNumber" class="btn btn-info" value="우편번호">
					</div>
				</div>
			</div>
			 -->
			<!-- 상세주소 -->
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeAddr">상세주소:</label>
				<div class="col-sm-6">
					<!-- <input type="text" class="form-control" id="searchAddress" readonly="readonly"> -->
					<input type="text" class="form-control" id="EmployeeAddr" >
					<!-- 전체다 넘길 주소값 --> 
					<!-- <input type="hidden" id="userAddress" name="userAddress"/> -->
				</div>
			</div>
			
			<!-- 집전화번호 -->
			<div class="form-inline form-group">
			<label class="control-label col-sm-3" for="EmployeePhoneNo">집전화번호:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="EmployeePhoneNo1" size="1" maxlength="3">&nbsp;-&nbsp;
					<input type="text" class="form-control" id="EmployeePhoneNo2" size="1" maxlength="4">&nbsp;-&nbsp;
					<input type="text" class="form-control" id="EmployeePhoneNo3" size="1" maxlength="4">
					<!-- 전체다 넘길 집전화번호 --> 
					<input type="hidden" id="EmployeePhoneNo" name="EmployeePhoneNo"/>
				</div>
				<span id="EmployeePhoneNoMsg"></span>
			</div>

			<!-- 핸드폰번호 -->
			<div class="form-inline form-group">
			<label class="control-label col-sm-3" for="EmployeeCellPhoneNo">핸드폰번호:</label>
				<div class="col-sm-9">
						<input type="text" class="form-control" id="EmployeeCellPhoneNo1" size="1" maxlength="3">&nbsp;-&nbsp; 
						<input type="text" class="form-control" id="EmployeeCellPhoneNo2" size="1" maxlength="4">&nbsp;-&nbsp; 
						<input type="text" class="form-control" id="EmployeeCellPhoneNo3" size="1" maxlength="4">	
					<!-- 전체다 넘길 집전화번호 --> 
					<input type="hidden" id="EmployeeCellPhoneNo" name="EmployeeCellPhoneNo"/>
					<span id="EmployeeCellPhoneNoMsg"></span>
				</div>
			</div>
			 
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeJoinDate">* 입사일:</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="EmployeeJoinDate" name="EmployeeJoinDate" value="${employee.employeeJoinDate}" readonly="readonly">
				</div>
				<span id="EmployeeJoinDateMsg"></span>
			</div>
				
			<!-- 메모 -->
			<div class="form-group">
			<label class="control-label col-sm-3" for="EmployeeMemo">메모:</label>
				<div class="col-sm-8">
					<textarea class="form-control" rows="3" cols="20" id="EmployeeMemo" name="EmployeeMemo"></textarea>
				</div>
			</div>
		
			<!-- 등록취소 -->
			<div class="form-group centerT"> 
				<div class="center col-sm-10">
					<button type="button" class="btn btn-info" id="submitBtn">등록</button>
					<a class="btn btn-info" href="/phoenix/crm/employeeManagement/employeeList">취소</a>
				</div>
			</div>
		</form>

	</div>
	</div><!-- 전체 -->



<%-- 
	<h1>직원 수정</h1>
	
	<form action="/phoenix/crm/employeeManagement/updateEmployee" method="POST">
	<input type="hidden" name="employeeCode" value="${employee.employeeCode}" />
		<table border="1">
			<tr>
				<td>* 직급선택</td>
				<td><input type="text" name="EmployeeLevelName" /></td>
			</tr>
			<tr>
				<td>직원명</td>
				<td><input type="text" name="EmployeeName" value="${employee.employeeName}" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>* 비밀번호</td>
				<td><input type="password" name="EmployeePw" /></td>
			</tr>
			<tr>
				<td>생일</td>
				<td>
					<input type="text" name="EmployeeBirthDate" value="${employee.employeeBirthDate}" readonly="readonly"/>
					<!-- <input type="checkbox" name="Gregorian" value="양" />
					<input type="checkbox" name="Lunar" value="음" /> -->
				</td>
			</tr>
			<!-- <tr>
				<td>우편번호</td>
				<td><input type="text" name="ZipCode" /></td>
			</tr> -->
			<tr>
				<td>주소</td>
				<td><input type="text" name="EmployeeAddr" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="EmployeePhoneNo" /></td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td><input type="text" name="EmployeeCellPhoneNo" /></td>
			</tr>
			<tr>
				<td>입사일</td>
				<td><input type="text" name="EmployeeJoinDate" value="${employee.employeeJoinDate}" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>메모</td>
				<td><textarea rows="20" cols="50" name="EmployeeMemo"></textarea></td>
			</tr>
		</table>
		<button>수정</button>
	</form> --%>
</body>
</html>