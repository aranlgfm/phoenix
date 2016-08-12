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
	
</style>

<title>급여지급 리스트</title>
</head>
<body>
	
	<c:import url="employeeManagementMain.jsp"></c:import>
	
	<hr>
	<div class="divTh">직원검색</div>
	<br/>
	<form action="/phoenix/crm/employeeManagement/employeeSalaryList" method="GET">
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
				<th>직원명</th>
				<th>급여지급일</th>
				<th>근무년월</th>
				<th>지급급여</th>
			</tr>
		</thead>
		<c:forEach var="list" items="${employeeSalaryList}">
			<tbody>
				<tr class="textCenter">
					<td>${list.employeeName}</td>
					<td>${list.salaryPayDate}</td>
					<td>${list.salaryMonthDate}</td>
					<td>${list.salaryWon}</td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
	
	<ul class="pager">
		<li class="tag"><a class="tag" href="#">◀ Previous</a></li>
		<li><a class="tag" href="">1</a></li>
		<li><a class="tag" href="">2</a></li>
		<li><a class="tag" href="">3</a></li>
		<li><a class="tag" href="">4</a></li>
		<li><a class="tag" href="">5</a></li>
		<li class="tag"><a class="tag" href="#">Next ▶</a></li>
	</ul>
	
	<!-- <form action="/phoenix/crm/employeeManagement/employeeSalaryList" method="GET">
		검색어 : 
		<input type="text" name="word">
		<button>검색</button>
	</form> -->
	<%-- 
	<c:if test="${page>1}">
		<a href="/phoenix/crm/employeeManagement/employeeSalaryList?page=${page-1}">이전</a>
	</c:if>
	<c:if test="${page<lastPage}">
		<a href="/phoenix/crm/employeeManagement/employeeSalaryList?page=${page+1}">다음</a>
	</c:if>
	 --%>
	
</body>
</html>