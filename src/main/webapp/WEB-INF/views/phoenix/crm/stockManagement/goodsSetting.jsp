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
	<table>
			<tr>
				<td>
					거래처명
				</td>
				<td>
					제품명
				</td>
				<td>
					사입단가
				</td>
				<td>
					판매단가
				</td>
				<td>
					재고량	
				</td>
				<td>
					관리
				</td>
			</tr>
			<c:forEach var="list" items="${goodsSetting}">
				<tr>
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
</body>
</html>