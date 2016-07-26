<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/phoenix</title>
</head>
<body>

<div>
	<a href="/phoenix">HOME</a>
	<a href="/crm/form/login">CRM로그인</a>
	<a href="/crm/form/productList">CRM구매</a>
</div>

<hr>

<div>
	<a href="">로고</a>
</div>

<hr>

<div>
	<form action="/phoenix/com/form/searchResult" method="post">
		<input type="text" value="검색창"/>
		<input type="submit" value="검색"/>
	
	<a href="/phoenix/com/form/terms"><input type="button" value="회원가입"/></a>
	<a href="/phoenix/com/form/login"><input type="button" value="로그인"/></a>
	로그인성공시 :
		<select onchange="window.open(value, '_self');">
			<option>MyPage</option>
			<option value="/phoenix/com/form/userModification">회원정보수정</option>
			<option value="/phoenix/com/form/userWithdrawal">회원탈퇴</option>
			<option value="/phoenix/com/form/paymentList">주문결제내역</option>
			<option value="/phoenix/com/form/refundList">환불내역</option>
		</select>
	</form>	
</div>

</body>
</html>