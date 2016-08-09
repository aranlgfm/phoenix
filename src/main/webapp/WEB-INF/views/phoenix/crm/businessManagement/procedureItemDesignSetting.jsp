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
	<c:import url="businessManagementMain.jsp"></c:import>
	<hr>
		<a href="/phoenix/crm/form/procedureItemSetting">시술품목설정</a>
		<a href="/phoenix/crm/form/procedureItemDesignSetting">시술디자인설정</a>
	<hr>
	<div style="border: 1px double;">	
		<!-- S시술품목별 시술디자인설정 -->
		<div>			
			<form action="/phoenix/crm/process/insertProcedureItemDesign" method="POST">
			<input type="hidden" name="shopCode" value="${sessionScope.shopCode}">
				<div>
					<div style="background-color: gray;">
						시술품목별 시술디자인설정
					</div>
					<!-- 시술품목 -->
					<div>
						<label>시술품목선택</label>
						<select name="itemCode">
							<option value="">::선택::</option>	
							<c:forEach var="item" items="${item}">
								<option value="${item.itemCode}">${item.itemName}</option>
							</c:forEach>
						</select>
					</div>
					<!-- 시술디자인 -->
					<div>
						<label>시술디자인명</label>
						<input type="text" name="itemDesignName" size="10"/>
					</div>
					<!-- 시술가격 -->
					<div>
						<label>시술가격</label>
						<input type="text" name="itemDesignPrice" size="10"/>
					</div>
					<input type="submit" value="등록하기"/>
				</div>
			</form>
		</div>
		<!-- E시술품목별 시술디자인설정 -->
		
		
		<!-- S시술품목 리스트 -->
		<div>
			<form action="" method="POST">
				<div>
					<div style="background-color: gray;">
						시술품목 리스트
					</div>
					<div>
						<table>
							<tr>
								<th>시술품목</th>
								<th>시술디자인</th>
								<th>시술가격</th>
								<th>관리</th>
							</tr>
							<c:forEach var="item" items="${itemDesign}">
								<input type="hidden" value="${item.itemDesignCode}">
								<tr>
									<td>${item.itemName}</td>	
									<td>${item.itemDesignName}</td>	
									<td>${item.itemDesignPrice}</td>	
									<td>
										<a href="/phoenix/crm/form/modifyProcedureItemDesign?itemDesignCode=${item.itemDesignCode}">수정</a>
										<a href="/phoenix/crm/process/deleteProcedureItemDesign?itemDesignCode=${item.itemDesignCode}">삭제</a>
									</td>	
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</form>
		</div>
		<!-- E시술품목 리스트 -->
	</div>
	<!-- 전체DIV -->
	
</body>
</html>