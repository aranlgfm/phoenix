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
	
	.divTh {
		padding:5px;
		font-weight:bolder;
		background-color : #7c7c7c;
		color : #ffffff;
	}
	
	th {
		background-color : #7c7c7c;
		color : #ffffff;
	}
	
	.textCenter {
		text-align: center;
	}
	
	.textCenter th,td {
		text-align: center;
	}
	
	.textRight {
		text-align: right;
	}
		
	.centerT{
		position:absolute;
		width:550px; 
		margin:auto;
		text-align: center;
	}
	
	div.center { 
		width:550px; 
		margin:auto;
	}
		
</style>

<title>직원 상세보기</title>
</head>
<body>
	<c:import url="employeeManagementMain.jsp"></c:import>

	<hr>
	
	<table class="table table-hover">
		<thead>
			<tr class="textCenter">
				<th>직급</th>
				<th>직원코드</th>
				<th>미용실코드</th>
				<th>이름</th>
				<th>주소</th>
				<th>전화번호</th>
				<th>핸드폰번호</th>
				<th>메모</th>
			</tr>
		</thead>
		<c:if test="${employee != null}">
			<tbody>
				<tr>
					<td>${employee.employeeLevelName}</td>
					<td>${employee.employeeCode}</td>
					<td>${employee.shopCode}</td>
					<td>${employee.employeeName}</td>
					<td>${employee.employeeAddr}</td>
					<td>${employee.employeePhoneNo}</td>
					<td>${employee.employeeCellPhoneNo}</td>
					<td>${employee.employeeMemo}</td>
				</tr>
			</tbody>
		</c:if>
	</table>
	
	<div class="form-group"> 
		<div class="textCenter">
			<a class="btn btn-info" href="/phoenix/crm/employeeManagement/updateEmployee?employeeCode=${employee.employeeCode}">수정</a>
			<a class="btn btn-info" href="/phoenix/crm/employeeManagement/deleteEmployee?employeeCode=${employee.employeeCode}">삭제</a>
		</div>
	</div>
	
</body>
</html>