<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertingGoods</title>
</head>
<body>
	
	<form action="/phoenix/crm/process/insertGoods" method="post">
			<table>
		
				
				<tr>
					<td>
						거래처선택
					</td>
					<td>					 
							<input type="text" name="accountCode">
							<!--
							<SELECT NAME=accountCode SIZE=1> 
					            <OPTION VALUE=1>하나</OPTION> 
					            <OPTION VALUE=2>둘</OPTION> 
					            <OPTION VALUE=3 SELECTED>바보</OPTION> 
					      	</SELECT> 
					      	-->  
				      	
					</td>
				</tr>
				<tr>
					<td>
						제품명
					</td>
					<td>
						<input type="text" name="goodsName">
					</td>
				</tr>
				<tr>
					<td>
						사입가
					</td>
					<td>
						<input type="text" name="butingGoodsUnitWon">원
					</td>
				</tr>
				<tr>
					<td>
						판매가
					</td>
					<td>
						<input type="text" name="saleGoodsUnitWon">원
					</td>
				</tr>
				<!-- <tr>
					<td>
						초기제고량(컬럼이 없음)
					</td>
					<td>
						<input type="text" name="">개
					</td>
				</tr> -->
				<tr>
					<td>
						메모
					</td>
					<td>
						<textarea name="goodsMemo" cols="150" rows="5"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="등록">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>