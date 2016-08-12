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
			
			//유효성
			$("#mainSubmit").click(function(){
				if($("#itemName").val() == ""){
					$("#msg").html("품목명을 입력하세요");
				}else if($("#itemName").val() != ""){
					$(".itemName").each(function(){
						var name = $(this).html();
						
					    if(name == $("#itemName").val()){
							$("#msg").html("품목명 중복");
							return false;
						}else{
							$("#mainForm").submit();
							return;
						}
					});
				}
			});//유효성
		});
	</script>
</head>

<body>
	<c:import url="businessManagementMain.jsp"></c:import>
	<hr>
	<div>
		<a type="button" class="btn btn-default tag"  href="/phoenix/crm/form/procedureItemSetting">시술품목설정</a>
		<a type="button" class="btn btn-default tag"  href="/phoenix/crm/form/procedureItemDesignSetting">시술디자인설정</a>
	</div>
	<br>
	<!-- 시술품목 등록폼 -->
		<div class="divTh">시술품목설정</div>
		<form class="form-inline" id="mainForm" action="/phoenix/crm/process/insertProcedureItem" method="POST">
			<br>
			<!-- 시술품목 -->
			<div class="textCenter">
				<label>시술명 : </label>
				<input type="hidden" name="itemCode" value="" size="10"/>
				<input type="hidden" name="shopCode" value="${user.shopCode}" size="10"/>
				<input class="form-control" id="itemName" type="text" name="itemName" size="10"/>
				<input class="form-control" id="mainSubmit" type="button" value="등록"/>
			</div>
			<div class="textCenter" id="msg"></div>
			<br>
		</form>
	<!-- E시술품목설정 -->
	
	<!-- S시술품목 리스트 -->
	<div>
		<form action="" method="POST">
			<div>
				<table class="table table-hover">
					<tr class="textCenter">
						<th>시술품목</th>
						<th>관리</th>
					</tr>
					<c:forEach var="item" items="${item}">
						<input type="hidden" value="${item.itemCode}">	
						<tr class="textCenter">
							<td><span class="itemName">${item.itemName}</span></td>	
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
	<!-- 전체DIV -->
</body>
</html>