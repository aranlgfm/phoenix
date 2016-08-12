<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<style>
		
	</style>
</head>

<body>
	<c:import url="businessManagementMain.jsp"></c:import>
	<hr>
	<div>
		<a type="button" class="btn btn-default tag" href="/phoenix/crm/form/procedureItemSetting">시술품목설정</a>
		<a type="button" class="btn btn-default tag" href="/phoenix/crm/form/procedureItemDesignSetting">시술디자인설정</a>
	</div>	
		<!-- S시술품목별 시술디자인설정 -->
		<div>			
			<form class="form-inline" action="/phoenix/crm/process/insertProcedureItemDesign" method="POST">
			<input type="hidden" name="shopCode" value="${user.shopCode}">
				<br>
				<div><!-- 전체 -->
					<div class="divTh">
						시술품목별 시술디자인설정
					</div>
					<!-- 시술품목 -->
					<br>
					<table class="table">
						<tr class="textCenter">
							<td class="bgColorGray"><div class="tdVertical"><label>시술품목</label></div></td>
							<td class="textLeft">
								<select class="form-control" name="itemCode">
									<option value="">::선택::</option>	
									<c:forEach var="item" items="${item}">
										<option value="${item.itemCode}">${item.itemName}</option>
									</c:forEach>
								</select>
							</td>
							<td class="bgColorGray"><div class="tdVertical"><label>시술디자인명</label></div></td>
							<td class="textLeft"><input class="form-control" type="text" name="itemDesignName" size="10"/></td>
							<td class="bgColorGray"><div class="tdVertical"><label>시술금액</label></div></td>
							<td class="textLeft"><input class="form-control" type="text" name="itemDesignPrice" size="10"/></td>
						</tr>
						<tr class="textCenter">
							<td colspan="6"><input class="form-control" type="submit" value="등록"/></td>
						</tr>
					</table>	
			</form>
		<!-- E시술품목별 시술디자인설정 -->
		
		
		<!-- S시술품목 리스트 -->
		<div>
			<form action="" method="POST">
				<div>
					<table class="table table-hover">
						<tr class="textCenter">
							<th>시술품목</th>
							<th>시술디자인</th>
							<th>시술금액</th>
							<th>관리</th>
						</tr>
						<c:forEach var="item" items="${itemDesign}">
							<input type="hidden" value="${item.itemDesignCode}">
							<tr class="textCenter">
								<td>${item.itemName}</td>	
								<td>${item.itemDesignName}</td>	
								<td><fmt:formatNumber value="${item.itemDesignPrice}"></fmt:formatNumber></td>	
								<td>
									<a href="/phoenix/crm/form/modifyProcedureItemDesign?itemDesignCode=${item.itemDesignCode}">수정</a>
									<a href="/phoenix/crm/process/deleteProcedureItemDesign?itemDesignCode=${item.itemDesignCode}">삭제</a>
								</td>	
							</tr>
						</c:forEach>
					</table>
				</div>
			</form>
		</div>
		<!-- E시술품목 리스트 -->
	</div>
	<!-- 전체DIV -->
	
</body>
</html>