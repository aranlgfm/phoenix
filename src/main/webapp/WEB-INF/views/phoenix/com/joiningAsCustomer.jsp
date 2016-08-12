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
				
				/* 유효성 */
				$('#submitButton').click(function(){
					/* 아이디 */
					if($('#userId').val() == ""){
						$('#userIdMsg').html('아이디를 입력하세요');
					}
					if($('#userId').val() != ""){
						$.ajax({
							url : "/phoenix/com/process/joiningAsCustomer/checkId",
							type: "post",
							data : {"userId" : $('#userId').val()},
							success : function(userId){
								$("#ajax").remove();
								if(userId.result > 0){
									$('#userIdMsg').html("중복아이디");
								}else{
									$('#userIdMsg').html("");
								}
							}//success
						})
					}
					
					/* 패스워드 */
					if($("#userPw").val() == ""){
						$("#userPwMsg").html("비밀번호 입력하세요");
		 			}else if($("#userPw").val() != $("#userRepw").val()){
		 				$("#userPwMsg").html("");
						$("#userRepwMsg").html("비밀번호가 일치하지 않습니다.");
		 			}else{
		 				$("#userPwMsg").html("");
		 				$("#userRepwMsg").html("");
		 			}
					
					/* 이름 */
					if($("#userName").val() == ""){
						$("#userNameMsg").html("이름을 입력하세요");
		 			}else{
		 				$("#userNameMsg").html("");
		 			}
					
					/* 닉네임 */
					if($("#userNickName").val() == ""){
						$("#userNickNameMsg").html("별명을 입력하세요");
		 			}else{
		 				$("#userNickNameMsg").html("");
		 			}
					
					/* 성별 */
					if(!($(".userSexFlag").is(":checked"))){
		 				$('#userSexFlagMsg').html("성별을 선택해주세요.");
		 			}else{
		 				$('#userSexFlagMsg').html("");
		 			}
					
					/* 유선 */
					if($("#userPhoneNumber1").val() == "" || $("#userPhoneNumber2").val() == "" || $("#userPhoneNumber3").val() == ""){
						$("#userPhoneNumbermsg").html("전화번호를 입력해주세요.");
		 			}else{
		 				$("#userPhoneNumber").val($("#userPhoneNumber1").val()+"-"+$('#userPhoneNumber2').val()+"-"+$('#userPhoneNumber3').val());
		 				$("#userPhoneNumberMsg").html("");
		 			}
					
					/* 폰번호 */
					if($("#userCellphoneNumber1").val() == "" || $("#userCellphoneNumber2").val() == "" || $("#userCellphoneNumber3").val() == ""){
						$("#userCellphoneNumber").html("전화번호를 입력해주세요.");
		 			}else{
		 				$("#userCellphoneNumber").val($("#userCellphoneNumber1").val()+"-"+$('#userCellphoneNumber2').val()+"-"+$('#userCellphoneNumber3').val());
		 				$("#userCellphoneNumberMsg").html("");
		 			}

					/* 이메일 */
					if($("#userEmailId").val() == "" || $('#userEmailDomain').val() == ""){
		 				$('#userEmailAddressMsg').html('이메일을 입력해주세요.');
		 			}else{
		 				$("#userEmailAddress").val($("#userEmailId").val()+"@"+$('#userEmailDomain').val());
		 				$('#userEmailAddressMsg').html("");
		 			}
					
					/* 주소 */
					if($("#userPostNumber").val() != ""){
		 				$("#userAddress").val($("#searchAddress").val()+"^"+$("#userPutAddress").val());
		 			}
					
					//$("#userForm").submit();
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
 		
 		.textWarn {
 			font-weight:bolder;
 			color: red;
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
			
			<form class="form-horizontal" id="userForm" role="form" action="/phoenix/com/process/joiningAsCustomer" method="POST">
				<input type="hidden" name="userGroupName" value="${group}"/>
								
				<div class="form-group">
					<label class="control-label col-sm-3" for="userId"><span class="textWarn">* </span>아이디:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="userId" name="userId" placeholder="6자이상 12자이하" maxlength="12">
					</div>
					<span id="userIdMsg"></span>
				</div>
				  
				<div class="form-group">
					<label class="control-label col-sm-3" for="userPw"><span class="textWarn">* </span>비밀번호:</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" id="userPw" name="userPw" placeholder="6자이상 12자이하">
					</div>
					<span id="userPwMsg"></span>
				</div>
				 
				<div class="form-group">
					<label class="control-label col-sm-3" for="userRePw"><span class="textWarn">* </span>비밀번호확인:</label>
					<div class="col-sm-4"> 
						<input type="password" class="form-control"id="userRepw" placeholder="다시입력해">
					</div>
					<span id="userRepwMsg"></span>
				</div>
				 
				<div class="form-group">
					<label class="control-label col-sm-3" for="userName"><span class="textWarn">* </span>이름:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="userName" name="userName" placeholder="이름을 입력하세요">
					</div>
					<span id="userNameMsg"></span>
				</div>
				 
				<div class="form-group">
					<label class="control-label col-sm-3" for="userNickName"><span class="textWarn">* </span>닉네임:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="userNickName" name="userNickName" placeholder="닉네임 입력하세요">
					</div>
					<span id="userNickNameMsg"></span>
				</div>
				  
				<div class="form-group">
				<label class="control-label col-sm-3" for="userSexFlag"><span class="textWarn">* </span>성별:</label>
					<div class="col-sm-4">
						  <label class="radio-inline"><input type="radio" class="userSexFlag" name="userSexFlag" value="0">남</label>
						  <label class="radio-inline"><input type="radio" class="userSexFlag" name="userSexFlag" value="1">여</label>
					</div>
					<span id="userSexFlagMsg"></span>
				</div>
				  
				<hr>
				<!-- 우편번호 -->
				<div class="form-group">
					<label class="control-label col-sm-3" for="userPostNumber">우편번호:</label>
					<div class="col-sm-9 row">
						<div class="col-xs-4">
							<input type="text" class="form-control" id="userPostNumber" name="userPostNumber">
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
						<input type="hidden" id="userAddress" name="userAddress"/>
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
						<input type="hidden" id="userPhoneNumber" name="userPhoneNumber"/>
					</div>
					<span id="userPhoneNumberMsg"></span>
				</div>
	
	
	
				<!-- 핸드폰번호 -->
				<div class="form-inline form-group">
				<label class="control-label col-sm-3" for="userCellphoneNumber">핸드폰번호:</label>
					<div class="col-sm-9">
							<input type="text" class="form-control" id="userCellphoneNumber1" size="1" maxlength="3">&nbsp;-&nbsp; 
							<input type="text" class="form-control" id="userCellphoneNumber2" size="1" maxlength="4">&nbsp;-&nbsp; 
							<input type="text" class="form-control" id="userCellphoneNumber3" size="1" maxlength="4">	
						<!-- 전체다 넘길 집전화번호 --> 
						<input type="hidden" id="userCellphoneNumber" name="userCellphoneNumber"/>
						<span id="userCellphoneNumberMsg"></span>
					</div>
				</div>
				
				
				<!-- 이메일 -->
				<div class="form-inline form-group">
				<label class="control-label col-sm-3" for="userEmailAddress"><span class="textWarn">* </span>이메일:</label>
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
					<span id="userEmailAddressMsg"></span>
				</div>
				
				
				
				<!-- 생년월일 -->  
				<div class="form-group">
					<label class="control-label col-sm-3" for="userBirthdayDate">생년월일:</label>
					<div class="col-sm-4">
						<input type="date" class="form-control" id="userBirthdayDate" name="userBirthdayDate">
					</div>
				</div>
				 
				<!-- 기념일 -->
				<div class="form-group">
				<label class="control-label col-sm-3" for="userAnniversaryDate">기념일:</label>
					<div class="col-sm-4">
						<input type="date" class="form-control" id="userAnniversaryDate" name="userAnniversaryDate">
					</div>
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
						<button id="submitButton" type="button" class="btn btn-default" >등록</button>
						<a class="btn btn-default" href="/phoenix/com/form/terms">취소</a>
					</div>
				</div>
			</form>
			<!-- 여기도 확인버튼 분기시켜야함. 디자이너나 원장이 가입하면 요청이 달라야함. 페이지 다름. -->
		</div>
	</div><!-- 전체 -->
</body>
</html>