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
		<div style="border: 1px double;">
			<div style="background-color: gray;">회원검색</div>
			<form action="/phoenix/crm/process/insertProcedureItem" method="POST">
				<div>
					<!-- 시술품목 -->
					<div>
						<label>전체</label>
						<input type="text" name="itemName" size="10"/>
						<input type="submit" value="검색"/>
					</div>
				</div>
			</form>
		</div>
	<hr>
		<!-- 회원검색결과 리스트 -->
		<div style="border: 1px double;">
			<div style="background-color: gray;">회원검색결과</div>
			<form action="" method="POST">
			<input type="hidden" name="shopCode" value="${sessionScope.shopCode}"/>
				<div>
					<table>
						<tr>
							<th>회원번호</th>
							<th>회원명</th>
							<th>담당자</th>
							<th>최근방문일</th>
							<th>총시술</th>
							<th>휴대폰</th>
							<th>관리</th>
						</tr>
						<c:forEach var="list" items="${list}">
							<tr>
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
			</form>
		</div>
		<!-- E시술품목 리스트DIV -->
	</div>
</body>
</html>