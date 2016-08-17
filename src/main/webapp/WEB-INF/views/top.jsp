<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>phoenix</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	.topA:link {
		color: #ffffff;
		text-decoration: none;
	}
	
	.topA:active {
		color: #ffffff;
		text-decoration: none;
	}
	
	.topA:visited {
		color: #ffffff;
		text-decoration: none;
	}
	
	.topA:hover {
		color: #ffffff;
		text-decoration: none;
	}
	
	#crm {
		float: right;
		color: #000000;
	}
	
	#rightMenu {
		margin: 8px 0px;
	}
	
	#userNick {
		color: #ffffff;
	}
	
	#all {
		width: 70%;
		margin: auto;
	}
</style>
<script>
	$(document).ready(function() {
		$('#submitBtn').click(function() {
			if ($('#word').val() == '') {
				$('#word').attr('placeholder', '검색어를 입력하세요');
			} else {
				$('#searchForm').submit();
			}
		});
	});
</script>
</head>
<body>
	<div id="all">
		<div id="crm">
			<a id="crm" href="/phoenix/crm/form/login">CRM로그인</a> &nbsp; &nbsp; <a
				id="crm" href="/phoenix/com/form/swList">CRM구매</a>
		</div>

		<nav class="navbar navbar-inverse" style="clear: both;">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="/phoenix">로고</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="/">Home</a></li>
					<li><a
						href="/phoenix/com/form/basicBoard?boardGroupCode=COM_BOARDGROUP_3&&limitIndex=0&&currentPageNumber=1">자유게시판</a>
					</li>
					<li><a
						href="/phoenix/com/form/basicBoard?boardGroupCode=COM_BOARDGROUP_1&&limitIndex=0&&currentPageNumber=1">디자이너게시판</a></li>
					<li><a
						href="/phoenix/com/form/basicBoard?boardGroupCode=COM_BOARDGROUP_2&&limitIndex=0&&currentPageNumber=1">상담게시판</a></li>
					<li><a
						href="/phoenix/com/form/basicBoard?boardGroupCode=COM_BOARDGROUP_4&&limitIndex=0&&currentPageNumber=1">공지사항</a></li>
				</ul>

				<div class="nav navbar-nav navbar-right" id="rightMenu">
					<form id="searchForm" action="/phoenix/com/form/searchResult"
						method="POST" class="form-inline">
						<input id="word" class="form-control" type="text" name="word"
							value="${word}" placeholder="" /> <input id="submitBtn"
							class="btn btn-default" type="button" value="검색" /> &nbsp; &nbsp;
						<c:choose>
							<c:when test="${user ne null and user ne 'false'}">
								<span id="userNick">${user.userNickName}님 환영합니다.</span>
								<select onchange="window.open(value, '_self');">
									<option>MyPage</option>
									<option value="/phoenix/com/form/userModification">회원정보수정</option>
									<option value="/phoenix/com/form/userWithdrawal">회원탈퇴</option>
									<option value="/phoenix/com/form/paymentList">주문결제내역</option>
								</select>
								<a href="/phoenix/com/process/logout"><input
									class="btn btn-default" type="button" value="로그아웃" /></a>
							</c:when>
							<c:otherwise>
								<a class="topA" href="/phoenix/com/form/terms">회원가입</a> 
								&nbsp; &nbsp; 
								<a class="topA" href="/phoenix/com/form/login">로그인</a>
							</c:otherwise>
						</c:choose>
					</form>
				</div>

			</div>
		</nav>
	</div>
</body>
</html>