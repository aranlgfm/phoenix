<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/phoenix</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	.title
	{
		text-align: center;
	}
	
	.hairImg01,.hairImg02,.hairImg03,.hairImg04,.hairImg05,.hairImg06,.hairImg07,.hairImg08
	{
		width: 200px;
		height: 200px;
	}
</style>
</head>
<body>

<c:import url="./top.jsp"></c:import>
	
	<br><br><br>
	
<div id="all">
	
	
	<div class="row">
	<c:forEach begin="0" end="3" var="art" items="${articleList}">
		  <div class="col-xs-6 col-md-3">
			    <a href="/phoenix/com/form/basicArticle?articleCode=${art.articleCode}" class="thumbnail">
			    	<div>${art.articleDate}</div>
			      	<img src="${art.imgFileList[0].filePath}" alt="등록된 사진이 없습니다.">
			      	<div>${art.articleName}</div>
			    </a>
		  </div>
	</c:forEach>
	<c:forEach begin="4" end="7" var="art" items="${articleList}">
		  <div class="col-xs-6 col-md-3">
			    <a href="/phoenix/com/form/basicArticle?articleCode=${art.articleCode}" class="thumbnail">
			    	<div>${art.articleDate}</div>
			      	<img src="${art.imgFileList[0].filePath}" alt="등록된 사진이 없습니다.">
			      	<div>${art.articleName}</div>
			    </a>
		  </div>
	</c:forEach>
  </div>
	
	
			<br><br>
			<br><br><br>
			
			<!-- 자유게시판 -->
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
	
</div>
</body>
</html>