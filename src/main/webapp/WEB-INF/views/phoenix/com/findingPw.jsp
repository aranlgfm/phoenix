<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- 다음 우편번호 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
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

	.textWarn {
		font-weight:bolder;
		color: red;
	}
</style>
<script>
	$(document).ready(function(){
		// 버튼클릭하면 아이디 찾아서 보여주기
		$('#btn').click(function(){
			$.ajax({
				url : "/phoenix/com/process/findingPw",
				type: "post",
				data : {"userId" : $('#userId').val(), "userEmailAddress" : $('#userEmailAddress').val()},
				success : function(user){
					if(user.result == null){
						$('#msg').html('일치하는 회원이 없습니다.');
					}else{
						$('#msg').html('비밀번호는 <strong>'+user.result+'</strong>입니다.');
					}
				}
			})
		});
	});
</script>
</head>
<body>
<c:import url="../../top.jsp"></c:import>
	<br/>
	<br/>
	<div id="all" class="left"><!-- 전체 -->
		<div class="textCenter title">
			비밀번호 찾기
		</div>	
		
		<br/>
		<br/>

		<div class="center">
	
			<form class="form-horizontal" role="form">
				
				<div class="form-group">
					<p>가입시 입력한 비밀번호와 이메일 주소를 적어주세요.</p>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-4" for="userId">아이디:</label>
					 <div class="col-sm-8">
				      <input type="text" class="form-control" id="userId"/>
				    </div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-4" for="userPw">이메일:</label>
					 <div class="col-sm-8">
				      <input type="text" class="form-control" id="userEmailAddress"/>
				    </div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-4"></label>
					<div class="col-sm-8">
						<button id="btn" type="button" class="btn btn-default">찾기</button>
						<a class="btn btn-default" href="/phoenix/com/form/login">로그인</a>
					</div>
				</div>
				
				<div class="form-group">
					<div class="center col-sm-10">
						<span id="msg" class="textWarn"></span>
					</div>
				</div>
				
			</form>
		</div>
	</div>
	
</body>
</html>