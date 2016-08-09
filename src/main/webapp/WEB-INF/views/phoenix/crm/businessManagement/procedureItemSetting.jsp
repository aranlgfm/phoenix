<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
	<script>
		$(document).ready(function(){
			$("#paymentCustomerList").removeClass("active");
			$("#paymentList").removeClass("active");
			$("#businessManagementSetting").addClass("active");
		});	
	</script>
</head>

<body>
<!-- test -->
	<c:set var="shopCode" value="CRM_SHOP_1" scope="session"/>
<!-- test -->

	<c:import url="businessManagementMain.jsp"></c:import>
	<hr>
		<a href="/phoenix/crm/form/procedureItemSetting">시술품목설정</a>
		<a href="/phoenix/crm/form/procedureItemDesignSetting">시술디자인설정</a>
	<hr>
	<div style="border: 1px double;">	
		<!-- S시술품목 폼 -->
		<div>
			<div style="background-color: gray;">시술품목설정</div>
			<form action="/phoenix/crm/process/insertProcedureItem" method="POST">
				<div>
					
					<!-- 시술품목 -->
					<div>
						<label>시술품목명</label>
						<input type="hidden" name="itemCode" value="" size="10"/>
						<input type="hidden" name="shopCode" value="${sessionScope.shopCode}" size="10"/>
						<input type="text" name="itemName" size="10"/>
						<input type="submit" value="등록하기"/>
					</div>
				</div>
			</form>
		</div>
		<!-- E시술품목설정 -->
		
		<!-- S시술품목 리스트 -->
		<div>
			<div style="background-color: gray;">시술품목 리스트</div>
			<form action="" method="POST">
				<div>
					<table>
						<tr>
							<th>시술품목</th>
							<th>관리</th>
						</tr>
						<c:forEach var="item" items="${item}">
							<input type="hidden" value="${item.itemCode}">	
							<tr>
								<td>${item.itemName}</td>	
								<td>
									<a href="/phoenix/crm/form/modifyProcedureItem?itemCode=${item.itemCode}">수정</a>
									<a href="/phoenix/crm/process/deleteProcedureItem?itemCode=${item.itemCode}">삭제</a>
								</td>	
							</tr>
						</c:forEach>
					</table>
				</div>
			</form>
		</div>
		<!-- E시술품목 리스트DIV -->
	</div>
	<!-- 전체DIV -->
	
</body>
</html>