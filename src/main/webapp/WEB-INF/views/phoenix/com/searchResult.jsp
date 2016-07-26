<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
	<a href="/phoenix/com/form/searchResult?cate=&searchWord=">통합</a>
	<a href="/phoenix/com/form/searchResult?cate=free&searchWord=">자유게시판</a>
	<a href="/phoenix/com/form/searchResult?cate=hair&searchWord=">헤어게시판</a>
	<a href="/phoenix/com/form/searchResult?cate=shop&searchWord=">미용실</a>
	<a href="/phoenix/com/form/searchResult?cate=designer&searchWord=">디자이너</a>
</div>
<hr/>


<c:choose>
		<c:when test="${cate eq 'free'}">
		
			<h3>자유게시판</h3>
			<hr>
		</c:when>
		<c:when test="${cate eq 'hair'}">
		
			<h3>헤어게시판</h3>
			<hr>	
		</c:when>
		<c:when test="${cate eq 'shop'}">
		
			<h3>미용실</h3>	
			<hr>
		</c:when>
		<c:when test="${cate eq 'designer'}">
		
			<h3>디자이너</h3>
			<hr>
		</c:when>
		<c:otherwise>
			<div>
				<h3>자유게시판</h3>
				<hr>
					<div><a href="http://www.google.com">구글</a></div>
					<div><a href="http://www.naver.com">네이버</a></div>
					<div><a href="http://www.daum.net">다음</a></div>
					<div><a href="http://www.todayhumor.co.kr">오유</a></div>
					<div><a href="http://www.overlog.gg">오버로그</a></div>
				<br/><br/><br/>
				</div>
				
				<div>
				<h3>헤어게시판</h3>
				<hr>
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
				<h3>디자이너</h3>
				<hr>
				<div>무한도전 미용실 가지마세요!!!</div>
				<div>가나 헤어 노노</div>
				<div>안가나 말가나</div>
				<div>구아란 헤어샾 완전 헬</div>
				<br/><br/><br/>
				</div>
		</c:otherwise>
	</c:choose>

</body>
</html>