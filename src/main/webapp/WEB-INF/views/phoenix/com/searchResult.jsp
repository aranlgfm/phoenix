<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>GOODBYE</title>
	<style>
		.hairImg{
			width: 200px;
			height: 200px;
			float: left;
			padding-right: 30px;
		}
		.cancle{
			clear: both;
		}
		.test{
			margin: auto;
		}
	</style>
</head>
<body>
<h1>
	검색결과
</h1>

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

<hr/>
<div>
	<a href="/phoenix/com/process/searchResult?cate=&word=${word}">통합</a>
	<a href="/phoenix/com/process/searchResult?cate=free&word=${word}">자유게시판</a>
	<a href="/phoenix/com/process/searchResult?cate=hair&word=${word}">헤어게시판</a>
	<a href="/phoenix/com/process/searchResult?cate=shop&word=${word}">미용실</a>
	<a href="/phoenix/com/process/searchResult?cate=designer&word=${word}">디자이너</a>
</div>
<hr/>

<c:choose>
		<c:when test="${cate eq 'free'}">
			<h3>자유게시판</h3>
			<hr>
			<!-- 셀렉트 다시 -->
			<c:forEach items="${list.freeArticle}" var="item">
								<div>${item.boardGroupCode} ${item.articleName}</div>
					</c:forEach>
		</c:when>
		
		<c:when test="${cate eq 'hair'}">
		
			<h3>헤어게시판</h3>
			<hr>	
			<!-- 셀렉트 다시 -->
			<c:forEach items="${list.hairArticle}" var="item">
						<div>${item.boardGroupCode} ${item.articleName}</div>
			</c:forEach>
			<div><img class="hairImg" src="/resources/test1.jpg"/></div>
			<div><a href="/phoenix/com/process/withdraw"><img class="hairImg" src="/resources/test2.jpg"/></a></div>
			<div><img class="hairImg" src="/resources/test3.jpg"/></div>
			<div><img class="hairImg" src="/resources/test4.jpg"/></div>
			<div><img class="hairImg" src="/resources/test5.jpg"/></div>
			<div class="cancle"></div>
		</c:when>
		
		<c:when test="${cate eq 'shop'}">
		
			<h3>미용실</h3>	
			<hr>
		</c:when>
		<c:when test="${cate eq 'designer'}">
		
			<h3>디자이너</h3>
			<hr>
			<!-- 셀렉트 다시 -->
			<c:forEach items="${list}" var="item">
				<c:forEach items="${item}" var="li">
					<c:if test="${li.boardGroupCode eq 'COM_BOARDGROUP_4'}">
						<div>${li.boardGroupCode} ${li.articleName}</div>
					</c:if>
				</c:forEach>
			</c:forEach>
		</c:when>
	
	
		<c:otherwise>
			<div>
				<h3>자유게시판</h3>
				<hr>
					<c:forEach items="${map.list.freeArticle}" var="item">
								<div>${item.boardGroupCode} ${item.articleName}</div>
					</c:forEach>
				<br/><br/><br/>
				</div>
				
				<div>
				<h3>디자이너 헤어게시판</h3>
				<hr>
					<c:forEach items="${map.list.hairArticle}" var="item">
								<div>${item.boardGroupCode} ${item.articleName}</div>
					</c:forEach>
					
					<div><img class="hairImg" src="/resources/test1.jpg"/></div>
					<div><a href="/phoenix/com/process/withdraw"><img class="hairImg" src="/resources/test2.jpg"/></a></div>
					<div><img class="hairImg" src="/resources/test3.jpg"/></div>
					<div><img class="hairImg" src="/resources/test4.jpg"/></div>
					<div><img class="hairImg" src="/resources/test5.jpg"/></div>
					<div class="cancle"></div>
					<br/><br/><br/>
				</div>
				<!-- 
					shopList
				
				 -->
				<div>
					<h3>미용실</h3>
					<hr>
					<c:forEach items="${map.list.shopList}" var="item">
							<div>${item.shopName} ${item.shopAddress}</div>
					</c:forEach>					

					<br/><br/><br/>
				</div>
				
				<div>
				<h3>디자이너</h3>
				<hr>
				<div>
					<c:forEach items="${map.list.designerList}" var="item">
							<div>${item.userName} ${item.shopName}</div>
					</c:forEach>	
				<br/><br/><br/>
				</div>
		</c:otherwise>
	</c:choose>

</body>
</html>