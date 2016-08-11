<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>goodsUseList</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<script>
	$(document).ready(function(){
		$(".goodsStock").removeClass("active");
		$(".goodsUseList").addClass("active");
	});
</script>
</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	<hr>
	
	<div id="all">
	
		<table class="table table-hover">
			<tr class="textCenter">
				<th>
					최종사용일
				</th>
				<th>
					거래처명
				</th>
				<th>
					미용용품명
				</th>
				<th>
					사용수량
				</th>
				<th>
					사용직원
				</th>
				<th>
					관리
				</th>
			</tr>
			<c:forEach var="list" items="${goodsUseList}">
				<tr class="textCenter">
					<td>
						${list.useDate}
					</td>
					<td>
						${list.accountName}
					</td>
					<td>
						${list.goodsName}
					</td>
					<td>
						${list.useQuantityNumber}
					</td>
					<td>
						${list.employeeName}
					</td>
					<td>
						버튼 들어가야
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>	
</body>
</html>