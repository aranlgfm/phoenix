<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/login</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
	.allLeft 
	{
		margin-left: -100px;
	}
	.textCenter{
		text-align: center;
		margin-top: 250px;
		
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
<div class="allLeft">
	<div>
		<div class="textCenter title">
			로그인
		</div>
		
		<br>
			<c:if test="${user eq 'false'}">
				<h3 style="color: red;">해킹감지</h3>
			</c:if>
		<div class="center"> 
			<form class="form-horizontal" action="/phoenix/crm/process/login" method="POST">
				<div class="form-group">
					<label class="control-label col-sm-4">미용실코드 : </label>
					<div class="col-sm-8">
						<input class="form-control" type="text" name="shopCode" value="CRM_SHOP_1"/>
					</div>
				</div>
	
				<div class="form-group">	
					<label class="control-label col-sm-4">아이디 : </label>
					<div class="col-sm-8">
						<input class="form-control" type="text" name="userId" value="111"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-4">비밀번호 : </label>
					<div class="col-sm-8">
						<input class="form-control" type="password" name="userPw" value="111"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-4"></label>
					<div class="col-sm-8">
						<button class="btn btn-default" type="submit">로그인</button>
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
</div>
</body>
</html>