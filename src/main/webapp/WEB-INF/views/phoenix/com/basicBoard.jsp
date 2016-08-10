<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	.title
	{
		text-align: center;
	}
	.basicBoardList
	{
		width:60%;
		margin:auto;
		border: 1px;
	}
	.centerCell
	{
		text-align:center;
		vertical-align: middle;
	}
	.insertingArticle
	{
		width:60%;
		margin:auto;
		text-align:right;
	}
	.hairImg01,.hairImg02,.hairImg03,.hairImg04,.hairImg05,.hairImg06,.hairImg07,.hairImg08
	{
		width: 200px;
		height: 200px;
	}
	.previousDiv
	{
		float:left;
	}
	.nextDiv
	{
		float: right;
	}
</style>
<script>
	$(document).ready(function()
	{
			$(".previous").click(function()
			{
				$(".previousForm").attr("action","/phoenix/com/form/basicBoard");
				$(".previousForm").attr("method","get");
				$(".previousForm").submit();
			});	
			$(".next").click(function()
			{
				$(".nextForm").attr("action","/phoenix/com/form/basicBoard");
				$(".nextForm").attr("method","get");
				$(".nextForm").submit();
			})
	})
</script>
</head>

<!-- 실제 값들 가져오는 거 처리 해야함. 페이징해야되고, 글 몇개가져올지 해야되고. -->
<body>

	<c:import url="../../top.jsp"></c:import>
	
	<br><br><br>
	
	<div class="insertingArticle">
		<a href="/phoenix/com/form/insertingBasicArticle?boardGroupCode=COM_BOARDGROUP_3">글쓰기</a>
	</div>
	
	<br><br>
	
	<c:choose>
		<c:when test="${articleList[0].boardGroupCode eq 'COM_BOARDGROUP_1'}" >
			<div class="row">
				<div class="col-md-2">
					
				</div>
				<div class="col-md-2">
					<div class="articleDate01">
						여기에 날짜 및 시간
					</div>
					<div class="designerAtricleImg01">
						<a href=""><img class="hairImg01" src="/resources/test1.jpg"/></a>
					</div>
					<div class="designerAtricleTitle01">
						여기에 글 제목
					</div>		
				</div>
				<div class="col-md-2">
					<div class="articleDate02">
						여기에 날짜 및 시간
					</div>
					<div class="designerAtricleImg02">
						<a href=""><img class="hairImg02" src="/resources/test2.jpg"/></a>
					</div>
					<div class="designerAtricleTitle02">
						여기에 글 제목
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate03">
						여기에 날짜 및 시간
					</div>
					<div class="designerAtricleImg03">
						<a href=""><img class="hairImg03" src="/resources/test3.jpg"/></a>
					</div>	
					<div class="designerAtricleTitle03">
						여기에 글 제목
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate04">
						여기에 날짜 및 시간
					</div>
					<div class="designerAtricleImg04">
						<a href=""><img class="hairImg04" src="/resources/test4.jpg"/></a>
					</div>		
					<div class="designerAtricleTitle04">
						여기에 글 제목
					</div>
				</div>
				<div  class="col-md-2">
				</div>
			</div>
			
			<br><br><br>
			
			<div class="row">
				<div class="col-md-2">
					
				</div>
				<div class="col-md-2">
					<div class="articleDate05">
						여기에 날짜 및 시간
					</div>
					<div class="designerAtricleImg05">
						<a href=""><img class="hairImg05" src="/resources/test5.jpg"/></a>
					</div>
					<div class="designerAtricleTitle05">
						여기에 글 제목
					</div>		
				</div>
				<div class="col-md-2">
					<div class="articleDate06">
						여기에 날짜 및 시간
					</div>
					<div class="designerAtricleImg06">
						<a href=""><img class="hairImg06" src="/resources/test6.jpg"/></a>
					</div>
					<div class="designerAtricleTitle06">
						여기에 글 제목
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate07">
						여기에 날짜 및 시간
					</div>
					<div class="designerAtricleImg07">
						<a href=""><img class="hairImg07" src="/resources/test7.jpg"/></a>
					</div>	
					<div class="designerAtricleTitle07">
						여기에 글 제목
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate08">
						여기에 날짜 및 시간
					</div>
					<div class="designerAtricleImg08">
						<a href=""><img class="hairImg08" src="/resources/test8.jpg"/></a>
					</div>		
					<div class="designerAtricleTitle08">
						여기에 글 제목
					</div>
				</div>
				<div  class="col-md-2">
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="basicBoardList">
				<table class="table table-bordered">
					<tr>
						<td class="centerCell">글번호</td>
						<td class="centerCell">글제목</td>
						<td class="centerCell">작성시간</td>
						<td class="centerCell">작성자</td>
					</tr>
					<c:forEach var="list" items="${articleList}">
						<tr>
							<td class="centerCell">${list.articleNumber}</td>
							<td><a href="/phoenix/com/form/basicArticle?articleCode=${list.articleCode}">${list.articleName}</a></td>
							<td class="centerCell">${list.articleDate}</td>
							<td class="centerCell">${list.userNickName}</td>					
						</tr>
					</c:forEach>
				</table>
				<div>
					<c:choose>
						<c:when test="${articleList[0].currentPageNumber eq 1}" >
							
						</c:when>							
						<c:otherwise>
							<div class="previousDiv">
								<form class="previousForm">
									<input type="hidden" name="boardGroupCode" value="${articleList[0].boardGroupCode}">
									<input type="hidden" name="limitIndex" value="${articleList[0].limitIndex-10}">
									<input type="hidden" name="currentPageNumber" value="${articleList[0].currentPageNumber-1}">
									<input class="previous" type="button" value="이전">
								</form>
							</div>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${articleList[0].currentPageNumber eq articleList[0].totalPageNumber||articleList[0].totalArticleNumber<11}" >
							
						</c:when>
						<c:otherwise>
							<div class="nextDiv">
								<form class="nextForm">
									<input type="hidden" name="boardGroupCode" value="${articleList[0].boardGroupCode}">
									<input type="hidden" name="limitIndex" value="${articleList[0].limitIndex+10}">
									<input type="hidden" name="currentPageNumber" value="${articleList[0].currentPageNumber+1}">
									<input class="next" type="button" value="다음">
								</form>
							</div>
						</c:otherwise>
					</c:choose>
					
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>