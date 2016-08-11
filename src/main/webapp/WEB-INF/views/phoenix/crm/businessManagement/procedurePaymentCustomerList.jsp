<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
			$("#paymentCustomerList").addClass("active");
			$("#paymentList").removeClass("active");
			$("#businessManagementSetting").removeClass("active");
		});	
	</script>
</head>

<body>
	<c:import url="businessManagementMain.jsp"></c:import>
	<hr>
		<!-- 회원검색 -->
			<div class="divTh">회원검색</div>
			<br>
			<form action="/phoenix/crm/form/procedurePaymentCustomerList" method="POST">
				<input type="hidden" id="pagePerRecordSize" name="pagePerRecordSize" value="${pageHelper.pagePerRecordSize}">
				<input type="hidden" id="totalRecordSize" name="totalRecordSize" value="${pageHelper.totalRecordSize}">
				<input type="hidden" id="pagePerListSize" name="pagePerListSize" value="${pageHelper.pagePerListSize}">
				<div class="textCenter">
					<label>회원명</label>
					<input type="text" name="searchKeyword" size="10"/>
					<input type="submit" value="검색"/>
				</div>
			</form>
		<hr>
		<!-- 회원검색결과 리스트 -->
		<div>
			<input type="hidden" name="shopCode" value="${sessionScope.shopCode}"/>
			<div>
				<table class="table table-hover">
					<tr class="textCenter">
						<th>회원번호</th>
						<th>회원명</th>
						<th>담당자</th>
						<th>최근방문일</th>
						<th>총시술</th>
						<th>휴대폰</th>
						<th>관리</th>
					</tr>
					<c:forEach var="list" items="${list}">
						<tr class="textCenter">
							<td>
								${fn:substring(list.customerCode,13,fn:length(list.customerCode))}
							</td>
							<td>
								${list.customerName}
								<c:choose>
									<c:when test="${list.customerSexFlag > 0}">[여]</c:when>
									<c:otherwise>[남]</c:otherwise>
								</c:choose>
							</td>
							<td>${list.employeeName}</td>
							<td>
								${list.paymentDate}
							</td>
							<td>
								<c:if test="${list.totalPayment > 0}">총${list.totalPayment}회</c:if>
								<c:if test="${list.totalPayment == 0}">&nbsp;-&nbsp;</c:if>
							</td>
							<td>${list.customerCellphoneNumber}</td>
							<td><a href="/phoenix/crm/form/insertProcedurePayment?customerCode=${list.customerCode}">등록</a></td>	
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<!-- E시술품목 리스트DIV -->
		
		
		
		<!-- 이전 -->
		<div class="textCenter">
		<c:choose>
			<c:when test="${pageHelper.currentPageNo == 1}">◁</c:when>
			<c:otherwise><a href="/phoenix/crm/form/procedurePaymentCustomerList?currentPageNo=1">◀</a></c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${pageHelper.currentPageNo == 1}">이전</c:when>
			<c:otherwise><a href="/phoenix/crm/form/procedurePaymentCustomerList?currentPageNo=${pageHelper.prevPageNo}">이전</a></c:otherwise>
		</c:choose>
		
		<!-- 현재페이지 -->
		<c:forEach begin="${pageHelper.currentListStartPageNo}" end="${pageHelper.currentListEndPageNo}" varStatus="number">
			<c:choose>
				<c:when test="${pageHelper.currentPageNo == number.index}">
					<a href="/phoenix/crm/form/procedurePaymentCustomerList?currentPageNo=${number.index}"><b>[${number.index}]</b></a>
				</c:when>
				<c:otherwise>
					<a href="/phoenix/crm/form/procedurePaymentCustomerList?currentPageNo=${number.index}">[${number.index}]</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<!-- 다음 -->
		<c:choose>
			<c:when test="${pageHelper.currentPageNo >= pageHelper.totalPageSize}">다음</c:when>
			<c:otherwise><a href="/phoenix/crm/form/procedurePaymentCustomerList?currentPageNo=${pageHelper.nextPageNo}">다음</a></c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${pageHelper.currentPageNo == pageHelper.totalPageSize}">▷</c:when>
			<c:otherwise><a href="/phoenix/crm/form/procedurePaymentCustomerList?currentPageNo=${pageHelper.totalPageSize}">▶</a></c:otherwise>
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
		
	</div><!-- top이랑 연결 -->
</body>
</html>