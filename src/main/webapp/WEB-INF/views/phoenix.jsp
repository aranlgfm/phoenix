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
	<a href="/crm/form/login">CRM로그인</a>
	<a href="/crm/form/productList">CRM구매</a>
</div>

<hr>

<div>
	<a href="">로고</a>
</div>

<hr>

<div>
	<input type="text" value="검색창"/>
	<a href="/com/form/terms"><input type="button" value="회원가입"/></a>
	<a href="/com/form/login"><input type="button" value="로그인"/></a>
	로그인성공시 :
		<select onchange="window.open(value, '_self');">
			<option>MyPage</option>
			<option value="/com/form/userModification">회원정보수정</option>
			<option value="/com/form/userWithdrawal">회원탈퇴</option>
			<option value="/com/form/paymentList">주문결제내역</option>
			<option value="/com/form/refundList">환불내역</option>
		</select>
</div>

<hr>

<div>
	<a href="/com/form/freeBoard">자유게시판</a>
	<a href="/com/form/designerBoard">디자이너게시판</a>
	<a href="/com/form/consultationBoard">상담게시판</a>
	<a href="/com/form/noticeBoard">공지사항</a>
</div>

<hr>
<div>
	<a href="/com/form/designerBoardContent">게시글1</a>
	<a href="/com/form/designerBoardContent">게시글2</a>
	<a href="/com/form/designerBoardContent">게시글3</a>
</div>

</body>
</html>