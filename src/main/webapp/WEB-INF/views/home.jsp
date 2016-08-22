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
		font-size: "3";
	}
	
	.paDiv {
		width: 70%;
		margin: auto;
		text-align:center;
	}
	
	#chDiv {
		float : left;
		width : 50%;
	}
</style>
</head>
<body>
<div id="bo" class="paDiv">
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
		Apache Tomcat 8.0, Spring Tool Suite 3.7.3, JRebel for Eclipse 6.4.7
		</p>
	</div>
	<br>
</div>

<br>

<div class="paDiv">
	<div id="chDiv">
		<a href="/phoenix">
			<img src="/resources/com.JPG"/>
		</a>
	</div>
	<div>
		<a href="/phoenix/crm/form/login">
			<img src="/resources/crm.JPG"/>
		</a>
	</div>
</div>

<hr style="width:70%;">

<div class="paDiv">
	<img style="width:90%;" src="/resources/erd.png"/>
</div>

<hr style="width:70%;">

<div class="paDiv">
	<div style="float: left;">
		<img src="/resources/com_flow.png"/>
	</div>
	<div>
		<img src="/resources/crm_flow.png"/>
	</div>
</div>

</body>
</html>