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
	#homeDiv {
		margin: 10px 300px;
	}
	.solid {
		border: 1px solid black;
		
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


<table id="homeDiv">
	<tr>
		<td>
			<div class="solid">
				<a href="/phoenix">
					<img src="/resources/com.JPG"/>
				</a>
			</div>
		</td>
		<td width="10%"></td>
		<td>
			<div class="solid">
				<a href="/phoenix/crm/form/login">
					<img src="/resources/crm.JPG"/>
				</a>
			</div>
		</td>
	</tr>
</table>



<div id="homeDiv">

</div>
</body>
</html>