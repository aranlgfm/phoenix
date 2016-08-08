<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>/phoenix/com/form/joiningAsCustomer</title>
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
		
 		div.center { 
	 		width:550px; 
	 		margin:auto;
	 		
 		}
 		
 		.centerT{
 			position:absolute;
 			width:550px; 
	 		margin:auto;
	 		text-align: center;
 		}

	</style>
</head>

<body class="margin">
	<c:import url="../../top.jsp"></c:import>
	<br/>
	<br/>
	<div id="all"><!-- 전체 -->
		<div class="textCenter title">
			회원가입
		</div>
		
		<br/>
		<br/>
		<div class="center">
			<form class="form-horizontal" role="form" action="/phoenix/com/process/joiningAsCustomer" method="POST">
			<input type="hidden" name="userGroupName" value="${group}"/>
							
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userId">아이디:</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="userId" name="userId" placeholder="6자이상 12자이하">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userPw">비밀번호:</label>
			    <div class="col-sm-4">
			      <input type="password" class="form-control" id="userPw" name="userPw" placeholder="6자이상 12자이하">
			    </div>
			  </div>
			 
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userRePw">비밀번호확인:</label>
			    <div class="col-sm-4"> 
			      <input type="password" class="form-control"id="userRePw" placeholder="다시입력해">
			    </div>
			  </div>
			 
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userName">이름:</label>
			   <div class="col-sm-4">
			      <input type="text" class="form-control" id="userName" name="userName" placeholder="이름을 입력하세요">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userNickName">닉네임:</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="userNickName" name="userNickName" placeholder="닉네임 입력하세요">
			    </div>
			  </div>
			  
			<div class="form-group">
			<label class="control-label col-sm-3" for="userSexFlag">성별:</label>
				<div class="col-sm-4">
					  <label><input type="radio" name="userSexFlag" value="0">남</label>
					  <label><input type="radio" name="userSexFlag" value="1">여</label>
				</div>
			</div>
			  
			  <hr>
							
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userPostNumber">우편번호:</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" id="userPostNumber" name="userPostNumber" placeholder="우편번호">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userAddress">상세주소:</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="userAddress" name="userAddress" placeholder="상세주소">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userPhoneNumber">집전화번호:</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="userPhoneNumber" name="userPhoneNumber" placeholder="니네집전화">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userCellphoneNumber">핸드폰번호:</label>
				      <div class="col-sm-9 row">
					      <div class="col-xs-3">
					      	<input type="text" class="form-control col-xs-2" id="userCellphoneNumber" name="userCellphoneNumber" placeholder="">
					      </div>
					      <div class="col-xs-3">
					      	<input type="text" class="form-control" id="userCellphoneNumber" name="userCellphoneNumber" placeholder="">
					      </div>
					      <div class="col-xs-3">
					      	<input type="text" class="form-control" id="userCellphoneNumber" name="userCellphoneNumber" placeholder="">
					      </div>
				      </div>
				  </div>
			  
			  
			
			  <div class="form-inline form-group">
			    <label class="control-label col-sm-3" for="userEmailAddress">이메일:</label>
			    <div class="col-sm-9">
			     <input type="text" class="form-control" id="userEmailAddress" name="userEmailAddress" placeholder="이메일입력">@
			     <select class="form-control">
			      		<option>::선 택::</option>
						<option>gmail.com</option>
						<option>naver.com</option>
						<option>daum.net</option>
						<option>yahoo.co.kr</option>
						<option>nate.com</option>
						<option>cafe24.com</option>
						<option>ksmart.org</option>
			      </select>
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userBirthdayDate">생년월일:</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="userBirthdayDate" name="userBirthdayDate" placeholder="너의생일">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userAnniversaryDate">기념일:</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="userAnniversaryDate" name="userAnniversaryDate" placeholder="Enter email">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="control-label col-sm-3" for="userIntroduceContent">자기소개:</label>
			    <div class="col-sm-8">
			      <textarea class="form-control" rows="3" cols="20" id="userIntroduceContent" name="userIntroduceContent"></textarea>
			    </div>
			  </div>
			  
			  <div class="form-group centerT"> 
			    <div class="center col-sm-10">
			      <button type="submit" class="btn btn-default">등록</button>
			      <a class="btn btn-default" href="/phoenix/com/form/terms">취소</a>
			    </div>
			  </div>
			</form>
			<!-- 여기도 확인버튼 분기시켜야함. 디자이너나 원장이 가입하면 요청이 달라야함. 페이지 다름. -->
		</div>
	</div><!-- 전체 -->
</body>
</html>