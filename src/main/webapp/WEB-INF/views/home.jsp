<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	#bo {
		background-color : #000000;
		color: #ffffff;
	}
	#bottomText {
		margin: 30px;
		text-align: center;
	}
	.homeImg {
		float: left;
		margin-right: 50px;
	}
	#homeDiv {
		margin: 10px 300px;
	}
</style>
</head>
<body>
<div id="bo">
	<br>
	<div id="bottomText">
		<p>팀명 : 불사조</p>
		<p>팀원 : 구아란, 차이수, 강재욱, 신복기, 김원중, 이승주</p>
		<p>주제 : 헤어커뮤니티와 미용실CRM을 동시에 가지고 있는 스프링MVC기반의 웹응용프로그램</p>
		<p>소속 : 한국스마트정보교육원</p>
		<p>개발환경 : java1.8, HTML5, CSS, jquery, spring</p>
	</div>
	<br>
</div>

<div id="homeDiv">
	<div class="homeImg">
		<a href="/phoenix">
			<img src="/resources/com.png"/>
		</a>
	</div>
	<div>
		<a href="/phoenix/crm/form/login">
			<img src="/resources/crm.png"/>
		</a>
	</div>
</div>
</body>
</html>