<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style>
		table {
			border: 1px solid;
		}
		
		tr{
			border: 1px solid;
		}

		th{
			border: 1px solid;
		}
			
	</style>
	<script src="//code.jquery.com/jquery.min.js"></script>
		<script>
			$(document).ready(function(){
				
				$("#itemSelect").change(function(){
					$(".formItemCode").val($("#itemSelect").val());
						$("#itemForm").submit();
				});
				
				$("#itemDesignSelect").change(function(){
					$(".formItemCode").val($("#itemSelect").val());
					$(".formItemDesignCode").val($("#itemDesignSelect").val());
						$("#itemDesignForm").submit();
				});
				
				
				
				$(".mainSubmit").click(function(){
					if($("#itemSelect").val() == null || $("#itemSelect").val() == ""){
						$("#msg").html("시술품목을 선택하세요");
					}else if($("#itemDesignSelect").val() == null || $("#itemDesignSelect").val() == ""){
						$("#msg").html("시술디자인을 선택하세요");
					}else if($("#employeeSelect").val() == null || $("#employeeSelect").val() == ""){
						$("#msg").html("직원을 선택하세요");
					}else if($("#paymentTypeSelect").val() == null || $("#paymentTypeSelect").val() == ""){
						$("#msg").html("결제방식을 선택하세요");
					}else if($("#paymentTotalPrice").val() == null || $("#paymentTotalPrice").val() == ""){
						$("#msg").html("시술금액을 선택하세요");
					}else if($("#paymentDate").val() == null || $("#paymentDate").val() == ""){
						$("#msg").html("시술일을 선택하세요");
					}else{
						$("#msg").html("");
						$("#addPayment").val($(this).val());
						$("#mainForm").submit();
					}
				});
			});
		</script>
</head>


<body>
	<c:import url="businessManagementMain.jsp"></c:import>
	<hr>
		<!-- 회원시술등록 -->
	<div class="registerCenter">
		<div class="textCenter">
			<div class="divTh">회원시술등록</div>
			
			<!-- ITEM SELECT FORM -->
				<form id="itemForm" action="/phoenix/crm/process/procedurePaymentSelectItem" method="POST">
					<input class="formItemCode" name="itemCode" type="hidden" value="">
					<input name="ShopCode" type="hidden" value="${user.shopCode}">
				</form>
			<!-- ITEMDESIGN SELECT FORM -->
				<form id="itemDesignForm" action="/phoenix/crm/process/procedurePaymentSelectItemDesign" method="POST">
					<input class="formItemCode" name="itemCode" type="hidden" value="">
					<input class="formItemDesignCode" name="itemDesignCode" type="hidden" value="">
					<input name="ShopCode" type="hidden" value="${user.shopCode}">
				</form>
				
					
