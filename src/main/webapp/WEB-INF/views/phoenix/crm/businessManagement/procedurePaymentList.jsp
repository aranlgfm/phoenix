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

	<script src="//code.jquery.com/jquery.min.js"></script>
		<script>
			$(document).on("ready",function(){
				$("#paymentCustomerList").removeClass("active");
				$("#paymentList").addClass("active");
				$("#businessManagementSetting").removeClass("active");
				
				$(".arrayButton").on("click",function(){
					$("#arrayKeyword").val($(this).attr("id"));
					$("#pagingForm").submit();
				});
			});
		</script>
</head>

<body>

	<c:import url="businessManagementMain.jsp"></c:import>
	<hr>
		<!-- 시술내역검색검색 -->
	<div class="divTh">시술내역검색</div>
	<form action="/phoenix/crm/form/ProcedurePaymentList" method="POST">
		<input type="hidden" id="pagePerRecordSize" name="pagePerRecordSize" value="${pageHelper.pagePerRecordSize}">
		<input type="hidden" id="totalRecordSize" name="totalRecordSize" value="${pageHelper.totalRecordSize}">
		<input type="hidden" id="pagePerListSize" name="pagePerListSize" value="${pageHelper.pagePerListSize}">
<!-- 	<input type="text" id="arrayKeyword" name="arrayKeyword" value=""> -->
		<br>
		<div>
			<!-- 시술내역검색 -->
			<div class="textCenter">
				<label>디자인</label>
				<input type="text" id="searchKeyword" name="searchKeyword" value="">
				<input type="submit" value="검색"/>
			</div>
		</div>
	</form>
	
	<hr>
		<!-- 시술내역검색결과 리스트 -->
		<form action="" method="POST">
		<input type="hidden" name="shopCode" value="${user.shopCode}"/>
		<div>
			<table class="table table-hover">
				<tr class="textCenter">
					<th><span class="arrayButton tag" id="PAYMENT_DT" >시술일</span></th>
					<th><span class="arrayButton tag" id="ITEMDESIGN_NM" >디자인(구분)</span></th>
					<th><span class="arrayButton tag" id="PAYMENT_TOTAL_WON" >금액</span></th>
					<th><span class="arrayButton tag" id="CUSTOMER_NM" >회원명</span></th>
					<th><span class="arrayButton tag" id="EMPLOYEE_NM" >담당자</span></th>
					<th><span class="">시술메모</span></th>
					<th><span class="">관리</span></th>
				</tr>
				<c:forEach var="list" items="${list}">
				<tr class="textCenter">
					<td>${list.paymentDate}</td>
					<td>${list.itemDesignName}</td>
					<td>
						<fmt:formatNumber value="${list.paymentTotalPrice}" ></fmt:formatNumber>
					</td>
					<td>${list.customerName}</td>
					<td>${list.employeeName}</td>
					<td>${list.paymentMemo}</td>
					<td>
						<a href="/phoenix/crm/form/modifyProcedurePayment?paymentCode=${list.paymentCode}">수정</a>
						<a href="/phoenix/crm/process/deleteProcedurePayment?paymentCode=${list.paymentCode}">삭제</a>
						<a href="/phoenix/crm/form/insertProcedurePayment?customerCode=${list.customerCode}">등록</a>
					</td>	
				</tr>
				</c:forEach>
			</table>
		</div>
		</form>
		<!-- E시술품목 리스트DIV -->
		
		<!-- 이전 -->
		<div class="textCenter">
		<c:choose>
			<c:when test="${pageHelper.currentPageNo == 1}">◁</c:when>
			<c:otherwise><a href="/phoenix/crm/form/ProcedurePaymentList?currentPageNo=1">◀</a></c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${pageHelper.currentPageNo == 1}">이전</c:when>
			<c:otherwise><a href="/phoenix/crm/form/ProcedurePaymentList?currentPageNo=${pageHelper.prevPageNo}">이전</a></c:otherwise>
		</c:choose>
		
		<!-- 현재페이지 -->
		<c:forEach begin="${pageHelper.currentListStartPageNo}" end="${pageHelper.currentListEndPageNo}" varStatus="number">
			<c:choose>
				<c:when test="${pageHelper.currentPageNo == number.index}">
					<a href="/phoenix/crm/form/ProcedurePaymentList?currentPageNo=${number.index}"><b>[${number.index}]</b></a>
				</c:when>
				<c:otherwise>
					<a href="/phoenix/crm/form/ProcedurePaymentList?currentPageNo=${number.index}">[${number.index}]</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<!-- 다음 -->
		<c:choose>
			<c:when test="${pageHelper.currentPageNo >= pageHelper.totalPageSize}">다음</c:when>
			<c:otherwise><a href="/phoenix/crm/form/ProcedurePaymentList?currentPageNo=${pageHelper.nextPageNo}">다음</a></c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${pageHelper.currentPageNo == pageHelper.totalPageSize}">▷</c:when>
			<c:otherwise><a href="/phoenix/crm/form/ProcedurePaymentList?currentPageNo=${pageHelper.totalPageSize}">▶</a></c:otherwise>
		</c:choose>
		
		
		<!-- 페이징 및 다른값들 넘길때 필요한 폼 -->
		<form action="/phoenix/crm/form/ProcedurePaymentList" id="pagingForm" method="post">
			<input type="hidden" id="currentPageNo" name="currentPageNo" value="${pageHelper.currentPageNo}">
			<input type="hidden" id="pagePerRecordSize" name="pagePerRecordSize" value="${pageHelper.pagePerRecordSize}">
			<input type="hidden" id="totalRecordSize" name="totalRecordSize" value="${pageHelper.totalRecordSize}">
			<input type="hidden" id="pagePerListSize" name="pagePerListSize" value="${pageHelper.pagePerListSize}">
			<input type="hidden" id="arrayKeyword" name="arrayKeyword" value="">
			<input type="hidden" id="searchKeyword" name="searchKeyword" value="">
		</form>
		<!-- 일단 여기다 페이징을 해봅시다. -->
		</div>
</body>
</html>