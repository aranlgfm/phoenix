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
	<!-- 다음 우편번호 api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
		<script>
			$(document).ready(function(){
				$('#submitBtn').click(function(){
					if($('#customerName').val() == ''){
						$('#msg').html('고객명을 입력해주세요.');
					}else if($('#phoneNo1').val() == '' || $('#phoneNo2').val() == '' || $('#phoneNo3').val() == ''){
						$('#msg').html('전화번호를 입력해주세요.');
		 			}else if(!($('.flag').is(':checked'))){
		 				$('#msg').html('성별을 선택해주세요.');
		 			}else if(($('#day1').val() == '' || $('#day2').val() == '' || $('#day3').val() == '') || $('#selectDate').val == ''){
		 				$('#msg').html('최초방문일을 입력해주세요.');
		 			}else if($('#email').val() == '' || $('#mailDomain').val() == ''){
		 				$('#msg').html('이메일을 입력해주세요.');
		 			}else if($('#phoneNo1').val() != '' && $('#phoneNo2').val() != '' && $('#phoneNo3').val() != ''){
					}else{
						//화면에 입력된 것들 합치기 전화번호 생일 등
						$('#customerFirstVisitDate').val($('#day1').val()+'-'+$('#day2').val()+'-'+$('#day3').val());
		 				$('#customerCellphoneNumber').val($('#phoneNo1').val()+$('#phoneNo2').val()+$('#phoneNo3').val());
						$('#customerBirthDate').val($('#birth1').val()+'-'+$('#birth2').val()+'-'+$('#birth3').val());
		 				if($('#daumPostAddr').val() != ''){
		 					$('#customerAddress').val($('#daumPostAddr').val()+'^'+$('#userPutAddr').val());
		 				}
		 				$('#customerEmailAddress').val($('#email').val()+'@'+$('#mailDomain').val());
		 				$('#customerAnniversaryDate').val($('#anni1').val()+'-'+$('#anni2').val()+'-'+$('#anni3').val());
						$('#insertForm').submit();
					}
				});
				
				
				
				
				// 우편번호찾기 후에 데이터 입력
				$('#searchPostNumber').click(function(){
					new daum.Postcode({
				        oncomplete: function(data) {
				        	console.log(data);
				        	$('#searchAddress').val(data.roadAddress);
				        	$('#userPostNumber').val(data.zonecode);
				        }
				    }).open();
				});//우편번호
				
				// 오늘 버튼 눌렀을 때 오늘날짜 입력되게 하기
				$('#putToday').click(function(){
					var today = '${today}';
					var day1 = today.substring(0, 4);
					var day2 = today.substring(4, 6);
					var day3 = today.substring(6, 8);
					$('#day1').val(day1);
					$('#day2').val(day2);
					$('#day3').val(day3);
				});
				
				
				//메일선택시~
				$("#selectEmailDomain").change(function(){
					$("#userEmailDomain").val($("#selectEmailDomain").val());
				});
				
			});
		
		</script>
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

<body>
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
			      <input type="text" class="form-control" id="userId" name="userId" placeholder="6자이상 12자이하" maxlength="12">
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
					  <label class="radio-inline"><input type="radio" name="userSexFlag" value="0">남</label>
					  <label class="radio-inline"><input type="radio" name="userSexFlag" value="1">여</label>
				</div>
			</div>
			  
			<hr>
			<!-- 우편번호 -->
			<div class="form-group">
				<label class="control-label col-sm-3" for="userPostNumber">우편번호:</label>
				<div class="col-sm-9 row">
					<div class="col-xs-4">
						<input type="text" class="form-control" id="userPostNumber" name="userPostNumber" readonly="readonly">
					</div>
					<div class="col-xs-3">
						<input type="button" id="searchPostNumber" class="btn btn-info" value="우편번호">
					</div>
				</div>
			</div>
			
			<!-- 상세주소 -->
			<div class="form-group">
				<label class="control-label col-sm-3" for="userAddress">상세주소:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="searchAddress" readonly="readonly">
					<input type="text" class="form-control" id="userPutAddress" >
					<!-- 전체다 넘길 주소값 --> 
					<input id="userAddress" name="userAddress" type="hidden"/>
				</div>
			</div>
			
			<!-- 집전화번호 -->
			<div class="form-inline form-group">
			<label class="control-label col-sm-3" for="userPhoneNumber">집전화번호:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="userPhoneNumber1" size="1" maxlength="3">&nbsp;-&nbsp;
					<input type="text" class="form-control" id="userPhoneNumber2" size="1" maxlength="4">&nbsp;-&nbsp;
					<input type="text" class="form-control" id="userPhoneNumber3" size="1" maxlength="4">
					<!-- 전체다 넘길 집전화번호 --> 
					<input id="userPhoneNumber" name="userPhoneNumber" type="hidden"/>
				</div>
			</div>



			<!-- 핸드폰번호 -->
			<div class="form-inline form-group">
			<label class="control-label col-sm-3" for="userCellphoneNumber">핸드폰번호:</label>
				<div class="col-sm-9">
						<input type="text" class="form-control" id="userCellphoneNumber1" size="1" maxlength="3">&nbsp;-&nbsp; 
						<input type="text" class="form-control" id="userCellphoneNumber2" size="1" maxlength="4">&nbsp;-&nbsp; 
						<input type="text" class="form-control" id="userCellphoneNumber3" size="1" maxlength="4">	
					<!-- 전체다 넘길 집전화번호 --> 
					<input id="userCellphoneNumber3" name="userCellphoneNumber3" type="hidden"/>
				</div>
			</div>
			
			
			<!-- 이메일 -->
			<div class="form-inline form-group">
			<label class="control-label col-sm-3" for="userEmailAddress">이메일:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="userEmailId" name="userEmailId" placeholder="이메일" size="5">&nbsp;@&nbsp;
					<input type="text" class="form-control" id="userEmailDomain" name="userEmailDomain" size="7">
					<select class="form-control" id="selectEmailDomain">
						<option value="">::직접입력::</option>
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="yahoo.co.kr">yahoo.co.kr</option>
						<option value="nate.com">nate.com</option>
					</select>
				</div>
<!-- 				유저이메일 -->
				<input type="hidden" id="userEmailAddress" name="userEmailAddress">
			</div>
			
			
			
			<!-- 생년월일 -->  
			<div class="form-group">
				<label class="control-label col-sm-3" for="userBirthdayDate">생년월일:</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="userBirthdayDate" name="userBirthdayDate">
				</div>
				<!-- 유저생일 -->
				<input id="userBirthdayDate" name="userBirthdayDate" type="hidden"/>
			</div>
			 
			<!-- 기념일 -->
			<div class="form-group">
			<label class="control-label col-sm-3" for="userAnniversaryDate">기념일:</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="userAnniversaryDate" name="userAnniversaryDate">
				</div>
<!-- 				유저기념일 -->
<!-- 				<input id="userAnniversaryDate" name="userAnniversaryDate" type="hidden"/> -->
			</div>
			
			<!-- 자기소개 -->
			<div class="form-group">
			<label class="control-label col-sm-3" for="userIntroduceContent">자기소개:</label>
				<div class="col-sm-8">
					<textarea class="form-control" rows="3" cols="20" id="userIntroduceContent" name="userIntroduceContent"></textarea>
				</div>
			</div>
			
			<!-- 등록취소 -->
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