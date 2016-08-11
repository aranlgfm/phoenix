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
	
<div id="all">
	
	<h3><span class="label label-default">헤어게시판 최신글</span></h3>	
	<div class="row">
	<c:forEach begin="0" end="3" var="art" items="${articleList}">
		  <div class="col-xs-6 col-md-3">
			    <a href="/phoenix/com/form/basicArticle?articleCode=${art.articleCode}" class="thumbnail">
			    	${art.articleDate}
			      	<img src="${art.imgFileList[0].filePath}" alt="등록된 사진이 없습니다.">
			      	${art.articleName}
			    </a>
		  </div>
	</c:forEach>
	<c:forEach begin="4" end="7" var="art" items="${articleList}">
		  <div class="col-xs-6 col-md-3">
			    <a href="/phoenix/com/form/basicArticle?articleCode=${art.articleCode}" class="thumbnail">
			    	${art.articleDate}
			      	<img src="${art.imgFileList[0].filePath}" alt="등록된 사진이 없습니다.">
			      	${art.articleName}
			    </a>
		  </div>
	</c:forEach>
  </div>
	
		<h3><span class="label label-default">자유게시판 최신글</span></h3>	
			<!-- 자유게시판 -->
			<div class="basicBoardList">
				<table class="table table-bordered">
					<tr>
						<td class="centerCell">글번호</td>
						<td class="centerCell">글제목</td>
						<td class="centerCell">작성시간</td>
						<td class="centerCell">작성자</td>
					</tr>
					<c:forEach begin="0" end="4" var="list" items="${artList}">
						<tr>
							<td class="centerCell">${list.articleNumber}</td>
							<td><a href="/phoenix/com/form/basicArticle?articleCode=${list.articleCode}">${list.articleName}</a></td>
							<td class="centerCell">${list.articleDate}</td>
							<td class="centerCell">${list.userNickName}</td>					
						</tr>
					</c:forEach>
				</table>
			</div>
	
</div>
</body>
</html>