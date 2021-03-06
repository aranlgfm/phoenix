<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	
	<div id="all">
	<hr>
	<div class="divTh">여기는 미용용품 입고 등록 화면임</div>
	<br>
	<!-- 셀렉트 부분 동적쿼리로 만들어야 한다 -->
	<form action="/phoenix/crm/process/insertGoodsStock" method="post">
		<table>
			<tr>
				<td>
					입고일
				</td>
				<td>
					<input class="form-control" type="text" name="stockDate">
				</td>
			</tr>
			<tr>
				<td>
					담당직원
				</td>
				<td>
					<select class="form-control" name="employeeName">
						<option value="비와이">비와이</option>
						<option value="씨잼">씨잼</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					거래처
				</td>
				<td>
					<select class="form-control" name="accountName">
						<option value="삼성">삼성</option>
						<option value="LG">LG</option>
						<option value="SK">SK</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>입고 미용용품</td>
				<td>
					<select class="form-control" name="goodsName">
						<option value="샴푸">샴푸</option>
						<option value="린스">린스</option>
						<option value="에센스">에센스</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					단가
				</td>
				<td>
					<input class="form-control" type="text" name="buyingGoodsUnitWon">
				</td>
			</tr>
			<tr>
				<td>
					수량
				</td>
				<td>
					<input class="form-control" type="number" name="goodsQuantityNumber">
				</td>
			</tr>
			<tr>
				<td>
					<input class="form-control" type="submit" value="등록">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>