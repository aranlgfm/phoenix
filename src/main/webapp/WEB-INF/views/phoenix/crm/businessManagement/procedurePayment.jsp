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
			$(document).on("ready",function(){
				$("#itemSelect").on("change",function(){
					$("#itemFormCode").val($("#itemSelect").val());
 					$("#itemForm").submit();
				});
			});
		</script>
</head>

<body>
	<c:import url="businessManagementTemp.jsp"></c:import>
	<hr>
		<!-- 회원시술등록 -->
		<div style="border: 1px double;">
			<div style="background-color: gray;">회원시술등록</div>
			
			
			<!-- 임시폼 -->
				<form id="itemForm" action="/phoenix/crm/process/procedurePaymentSelectItemDesign" method="get">
					<input id="itemFormCode" name="itemCode" type="text" value="">
					<input name="ShopCode" type="text" value="${sessionScope.shopCode}">
				</form>
			<!-- 임시폼 -->
			
			
			<form action="/phoenix/crm/process/procedurePayment" method="POST">
				<div>
					<!-- 시술품목 -->
					<div>
						<div>시술정보선택</div>
						<div>
							<select id="itemSelect" name="itemCode">
							<c:choose>
								<c:when test="${itemDesignList ne null}">
									<c:forEach var="item" items="${itemList}">
										<c:forEach var="itemDesign" items="${itemDesignList}" begin="1" end="1">
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
							</select>
						
							<select name="itemDesignCode">
								<option value="">디자인선택</option>	
								<c:forEach var="item" items="${itemDesignList}">
									<option value="${item.itemDesignCode}">${item.itemDesignName}</option>
								</c:forEach>
							</select>
							<select name="itemCode">
								<option value="">담당자선택</option>	
								<c:forEach var="item" items="">
									<option value=""></option>
								</c:forEach>
							</select>
							
							<select name="itemCode">
								<option value="">결제방식</option>	
									<option value="">현금</option>
									<option value="">카드</option>
									<option value="">현금영수증</option>
							</select>
						</div>
					</div><!-- 시술정보/결제방식 -->
					<hr>
					<!-- 결제방식/메모 -->
					<div>
						<div>
							<label>시술가격</label>
							<input type="text">
							
							<label>시술일</label>
							<select>
								<option>00-00-00</option>
							</select>
						</div>
						<div>
							<textarea rows="5" cols="50"></textarea>
						</div>
					</div>
				</div><!-- 전체form -->
				<input type="submit" value="등록">
				<input type="submit" value="취소">
			</form>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
</body>
</html>