<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<script>
	$(document).ready(function(){
		/* $(".goodsStock").removeClass("active"); */
		$(".stockManagementSetting").removeClass("active");
		/* $(".goodsUseList").removeClass("active");
		$(".etcCostList").removeClass("active");
		$(".etcCostSetting").removeClass("active"); */
		$(".etcCostList").addClass("active");
	});
</script>

</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	
	
	<div id="all">
		<hr>	
		<!-- <h1>지출내역등록</h1> -->
		<form action="/phoenix/crm/process/stockManagement/insertEtcCostItem" method="POST">
		<!-- <input class="btn btn-primary" type="submit" value="지출내역등록"/> -->
			<br><br>
			<table>
				<tr>
					<td>지출일</td>
					<td><input class="form-control" name="" type="date"/></td>
				</tr>
				<tr>
					<td>지출항목</td>
					<td>
						<select class="form-control" name="etcCostCode">
							<option>||기타지출항목||</option>
						<c:forEach var="list" items="${cost.list}">
							<option value="${list.etcCostCode}">${list.etcCostName}</option>
						</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>세부항목</td>
					<td>
						<select class="form-control">
							<option>항목 선택하면 세부항목나올 곳</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>지출금액</td>
					<td>
						<input class="form-control" name="" type="text"/>
					</td>
				</tr>
				<tr>
					<td>담당자</td>
					<td>
						<select class="form-control">
							<option>직원이름나올 곳</option>
						</select>
					</td>
				</tr>
					<tr>
						<td>메모</td>
						<td><textarea class="form-control" class="" cols="30" rows="10" name=""></textarea></td>
					</tr>
			</table>
		</form>
	</div>
</body>
</html>