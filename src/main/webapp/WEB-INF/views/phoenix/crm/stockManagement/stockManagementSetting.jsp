<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>stockManagementSetting</title>
	<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
	<script>
		$(document).ready(function(){
			$(".goodsPaymentList").removeClass("active");
			$(".stockManagementSetting").addClass("active");
		});
	</script>
</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	<div id="all">
		<hr>	
		<form action="/phoenix/crm/form/insertingAccount" method="get">
			<a class="btn btn-primary" href="stockManagementSetting">거래처 설정</a>
			<a class="btn btn-primary" href="goodsSetting">미용용품 설정</a>
			<br><br>
			<input class="btn btn-default tag" type="submit" value="거래처 등록">
		</form>
		<br>
				<table class="table table-hover">
					<tr class="textCenter">
						<th>
							거래처명
						</th>
						<th>
							담당자
						</th>
						<th>
							연락처
						</th>
						<th>
							메모
						</th>
					</tr>
					<c:forEach var="list" items="${StockManagementSetting}">
						<tr class="textCenter">
		 					<td>
		 						${list.accountName}
		 					</td>		
							<td>
								${list.chargerName}
							</td> 			
							<td>
								${list.phoneNumber}
							</td> 
							<td>
								${list.chargerMemo}
							</td> 	
						</tr>
					</c:forEach>
					</table>
					
		
	</div>	
</body>
</html>