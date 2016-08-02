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
	<table>
		<tr>
			<td>
				최종사용일
			</td>
			<td>
				거래처명
			</td>
			<td>
				미용용품명
			</td>
			<td>
				사용수량
			</td>
			<td>
				사용직원
			</td>
			<td>
				관리
			</td>
		</tr>
		<c:forEach var="list" items="${goodsUseList}">
			<tr>
				<td>
					${list.useDate}
				</td>
				<td>
					${list.accountName}
				</td>
				<td>
					${list.goodsName}
				</td>
				<td>
					${list.useQuantityNumber}
				</td>
				<td>
					${list.employeeName}
				</td>
				<td>
					버튼 들어가야
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>