<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>/com/form/terms</title>
	<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
	<style>
		.textCenter{
			text-align: center;
		}
		.textRight{
			text-align: right;
		}
		.title{
			font-size: 30px;
			font-weight: bolder;
		}
		
		.divCenter{
			margin: auto;
		}
		
		div.center { 
	 		width:300px; 
	 		margin:auto;
	 		
 		}
 		
 		.centerT{
 			position:absolute;
 			width:300px; 
	 		margin:auto;
	 		text-align: center;
 		}
	</style>
</head>
<body>
	<c:import url="../../top.jsp"></c:import>
	
	<div id="all">
		<br/>
		<br/>
		
		<!-- 회원가입약관전체 -->
		<div class="center">
			<div class="textCenter title">
				회원가입약관
			</div>
			<br/>
			<br/>
			<div class="center">
				<h5 class="textCenter">기본가입약관</h5>
				<div>
					<textarea cols="40" rows="10">제 1 조 (목적) 이 약관은 네이버 주식회사 ("회사" 또는 "헤이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.제 1 조 (목적) 이 약관은 네이버 주식회사 ("회사" 또는 "헤이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.제 1 조 (목적) 이 약관은 네이버 주식회사 ("회사" 또는 "헤이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
					</textarea>
				</div>
				<div class="textRight">
				<input type="checkbox"/>동의
				</div>
				<br/>
				
				<h5 class="textCenter">개인정보동의</h5>
				<div>
					<textarea cols="40" rows="10">제 1 조 (목적) 이 약관은 네이버 주식회사 ("회사" 또는 "헤이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.제 1 조 (목적) 이 약관은 네이버 주식회사 ("회사" 또는 "헤이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.제 1 조 (목적) 이 약관은 네이버 주식회사 ("회사" 또는 "헤이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
					</textarea>
				</div>
				<div class="textRight">
				<input type="checkbox"/>동의
				</div>
				<br>
				<div class="centerT">
					<a class="btn btn-default btn-sm" href="/phoenix/com/form/joiningAsCustomer?group=basic">일반고객</a>
					<a class="btn btn-default btn-sm" href="/phoenix/com/form/joiningAsCustomer?group=designer">디자이너</a>
					<a class="btn btn-default btn-sm" href="/phoenix/com/form/joiningAsCustomer?group=director">미용실</a>
				</div>
			</div>
		</div><!-- 회원가입약관전체 -->
		
	</div>
</body>
</html>