<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GOODBYE</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
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
<script>
	$(document).ready(function(){
		// 카테고리 클릭 시 메뉴버튼 엑티브상태로 변화
		if($('#cate').val() != ''){
			if($('#cate').val() == 'free'){
				$('#free').addClass('active');
			}else if($('#cate').val() == 'hair'){
				$('#hair').addClass('active');
			}else if($('#cate').val() == 'shop'){
				$('#shop').addClass('active');
			}else if($('#cate').val() == 'designer'){
				$('#designer').addClass('active');
			}
		}else{
			$('#total').addClass('active');
		}
	});
</script>
</head>
<body>

<c:import url="../../top.jsp"></c:import>

<div id="all">

<!-- 상단 메뉴버튼 -->
	<ul class="nav nav-tabs">
		<li id="total"><a href="/phoenix/com/form/searchResult?word=${word}">통합</a></li>
		<li id="free"><a href="/phoenix/com/process/searchResult?cate=free&word=${word}">자유게시판</a></li>
		<li id="hair"><a href="/phoenix/com/process/searchResult?cate=hair&word=${word}">헤어게시판</a></li>
		<li id="shop"><a href="/phoenix/com/process/searchResult?cate=shop&word=${word}">미용실</a></li>
		<li id="designer"><a href="/phoenix/com/process/searchResult?cate=designer&word=${word}">디자이너</a></li>
	</ul>
	
	<input id="cate" type="hidden" value="${cate}"/>



<!-- 카테고리별 검색 -->
	<c:choose>
		<c:when test="${cate eq 'free'}">
			<div>
				<h5>자유게시판</h5>
				<!-- 셀렉트 다시 -->
				<c:forEach items="${list.freeArticle}" var="item">
					<div>${item.boardGroupCode} ${item.articleName}</div>
				</c:forEach>
			</div>
		</c:when>
		
		<c:when test="${cate eq 'hair'}">
			<div>
				<h5>헤어게시판</h5>
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
			</div>
		</c:when>
		
		<c:when test="${cate eq 'shop'}">
			<div>
				<h5>미용실</h5>	
				<!-- 셀렉트 다시 -->
				<c:forEach items="${list.shopList}" var="li">
					<div>${li.shopName}</div>
				</c:forEach>
			</div>
		</c:when>
		
		<c:when test="${cate eq 'designer'}">
			<div>
				<h5>디자이너</h5>
				<!-- 셀렉트 다시 -->
				<c:forEach items="${list.designerList}" var="li">
					<div>${li.userName} / ${li.shopName}</div>
				</c:forEach>
			</div>
		</c:when>



		<c:otherwise>
			<div>
				<h5>자유게시판</h5>
					<c:forEach items="${map.list.freeArticle}" var="item">
								<div>${item.boardGroupCode} ${item.articleName}</div>
					</c:forEach>
				<br/>
			</div>
				<hr>
				
			<div>
				<h5>디자이너 헤어게시판</h5>
					<c:forEach items="${map.list.hairArticle}" var="item">
								<div>${item.boardGroupCode} ${item.articleName}</div>
					</c:forEach>
					
					<div><img class="hairImg" src="/resources/test1.jpg"/></div>
					<div><a href="/phoenix/com/process/withdraw"><img class="hairImg" src="/resources/test2.jpg"/></a></div>
					<div><img class="hairImg" src="/resources/test3.jpg"/></div>
					<div><img class="hairImg" src="/resources/test4.jpg"/></div>
					<div><img class="hairImg" src="/resources/test5.jpg"/></div>
					<div class="cancle"></div>
					<br/>
			</div>
				<hr>
				
			<div>
				<h5>미용실</h5>
					<c:forEach items="${map.list.shopList}" var="item">
							<div>${item.shopName} ${item.shopAddress}</div>
					</c:forEach>					
				<br/>
			</div>
				<hr>
				
			<div>
				<h5>디자이너</h5>
					<c:forEach items="${map.list.designerList}" var="item">
							<div>${item.userName} ${item.shopName}</div>
					</c:forEach>	
				<br/>
			</div>
				<hr>

		</c:otherwise>
	</c:choose>
</div>
</body>
</html>