<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	
	<div id="all">
		<hr>
		<a class="btn btn-primary" href="stockManagementSetting">거래처 설정</a>
		<a class="btn btn-primary" href="stockManagementSetting">미용용품 설정</a>
		<br><br>
		<form action="/phoenix/crm/form/insertingGoods" method="get">
			<input class="btn btn-default tag" type="submit" value="미용용품 설정등록">
		</form>	
		<br>
				<table class="table table-hover">
					<tr class="textCenter">
						<th>
							거래처명
						</th>
						<th>
							제품명
						</th>
						<th>
							사입단가
						</th>
						<th>
							판매단가
						</th>
						<th>
							재고량	
						</th>
						<th>
							관리
						</th>
					</tr>
					<c:forEach var="list" items="${goodsSetting}">
						<tr class="textCenter">
		 					<td>
		 						${list.employeeCode}
		 					</td>		
							<td>
								${list.goodsName}
							</td> 			
							<td>
								${list.butingGoodsUnitWon}
							</td> 
							<td>
								${list.saleGoodsUnitWon}
							</td> 	
							<td>
								재고량 어떡하냐
							</td>
							<td>
								<input type="button" value="상세">
								<input type="button" value="삭제">
							</td> 					
						</tr>
					</c:forEach>
		</table>
		
	</div>	
</body>
</html>