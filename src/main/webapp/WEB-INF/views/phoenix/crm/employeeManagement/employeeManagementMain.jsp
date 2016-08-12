<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
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
	
	.tag:HOVER {
		color : #000000;
		text-decoration: none;
	}
	.tag:LINK {
		color : #000000;
		text-decoration: none;
	}
	.tag:VISITED {
		color : #000000;
		text-decoration: none;
	}
	.tag:FOCUS {
		color : #000000;
		text-decoration: none;
	}
	
	.textCenter {
		text-align: center;
	}
	
	.textCenter th, td {
		text-align: center;
	}
	
	.textRight {
		text-align: right;
	}
</style>
</head>

<body>
	<c:import url="../crmTemp.jsp"></c:import>
	
	<div id="all">
		<ul class="nav nav-tabs">
			<li id="employeeList"><a href="/phoenix/crm/employeeManagement/employeeList">직원 리스트</a></li>
			<li id="indertingEmployee"><a href="/phoenix/crm/employeeManagement/insertingEmployee">직원 입력</a></li>
			<li id="employeeSalaryList"><a href="/phoenix/crm/employeeManagement/employeeSalaryList">급여지급 리스트</a></li>
			<li id="insertingEmployeeSalary"><a href="/phoenix/crm/employeeManagement/insertingEmployeeSalary">급여지급 입력</a></li>
		</ul>
</body>
</html>