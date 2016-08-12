<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/userWithdrawal</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
	<style>
		
		.textCenter{
			text-align: center;
			margin-top: 150px;
		}
		.textRight{
			text-align: right;
		}
		.title{
			font-size: 30px;
			font-weight: bolder;
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
	<div id="all" class="left"><!-- 전체 -->
		<div class="textCenter title">
		회원탈퇴
		</div>
		<br>
	<div class="center">
		<form class="form-horizontal" action="/phoenix/com/process/withdraw" method="POST">
		<div class="form-group">
			<input type="checkbox"/>정말 탈퇴하시겠습니까?
		</div>
			<input name="userCode" type="hidden" value="${sessionScope.user.userCode}"/>
		<div class="form-group">
			<label class="control-label col-sm-3">비밀번호 : </label>
			<div class="col-sm-4">
				<input  name="userPw" type="password"/>
			</div>	
		</div>
		<div class="form-group centerT"> 
			<div class="center col-sm-10">
				<input class="btn btn-default" type="submit" value="확인"/>
				<a class="btn btn-default" href="/phoenix">취소</a>
			</div>
		</div>		
		</form>
	</div>
	</div>
</body>
</html>