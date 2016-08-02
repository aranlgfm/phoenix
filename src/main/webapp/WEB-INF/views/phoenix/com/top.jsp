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
	<form action="/phoenix/com/form/searchResult" method="POST">
		<input type="text" name="word" value="${word}"/>
		<input type="submit" value="검색"/>
	
	<c:choose>
		<c:when test="${user ne null and user ne 'false'}">
			<span>${user.userNickName}님 환영합니다.</span>
			<select onchange="window.open(value, '_self');">
				<option>MyPage</option>
				<option value="/phoenix/com/form/userModification">회원정보수정</option>
				<option value="/phoenix/com/form/userWithdrawal">회원탈퇴</option>
				<option value="/phoenix/com/form/paymentList">주문결제내역</option>
				<option value="/phoenix/com/form/repaymentList">환불내역</option>
			</select>
			<a href="/phoenix/com/process/logout"><input type="button" value="로그아웃"/></a>
		</c:when>
		<c:otherwise>
			<a href="/phoenix/com/form/terms"><input type="button" value="회원가입"/></a>
			<a href="/phoenix/com/form/login"><input type="button" value="로그인"/></a>
		</c:otherwise>	
	</c:choose>
	</form>	
</div>

</body>
</html>