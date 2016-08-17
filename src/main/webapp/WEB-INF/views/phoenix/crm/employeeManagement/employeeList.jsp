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
	
	.Btn {
		text-align: center;
	}
	
</style>

<title>직원 리스트</title>
</head>
<body>

	<c:import url="employeeManagementMain.jsp"></c:import>
	<hr>
		<div class="divTh">직원검색</div>
	<br/>
	<form action="/phoenix/crm/employeeManagement/employeeList" method="GET">
		<div>
			<!-- <label>검색어 :</label>
			<input type="text" name="word"><button type="button" class="btn btn-info">검색</button>
			 -->
			<div class="textCenter">
				<label>직원명</label>
				<input type="text" name="word" size="10"/>
				<input class="btn btn-default" type="submit" value="검색"/>
			</div>
			
		</div>
	</form>
	<hr>
	<table class="table table-hover">
		<thead>
			<tr class="textCenter">
				<th>직급</th>
				<th>직원명</th>
				<th>핸드폰번호</th>
				<th>입사일</th>
				<th>기타</th>
			</tr>
		</thead>
		<c:forEach var="list" items="${employeeList}">
		<tbody>	
			<tr class="textCenter">
				<td>${list.employeeLevelName}</td>
				<td><a href="/phoenix/crm/employeeManagement/employeeDetail?employeeCode=${list.employeeCode}">${list.employeeName}</a></td>
				<td>${list.employeeCellPhoneNo}</td>
				<td>${list.employeeJoinDate}</td>
				<td>
					<a class="btn btn-default" href="/phoenix/crm/employeeManagement/updateEmployee?employeeCode=${list.employeeCode}">수정</a>
					<a class="btn btn-default" href="/phoenix/crm/employeeManagement/deleteEmployee?employeeCode=${list.employeeCode}">삭제</a>
				</td>
			</tr>
		</tbody>	
		</c:forEach>
	</table>
	
	<!-- 페이징 -->
	<div class="Btn">	
		<c:if test="${page>1}">
			<a class="btn btn-default" href="/phoenix/crm/employeeManagement/employeeList?page=${page-1}">이전</a>
		</c:if>
		<c:if test="${page<lastPage}">
			<a class="btn btn-default" href="/phoenix/crm/employeeManagement/employeeList?page=${page+1}">다음</a>
		</c:if>
	</div>

</body>
</html>