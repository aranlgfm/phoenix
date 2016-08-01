<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<!-- test -->
	<c:set var="shopCode" value="CRM_SHOP_1" scope="session"/>
<!-- test -->
<input type="text" name="shopCode" value="${sessionScope.shopCode}">
	<h1>시술품목설정</h1>
	<c:import url="businessManagementTemp.jsp"></c:import>
	<h4>
		<a href="/phoenix/crm/form/procedureItemSetting">시술품목설정</a>
		<a href="/phoenix/crm/form/procedureItemDesignSetting">시술디자인설정</a>
	</h4>
	<font color="red">시술 품목을 등록하는 페이지 입니다.</font>
	
	<div style="border: 1px double;">	
		<!-- S시술품목 폼 -->
		<div>
			<div style="background-color: gray;">시술품목설정</div>
			<form action="/phoenix/crm/process/insertProcedureItem" method="POST">
				<div>
					
					<!-- 시술품목 -->
					<div>
						<label>시술품목명</label>
						<input type="hidden" name="itemCode" value="" size="10"/>
						<input type="hidden" name="shopCode" value="${sessionScope.shopCode}" size="10"/>
						<input type="text" name="itemName" size="10"/>
						<input type="submit" value="등록하기"/>
					</div>
				</div>
			</form>
		</div>
		<!-- E시술품목설정 -->
		
		<!-- S시술품목 리스트 -->
		<div>
			<div style="background-color: gray;">시술품목 리스트</div>
			<form action="" method="POST">
				<div>
					<table>
						<tr>
							<th>시술품목</th>
							<th>관리</th>
						</tr>
						<tr>
							<td>컷트</td>	
							<td>
								<a href="">수정</a>
								<a href="">삭제</a>
							</td>	
						</tr>
					</table>
				</div>
			</form>
		</div>
		<!-- E시술품목 리스트DIV -->
	</div>
	<!-- 전체DIV -->
	
</body>
</html>