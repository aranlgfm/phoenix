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
				//유효성
				$('#submitButton').click(function(){
					//아이디
					if($("#userId").val() == ""){
						$("#userIdMsg").html("아이디를입력하세요");
					}else if($("#userId").val() != ""){
						$.ajax({
							url : "/phoenix/com/process/joiningAsCustomer/checkId",
							type: "post",
							data : {"userId" : $('#userId').val()},
							success : function(userId){
								if(userId.result > 0){
									$("#userIdMsg").html("중복아이디");
								}else{
									$("#userIdMsg").html("");
								}
							}//success
						})
					}
					
					//기본유효성
					$(".validCheck").each(function(){
						var name = $(this).attr("id")+"Msg"; 
						var msg = $(this).attr("valueCheck");
							if($(this).val() == ""){
								$("#"+name).html(msg);		
							}else{
								$("#"+name).html("");
								if($(".validCheck").index == $(".validCheck").length-1){
								}
							}	
						
						});
					
					//값이 분리되어있는 것 유효성
					$(".validGroupCheck").each(function(index){
						var name = ($(this).attr("id").replace(/[0-9]/g,""))+"Msg";
						var msg = $(this).attr("valueCheck");
						
						if($(this).val() == ""){
							$("#"+name).html(msg);
						}else if($(this).prev().val() != ""){
							$("#"+name).html("");
							if($(this).index == $(".validGroupCheck").length-1){
								check += 1;
							}
						}
					
						if($(this).attr("type") == "radio"){
							if(!($(".userSexFlag").is(":checked"))){
								$("#"+name).html(msg);
							}else{
								$("#"+name).html("");
							}
						}
					});	
					
					//체크 후 서브밋;
					$(".lastCheck").each(function(){
						var result = "";
						console.log($(this).html());
						result += $(this).html();
						if(result.length == 0){
							$("#userCellphoneNumber").val($("#userCellphoneNumber1").val()+$('#userCellphoneNumber2').val()+$('#userCellphoneNumber3').val());
							$("#userEmailAddress").val($("#userEmailId").val()+$('#userEmailDomain').val());
							$("#userForm").submit();
						}
					});	
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
				
				
				userEmailAddress2
				//메일선택시~
				$("#selectEmail2").change(function(){
					$("#userEmailAddress2").val($("#selectEmail2").val());
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
						<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력하세요" maxlength="12">
					</div>
					<span class ="textWarn lastCheck" id="userIdMsg"></span>
				</div>
				  
				<div class="form-group">
					<label class="control-label col-sm-3" for="userPw"><span class="textWarn">* </span>비밀번호:</label>
					<div class="col-sm-4">
						<input type="password" class="form-control validCheck" id="userPw" name="userPw" placeholder="비밀번호를 입력하세요" valueCheck="비밀번호를 제대로 입력하세요">
					</div>
					<span class ="textWarn lastCheck" id="userPwMsg"></span>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3" for="userName"><span class="textWarn">* </span>이름:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control validCheck" id="userName" name="userName" placeholder="이름을 입력하세요" valueCheck="이름을 제대로 입력하세요">
					</div>
					<span class ="textWarn lastCheck" id="userNameMsg"></span>
				</div>
				 
				<div class="form-group">
					<label class="control-label col-sm-3" for="userNickName"><span class="textWarn">* </span>닉네임:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control validCheck" id="userNickName" name="userNickName" placeholder="닉네임 입력하세요" valueCheck="닉네임을 제대로 입력하세요">
					</div>
					<span class ="textWarn lastCheck" id="userNickNameMsg"></span>
				</div>
				  
				<div class="form-group">
				<label class="control-label col-sm-3" for="userSexFlag"><span class="textWarn">* </span>성별:</label>
					<div class="col-sm-4">
						  <label class="radio-inline"><input type="radio" class="validGroupCheck userSexFlag" id="userSexFlag1" name="userSexFlag" value="0" valueCheck="성별을 제대로 입력하세요">남</label>
						  <label class="radio-inline"><input type="radio" class=" validGroupCheck userSexFlag" id="userSexFlag2" name="userSexFlag" value="1" valueCheck="성별을 제대로 입력하세요">여</label>
					</div>
					<span class ="textWarn lastCheck" id="userSexFlagMsg"></span>
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
				</div>
	
	
				<!-- 핸드폰번호 -->
				<div class="form-inline form-group">
				<label class="control-label col-sm-3" for="userCellphoneNumber"><span class="textWarn">* </span>핸드폰번호:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control validGroupCheck userCellphoneNumber" id="userCellphoneNumber1" size="1" maxlength="3" valueCheck="번호를 제대로 입력하세요">&nbsp;-&nbsp; 
						<input type="text" class="form-control validGroupCheck userCellphoneNumber" id="userCellphoneNumber2" size="1" maxlength="4" valueCheck="번호를 제대로 입력하세요">&nbsp;-&nbsp; 
						<input type="text" class="form-control validGroupCheck userCellphoneNumber" id="userCellphoneNumber3" size="1" maxlength="4" valueCheck="번호를 제대로 입력하세요">	
					<!-- 전체다 넘길 핸드폰전화번호 --> 
						<span class ="textWarn lastCheck" id="userCellphoneNumberMsg"></span>
						<input type="hidden" class="validGroupCheck" id="userCellphoneNumber" name="userCellphoneNumber" />
					</div>
				</div>
				
				<!-- 이메일 -->
				<div class="form-inline form-group">
				<label class="control-label col-sm-3" for="userEmailAddress"><span class="textWarn">* </span>이메일:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control validGroupCheck userEmailAddress" id="userEmailAddress1" name="userEmailId" placeholder="이메일" size="5" valueCheck="이메일을 제대로 입력하세요">&nbsp;@&nbsp;
						<input type="text" class="form-control validGroupCheck userEmailAddress" id="userEmailAddress2" name="userEmailDomain" size="7" valueCheck="이메일을 제대로 입력하세요">
						<select class="form-control" id="selectEmail2">
							<option value="">::직접입력::</option>
							<option value="gmail.com">gmail.com</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="yahoo.co.kr">yahoo.co.kr</option>
							<option value="nate.com">nate.com</option>
						</select>
					</div>
					<label class="control-label col-sm-3" ></label>
					<span class ="textWarn lastCheck" class="validGroupCheck" id="userEmailAddressMsg"></span>
	<!-- 				유저이메일 -->
					<input type="hidden" id="userEmailAddress" name="userEmailAddress">
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