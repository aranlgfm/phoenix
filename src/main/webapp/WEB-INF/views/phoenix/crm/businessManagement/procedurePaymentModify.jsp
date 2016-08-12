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
			$(document).on("ready",function(){
				$("#itemSelect").on("change",function(){
					$(".formItemCode").val($("#itemSelect").val());
 					$("#itemForm").submit();
				});
				
				
				$("#itemDesignSelect").on("change",function(){
					$(".formItemCode").val($("#itemSelect").val());
					$(".formItemDesignCode").val($("#itemDesignSelect").val());
 					$("#itemDesignForm").submit();
				});
			});
		</script>
</head>



<body>
	<c:import url="businessManagementMain.jsp"></c:import>
	<hr>
	<h1 style="color: red;">수정할때 담당자랑 결제방법 안고르면 에러나용!</h1>
		<!-- 회원시술수정 -->
		<div class="registerCenter">
			<div class="textCenter">
				<div class="divTh">회원시술수정</div>
			
			<!-- 임시ITEM SELECT FORM 수정에 필요한 paymentCode도 추가-->
				<form id="itemForm" action="/phoenix/crm/process/modifyProcedurePaymentSelectItem" method="POST">
					<input class="formItemCode" name="itemCode" type="hidden" value="">
					<input name="ShopCode" type="hidden" value="${sessionScope.shopCode}">
					<input class="paymentCode" name="paymentCode" type="hidden" value="${procedurePayment.paymentCode}">
				</form>
			
			<!-- 임시ITEMDESIGN SELECT FORM -->
				<form id="itemDesignForm" action="/phoenix/crm/process/modifyProcedurePaymentSelectItemDesign" method="POST">
					<input class="formItemCode" name="itemCode" type="hidden" value="">
					<input class="formItemDesignCode" name="itemDesignCode" type="hidden" value="">
					<input name="ShopCode" type="hidden" value="${sessionScope.shopCode}">
					<input class="paymentCode" name="paymentCode" type="hidden" value="${procedurePayment.paymentCode}">
				</form>
			
<!-- 회원시술수정 FORM 회원시술수정 FORM 회원시술수정 FORM 회원시술수정 FORM 회원시술수정 FORM 회원시술수정 FORM 회원시술수정 FORM 회원시술수정 FORM -->			
			<form class="form-inline" action="/phoenix/crm/process/modifyProcedurePayment" method="POST">
				<input type="hidden" class="paymentCode" name="paymentCode" value="${procedurePayment.paymentCode}">
				<div>
					<!-- 시술품목 -->
					<div>
						<hr>
						<div><label>시술정보선택</label></div>
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
							<select class="form-control" name="employeeCode">
							<!-- 시술품목셀렉 -->
								<option value="">담당자선택</option>
								<c:forEach var="employeeList" items="${employeeList}">
									<c:choose>
										<c:when test="${procedurePayment.employeeCode eq employeeList.employeeCode}">
											<option value="${employeeList.employeeCode}" selected="selected">${employeeList.employeeName}</option>
										</c:when>
										<c:otherwise>
											<option value="${employeeList.employeeCode}">${employeeList.employeeName}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select><!-- 시술품목셀렉 -->
							
							
							<select class="form-control" name="paymentTypeCode">
								<option value="">결제방식</option>	
								<option value="PAYMENT_TYPE_CASH">현금</option>
								<option value="PAYMENT_TYPE_CARD">카드</option>
							</select>
						</div>
					</div><!-- 시술정보/결제방식 -->
					<hr>
					<!-- 결제방식/메모 -->
					<div>
						<div>
							<label>시술가격</label>
							<input class="form-control" type="text" name="paymentTotalPrice" value="${procedurePayment.paymentTotalPrice}">
							&nbsp;&nbsp;
							<label>시술일</label>
							<input class="form-control" type="date" name="paymentDate" value="${procedurePayment.paymentDate}">
						</div>
						<br>
						<div>
							<label></label>
							<textarea class="form-control"name="paymentMemo" rows="5" cols="50" value="">${procedurePayment.paymentMemo}</textarea>
						</div>
					</div>
				</div><!-- 전체form -->
				<hr>
				<div>
				<input class="form-control btn btn-default" type="submit" value="수정">
				<a type="button" class="btn btn-default tag" href="/phoenix/crm/process/deleteProcedurePayment?paymentCode=${procedurePayment.paymentCode}">삭제</a>
				<a type="button" class="btn btn-default tag" href="/phoenix/crm/form/procedurePaymentCustomerList" role="button">취소</a>
				</div>
			</form>
		</div>
	</div>	
</body>
</html>