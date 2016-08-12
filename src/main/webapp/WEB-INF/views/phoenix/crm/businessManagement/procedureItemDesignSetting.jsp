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
			
			//유효성
			$("#mainSubmit").click(function(){
				if($("#itemSelect").val() == ""){
					$("#msg").html("시술품목을 선택하세요");
				}else if($("#itemDesignName").val() == ""){
					$("#msg").html("디자인명을 입력하세요");
				}else if($("#itemDesignPrice").val() < 0 || $("#itemDesignPrice").val() == ""){
					$("#msg").html("가격을 입력하세요");
				}else{
					console.log("여기 맞지??");
					$(".designName").each(function(){
						var name = $(this).html(); 
						console.log(name);
						if(name == $("#itemDesignName").val()){
							$("#msg").html("디자인명 중복");
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
			<form class="form-inline" id="mainForm" action="/phoenix/crm/process/insertProcedureItemDesign" method="POST">
			<input type="hidden" name="shopCode" value="${user.shopCode}">
				<br>
				<div><!-- 전체 -->
					<div class="divTh">
						시술품목별 시술디자인설정
					</div>
					<!-- 시술품목 -->
					<br>
					<table class="table">
						<tr>
							<td colspan="6">
								<div class="textCenter" id="msg"></div>
							</td>
						</tr>
						<tr class="textCenter">
							<td class="bgColorGray"><div class="tdVertical"><label>시술품목</label></div></td>
							<td class="textLeft">
								<select class="form-control" id="itemSelect" name="itemCode">
									<option value="">::선택::</option>	
									<c:forEach var="item" items="${item}">
										<option value="${item.itemCode}">${item.itemName}</option>
									</c:forEach>
								</select>
							</td>
							<td class="bgColorGray"><div class="tdVertical"><label>시술디자인명</label></div></td>
							<td class="textLeft"><input class="form-control" id="itemDesignName" type="text" name="itemDesignName" size="10"/></td>
							<td class="bgColorGray"><div class="tdVertical"><label>시술금액</label></div></td>
							<td class="textLeft"><input class="form-control" id="itemDesignPrice" type="text" name="itemDesignPrice" size="10"/></td>
						</tr>
						<tr class="textCenter">
							<td colspan="6"><input class="form-control" id="mainSubmit" type="button" value="등록"/></td>
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
								<td><span class="designName">${item.itemDesignName}</span></td>	
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