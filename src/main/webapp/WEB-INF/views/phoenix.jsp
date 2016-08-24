<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>phoenix</title>
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
	#imgBox {
		width : 200px;
		height : 200px;
	}
	#bo {
		background-color : #000000;
		color: #ffffff;
	}
	#bottomText {
		margin: 30px;
		text-align: center;
	}
</style>
</head>
<body>

<c:import url="./top.jsp"></c:import>
	
<div id="all">
	
	<h3><span class="label label-default">헤어게시판 최신글</span></h3>	
		<div class="row">
		<c:forEach begin="0" end="3" var="art" items="${articleList}">
			  <div class="col-xs-6 col-md-3 title">
				    <a href="/phoenix/com/form/basicArticle?articleCode=${art.articleCode}" class="thumbnail">
				    	${fn:substring(art.articleDate,0,10)}
				      	<img id="imgBox" src="${art.imgFileList[0].filePath}" alt="등록된 사진이 없습니다.">
				      	${art.articleName}
				    </a>
			  </div>
		</c:forEach>
		<c:forEach begin="4" end="7" var="art" items="${articleList}">
			  <div class="col-xs-6 col-md-3 title">
				    <a href="/phoenix/com/form/basicArticle?articleCode=${art.articleCode}" class="thumbnail">
				    	${fn:substring(art.articleDate,0,10)}
				      	<img id="imgBox" src="${art.imgFileList[0].filePath}" alt="등록된 사진이 없습니다.">
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
			
			<br>

		<div id="bo">
			<br>
			<div id="bottomText">
				<p>팀명 : 불사조</p>
				<p>팀원 : 구아란, 차이수, 강재욱, 신복기, 김원중, 이승주</p>
				<p>주제 : 헤어커뮤니티와 미용실CRM을 동시에 가지고 있는 스프링MVC기반의 웹응용프로그램</p>
				<p>소속 : <a href="http://www.ksmart.or.kr" style="color : #ffffff;">한국스마트정보교육원(http://www.ksmart.or.kr)</a> 대표번호 : 063-717-1008</p>
				<p>개발환경 : java1.8, HTML5, JQuery 3.1.0, SpringFramework4.0.9, Jackson(JSON) 2.4.3, CSS, 
				<br>
				bootstrap 3.3.6, Mybatis 3.2.8, mysql 5.1.34, mysql-Workbench 6.3, servlet 3.1.0, jsp 2.2, jstl 1.2,
				<br>
				Apache Tomcat 8.0, Spring Tool Suite 3.7.3, JRebel for Eclipse 6.4.7, Git
				</p>
			</div>
			<br>
		</div>
	
</div>
</body>
</html>