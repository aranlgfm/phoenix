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

	<h1>시술품목디자인 설정</h1>
	<c:import url="businessManagementTemp.jsp"></c:import>
	<h4>
		<a href="/phoenix/crm/form/procedureItemSetting">시술품목설정</a>
		<a href="/phoenix/crm/form/procedureItemDesignSetting">시술디자인설정</a>
	</h4>
	
	<font color="red">시술 품목의
						디자인을 등록하는 페이지 입니다.
	</font>
	
	<div style="border: 1px double;">	
		
		<!-- S시술품목별 시술디자인설정 -->
		<div>			
			<form action="/phoenix/crm/process/insertProcedureItemDesign" method="POST">
			<input type="text" name="shopCode" value="${sessionScope.shopCode}">
				<div>
					<div style="background-color: gray;">
						시술품목별 시술디자인설정
					</div>
					<!-- 시술품목 -->
					<div>
						<label>시술품목선택</label>
						<select name="itemCode">
							<option value="">::선택::</option>	
							<c:forEach var="item" items="${item}">
								<option value="${item.itemCode}">${item.itemName}</option>
							</c:forEach>
						</select>
					</div>
					<!-- 시술디자인 -->
					<div>
						<label>시술디자인명</label>
						<input type="text" name="itemDesignName" size="10"/>
					</div>
					<!-- 시술가격 -->
					<div>
						<label>시술가격</label>
						<input type="text" name="itemDesignPrice" size="10"/>
					</div>
					<input type="submit" value="등록하기"/>
				</div>
			</form>
		</div>
		<!-- E시술품목별 시술디자인설정 -->
		
		
		<!-- S시술품목 리스트 -->
		<div>
			<form action="" method="POST">
				<div>
					<div style="background-color: gray;">
						시술품목 리스트
					</div>
					<div>
						<table>
							<tr>
								<th>시술품목</th>
								<th>시술디자인</th>
								<th>시술가격</th>
								<th>관리</th>
							</tr>
							<tr>
								<td>컷트</td>	
								<td>어른컷트</td>	
								<td>10,000원</td>	
								<td>
									수정, 삭제는 자바스크립트로 구현해야 할것 같은데???
									<a href="">수정</a>
									<a href="">삭제</a>
								</td>	
							</tr>
						</table>
					</div>
				</div>
			</form>
		</div>
		<!-- E시술품목 리스트 -->
	</div>
	<!-- 전체DIV -->
	
</body>
</html>