<!-- 회원시술등록 FORM 회원시술등록 FORM 회원시술등록 FORM 회원시술등록 FORM 회원시술등록 FORM 회원시술등록 FORM 회원시술등록 FORM 회원시술등록 FORM -->			
			<form class="form-inline" id="mainForm" action="/phoenix/crm/process/insertProcedurePayment" method="POST">
			<!-- 임시값 샾코드,유저코드 세션-->
				<input type="hidden" name="shopCode" value="${user.shopCode}"> 
				<c:if test="${customerCode ne null and customerCode ne ''}">
					<c:set var="customerCode" value="${customerCode}" scope="session"></c:set>
				</c:if>	 
					<input type="hidden" name="customerCode" value="${sessionScope.customerCode}">
			<!-- 임시값 -->
				<div>
					<!-- 시술품목 -->
					<div>
						<hr>
						<div>
							<label>시술정보선택</label>
							<div id="msg"></div>
						</div>
						<br>
						<div>
							<select class="form-control" id="itemSelect" name="itemCode">
							<!-- 시술품목셀렉 -->
							<c:choose>
								<c:when test="${itemDesignList ne null}">
									<option value="">시술품목선택</option>
									<c:forEach var="item" items="${itemList}">
										<c:forEach var="itemDesign" items="${itemDesignList}" begin="0" end="0">
											<c:choose>
												<c:when test="${itemDesign.itemName eq item.itemName}">
													<option value="${item.itemCode}" selected="selected">${item.itemName}</option>
												</c:when>
												<c:otherwise>
													<option value="${item.itemCode}">${item.itemName}</option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</c:forEach>
								</c:when>							
								<c:otherwise>
										<option value="">시술품목선택</option>
										<c:forEach var="item" items="${itemList}">
											<option value="${item.itemCode}">${item.itemName}</option>
										</c:forEach>
								</c:otherwise>
							</c:choose>
							</select><!-- 시술품목셀렉 -->
							<!-- 시술디자인셀렉 -->
							<select class="form-control" id="itemDesignSelect" name="itemDesignCode">
							<c:choose>
								<c:when test="${itemDesign ne null}">
									<option value="">디자인선택</option>
									<c:forEach var="designList" items="${itemDesignList}">
											<c:choose>
												<c:when test="${itemDesign.itemDesignName eq designList.itemDesignName}">
													<option value="${designList.itemDesignCode}" selected="selected">${designList.itemDesignName}</option>
												</c:when>
												<c:otherwise>
													<option value="${designList.itemDesignCode}">${designList.itemDesignName}</option>
												</c:otherwise>
											</c:choose>
									</c:forEach>
								</c:when>							
								<c:otherwise>
										<option value="">디자인선택</option>
										<c:forEach var="designList" items="${itemDesignList}">
											<option value="${designList.itemDesignCode}">${designList.itemDesignName}</option>
										</c:forEach>
								</c:otherwise>
							</c:choose>
							</select><!-- 시술디자인셀렉 -->
							
							
							
		
							<!-- 담당자 셀렉 -->
							<select class="form-control" id="employeeSelect" name="employeeCode">
							<c:choose>
								<c:when test="${employeeList ne null}">
									<option value="">담당자선택</option>
									<c:forEach var="employeeList" items="${employeeList}">
											<option value="${employeeList.employeeCode}">${employeeList.employeeName}</option>
									</c:forEach>
								</c:when>							
								<c:otherwise>
										<option value="">담당자선택</option>
										<c:forEach var="employeeList" items="${employeeList}">
											<option value="${employeeList.employeeCode}">${employeeList.itemDesignName}</option>
										</c:forEach>
								</c:otherwise>
							</c:choose>
							</select><!-- 담당자 셀렉 -->
							
							
							
							<select class="form-control" id="paymentTypeSelect" name="paymentTypeCode">
								<option value="">결제방식</option>	
								<option value="PAYMENT_TYPE_CARD">카드</option>
								<option value="PAYMENT_TYPE_CASH">현금</option>
							</select>
						</div>
					</div><!-- 시술정보/결제방식 -->
					
					<hr>
					<!-- 결제방식/메모 -->
					<div>
						<div>
							<label>시술금액 : </label>
							<input class="form-control" type="text" size="10" id="paymentTotalPrice" name="paymentTotalPrice" value="${itemDesign.itemDesignPrice}">
							&nbsp;&nbsp;
							<label>시술일 : </label>
							<input class="form-control" type="date" id="paymentDate" name="paymentDate" value="">
						</div>
						<br>
						<div>
							<label></label>
							<textarea class="form-control" name="paymentMemo" rows="5" cols="55" value="" placeholder="메모"></textarea>
						</div>
					</div>
				</div><!-- 전체form -->
				<hr>
				<div>
					<input class="form-control btn btn-default mainSubmit" id="mainSubmit" type="button" value="등록">
					<input class="form-control btn btn-default mainSubmit" id="addSubmit" type="button"  value="추가등록">
					<input type="hidden" id="addPayment" name="addPayment">
					<a type="button" class="btn btn-default tag" href="/phoenix/crm/form/procedurePaymentCustomerList">취소</a>
				</div>
			</form>
		</div>
	</div>	
</body>
</html>