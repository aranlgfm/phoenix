<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	#btn {
		background-color: #000000;
		color : #ffffff;
	}
</style>
</head>
<body>
<br>
<br>
	<div class="center">
		<form id="searchForm" class="form-horizontal" role="form" action="/phoenix/crm/process/searchForCustomerByDetail" method="POST">
			<div class="center">
				
				<div class="control-label col-sm-1">담당자 : </div>
				<div class="col-sm-2">
					<select id="employeeCode" name="employeeCode" class="form-control">
						<option value="">담당자</option>
						<c:forEach var="empList" items="${emp}">
							<option value="${empList.employeeCode}">${empList.employeeName}</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="control-label col-sm-1">연락처 : </div>
				<div class="col-sm-2">
					<input id="phone" name="phone" class="form-control" type="text"/>
				</div>
			
				<div class="control-label col-sm-1">회원명 : </div>
				<div class="col-sm-2">
					<input id="word" name="word" class="form-control" type="text"/>
				</div>

				<div class="col-sm-3">
					<input id="btn" class="form-control" type="submit" value="검색"/>
				</div>
			</div>
		</form>
	</div>

</body>
</html>