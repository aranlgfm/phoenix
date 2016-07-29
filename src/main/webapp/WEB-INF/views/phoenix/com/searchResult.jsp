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
	<c:import url="./top.jsp"></c:import>
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
			<c:forEach items="${list}" var="item">
						<c:forEach items="${item}" var="li">
							<c:if test="${li.boardGroupCode eq 'COM_BOARDGROUP_3'}">
								<div>${li.boardGroupCode} ${li.articleName}</div>
							</c:if>
						</c:forEach>
			</c:forEach>
		</c:when>
		
		<c:when test="${cate eq 'hair'}">
		
			<h3>헤어게시판</h3>
			<hr>	
			<!-- 셀렉트 다시 -->
			<c:forEach items="${list}" var="item">
				<c:forEach items="${item}" var="li">
					<c:if test="${li.boardGroupCode eq 'COM_BOARDGROUP_1'}">
						<div>${li.boardGroupCode} ${li.articleName}</div>
					</c:if>
				</c:forEach>
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
					<c:forEach items="${list}" var="item">
						<c:forEach items="${item}" var="li">
							<c:if test="${li.boardGroupCode eq 'COM_BOARDGROUP_3'}">
								<div>${li.boardGroupCode} ${li.articleName}</div>
							</c:if>
						</c:forEach>
					</c:forEach>
				<br/><br/><br/>
				</div>
				
				<div>
				<h3>디자이너 헤어게시판</h3>
				<hr>
					<c:forEach items="${list}" var="item">
						<c:forEach items="${item}" var="li">
							<c:if test="${li.boardGroupCode eq 'COM_BOARDGROUP_1'}">
								<div>${li.boardGroupCode} ${li.articleName}</div>
							</c:if>
						</c:forEach>
					</c:forEach>
					<div><img class="hairImg" src="/resources/test1.jpg"/></div>
					<div><a href="/phoenix/com/process/withdraw"><img class="hairImg" src="/resources/test2.jpg"/></a></div>
					<div><img class="hairImg" src="/resources/test3.jpg"/></div>
					<div><img class="hairImg" src="/resources/test4.jpg"/></div>
					<div><img class="hairImg" src="/resources/test5.jpg"/></div>
					<div class="cancle"></div>
					<br/><br/><br/>
				</div>
				<div>
					<h3>미용실</h3>
					<hr>
					<div>무한도전 미용실</div>
					<div>가나 헤어</div>
					<div>안가나 미용실</div>
					<div>구아란 헤어샾</div>
					<br/><br/><br/>
				</div>
				
				<div>
				<h3>공지사항</h3>
				<hr>
				<div>
					<c:forEach items="${list}" var="item">
						<c:forEach items="${item}" var="li">
							<c:if test="${li.boardGroupCode eq 'COM_BOARDGROUP_4'}">
								<div>${li.boardGroupCode} ${li.articleName}</div>
							</c:if>
						</c:forEach>
					</c:forEach>피닉수헤어 이벤트</div>
				<br/><br/><br/>
				</div>
		</c:otherwise>
	</c:choose>

</body>
</html>