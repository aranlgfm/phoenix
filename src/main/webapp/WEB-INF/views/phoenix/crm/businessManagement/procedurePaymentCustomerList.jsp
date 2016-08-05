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
</head>

<body>
<!-- test -->
	<c:set var="shopCode" value="CRM_SHOP_1" scope="session"/>
	<c:set var="customerCode" value="CRM_CUSTOMER_1" scope="session"/>
<!-- test -->

	<c:import url="businessManagementTemp.jsp"></c:import>
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
			<input type="hidden" name="shopCode" value="${sessionScope.shopCode}" size="10"/>
				<div>
					<table>
						<tr>
							<th>회원번호</th>
							<th>회원명</th>
							<th>담당자</th>
							<th>최근방문일</th>
							<th>총시술</th>
							<th>휴대폰</th>
							<th>메모</th>
							<th>관리</th>
						</tr>
						<c:forEach var="list" items="${list}">
							<tr>
								<td>${list.customerCode}</td>
								<td>${list.customerName}</td>
								<td>${list.employeeName}</td>
								<td>${list.customerJoinDate}</td>
								<td>${list.customerCode}</td>
								<td>${list.customerCellphoneNumber}</td>
								<td>1회</td>	
								<td>${list.customerMemo}</td>	
								<td><a href="/phoenix/crm/form/insertProcedurePayment">등록</a></td>	
							</tr>
						</c:forEach>
					</table>
				</div>
			</form>
		</div>
		<!-- E시술품목 리스트DIV -->
	
</body>
</html>