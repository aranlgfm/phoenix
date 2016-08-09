<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>회원로그인</title>
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
	<c:import url="../../top.jsp"></c:import>
	<br/>
	<br/>
	<div id="all" class="left"><!-- 전체 -->
		<div class="textCenter title">
			로그인
		</div>	
		
		<br/>
		<br/>
		
		<c:if test="${user eq 'false'}">
			<h3 style="color: red;">해킹감지</h3>
		</c:if>
		<div class="center">
			<form class="form-horizontal" role="form" action="/phoenix/com/process/login" method="POST">
				<div class="form-group">
					<label class="control-label col-sm-4" for="userId">아이디:</label>
					 <div class="col-sm-8">
				      <input type="text" class="form-control" id="userId" name="userId" placeholder="6자이상 12자이하">
				    </div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-4" for="userPw">비밀번호:</label>
					 <div class="col-sm-8">
				      <input type="text" class="form-control" id="userPw" name="userPw" placeholder="6자이상 12자이하">
				    </div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-4"></label>
					<div class="col-sm-8">
						<button type="submit" class="btn btn-default">로그인</button>
						<a class="btn btn-default" href="/phoenix">취소</a>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-4"></label>
					<div class="col-sm-8">
						<a href="/phoenix/com/form/findingId">아이디 찾기</a>
						/
						<a href="/phoenix/com/form/findingPw">비밀번호 찾기</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>