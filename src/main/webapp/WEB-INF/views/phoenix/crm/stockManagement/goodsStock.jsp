<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 입고가 되고 나면 결제 하는 시스템으로 되어 있다 -->
	<form action="/phoenix/crm/form/insertingGoodsStock" method="post">
		<input type="submit" value="미용용품입고등록">
	</form>
	
	<form action="" method="post">
		<table>
			<tr>
				<td>
					입고일
				</td>
				<td>
					거래처
				</td>
				<td>
					제품명
				</td>
				<td>
					입고액
				</td>
				<td>
					담당자
				</td>
				<td>
					관리
				</td>
			</tr>
			<c:forEach var="list" items="${goodsStockList}">
				<tr>
					<td>
						${list.stockDate}
					</td>
					<td>
						${list.accountName}
					</td>
					<td>
						${list.goodsName}
					</td>
					<td>
						${list.purchaseForOneOrder}
					</td>
					<td>
						${list.employeeName}
					</td>
					<td>
						<input type="submit" value="상세">
						<input type="submit" value="결제">
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>