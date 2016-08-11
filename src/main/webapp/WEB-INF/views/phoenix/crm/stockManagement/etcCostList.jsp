<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
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
	
	<hr>
	<div id="all">	
		<!-- <h1>지출내역등록</h1> -->
		<form action="/phoenix/crm/process/stockManagement/insertEtcCostItem" method="POST">
			<input class="btn btn-primary" type="submit" value="지출내역등록"/>
		
			<table>
				<tr>
					<th>지출일</th>
					<td><input name="" type="date"/></td>
				</tr>
				<tr>
					<th>지출항목</th>
					<td>
						<select name="etcCostCode">
							<option>||기타지출항목||</option>
						<c:forEach var="list" items="${cost.list}">
							<option value="${list.etcCostCode}">${list.etcCostName}</option>
						</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>세부항목</th>
					<td>
						<select>
							<option>항목 선택하면 세부항목나올 곳</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>지출금액</th>
					<td>
						<input name="" type="text"/>
					</td>
				</tr>
				<tr>
					<th>담당자</th>
					<td>
						<select>
							<option>직원이름나올 곳</option>
						</select>
					</td>
				</tr>
					<tr>
						<th>메모</th>
						<td><textarea class="" cols="30" rows="10" name=""></textarea></td>
					</tr>
			</table>
		</form>
	</div>
</body>
</html>