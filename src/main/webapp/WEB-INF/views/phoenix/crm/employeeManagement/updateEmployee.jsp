<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<!-- 다음 우편번호 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
	
	$(document).ready(function() {
		
		// 유효성 검사
		$('#submitBtn').click(function() {
			// 직급 입력 안했을 때
			if($('#EmployeeLevelName').val() == '') {
				$('#EmployeeLevelNameMsg').html('직급을 입력해 주세요.');
			// 이름 입력 안했을 때
			}else if($('#EmployeeName').val() == '') {
				$('#EmployeeLevelNameMsg').html('');
				$('#EmployeeNameMsg').html('직원명을 입력해 주세요.');
			// 비밀번호 입력 안했을 때
			}else if($("#EmployeePw").val() == ""){
				$('#EmployeeNameMsg').html('');
				$("#EmployeePwMsg").html("비밀번호 입력하세요");
 			// 비밀번호가 같지 않을 때
			}else if($("#EmployeePw").val() != $("#EmployeePwRepw").val()){
 				$("#EmployeePwMsg").html("");
				$("#EmployeePwRepwMsg").html("비밀번호가 일치하지 않습니다.");
 			// 전화번호를 입력 안했을 때
			}else if($('#EmployeePhoneNo1').val() == '' || $('#EmployeePhoneNo2').val() == '' || $('#EmployeePhoneNo3').val() == ''){
 				$("#EmployeePwMsg").html("");
 				$("#EmployeePwRepwMsg").html("");
				$('#EmployeePhoneNoMsg').html('전화번호를 입력해주세요.');
			// 핸드폰번호를 입력 안했을 때
			}else if($('#phoneNo1').val() == '' || $('#phoneNo2').val() == '' || $('#phoneNo3').val() == ''){
				$('#EmployeePhoneNoMsg').html('');
				$('#EmployeeCellPhoneNoMsg').html('핸드폰번호를 입력해주세요.');
			// 입사일을 입력 안했을 때
			}else if($('#EmployeeJoinDate').val() == '') {
				$('#EmployeeCellPhoneNoMsg').html('');
				$('#EmployeeJoinDateMsg').html('입사일을 입력해 주세요.');
			}else{
				if($('#daumPostAddr').val() != ''){
					$('#EmployeeAddr').val($('#EmployeePostAddr').val());
				}
				// 전화번호 숫자 합치기
				$('#EmployeePhoneNo').val($('#EmployeePhoneNo1').val()+'-'+$('#EmployeePhoneNo2').val()+'-'+$('#EmployeePhoneNo3').val());
				// 핸드폰번호 숫자 합치기
				$('#EmployeeCellPhoneNo').val($('#PhoneNo1').val()+'-'+$('#PhoneNo2').val()+'-'+$('#PhoneNo3').val());
				$('#employeeForm').submit();
			}
		});
	
		
		// 우편번호찾기 후에 데이터 입력
		$('#daumPostNo').click(function(){
		
			new daum.Postcode({
				oncomplete: function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					
					// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 도로명 조합형 주소 변수
					
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
					    extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if(data.buildingName !== '' && data.apartment === 'Y'){
					   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if(extraRoadAddr !== ''){
					    extraRoadAddr = ' (' + extraRoadAddr + ')';
					}
					// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
					if(fullRoadAddr !== ''){
					    fullRoadAddr += extraRoadAddr;
					}
					
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('EmployeePostNo').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('EmployeePostAddr').value = fullRoadAddr;
				}
			}).open();
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
	
	span{
		color: red;
	}
</style>

<title>직원 수정</title>
</head>
<body>
	<c:import url="employeeManagementMain.jsp"></c:import>

	<hr>
	

	<div id="all"><!-- 전체 -->
	<div class="textCenter title">
		<h1>직원 수정</h1>
	</div>
	
	<br/>
	<br/>
	<div class="center">
		
		<form class="form-horizontal" id="employeeForm" role="form" action="/phoenix/crm/employeeManagement/updateEmployee" method="POST">
		<input type="hidden" name="employeeCode" value="${employee.employeeCode}" />
			
			<!-- 직급 -->			
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeLevelName">직급:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="EmployeeLevelName" name="EmployeeLevelName" maxlength="12" />
				</div>
				<span id="EmployeeLevelNameMsg"></span>
			</div>
			
			<!-- 직원명 -->
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeName">직원명:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="EmployeeName" name="EmployeeName" value="${employee.employeeName}" readonly="readonly">
				</div>
				<span id="EmployeeNameMsg"></span>
			</div>
			
			<!-- 비밀번호 -->
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeePw">비밀번호:</label>
				<div class="col-sm-4"> 
					<input type="password" class="form-control"id="EmployeePw" name="EmployeePw" />
				</div>
				<span id="EmployeePwMsg"></span>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeePwRePw">비밀번호확인:</label>
				<div class="col-sm-4"> 
					<input type="password" class="form-control"id="EmployeePwRepw" />
				</div>
				<span id="EmployeePwRepwMsg"></span>
			</div>

			<!-- 생년월일 -->  
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeBirthDate">생년월일:</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="EmployeeBirthDate" name="EmployeeBirthDate" />
				</div>
			</div>
			
			<!-- 주소 -->
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeNo">우편번호 : </label>
				<input id="EmployeeAddr" name="EmployeeAddr" type="hidden" />
				<div class="col-sm-9 row">
					<label class="col-xs-6"><input id="EmployeePostNo" name="EmployeePostNo" class="form-control" type="text" size="7" readonly="readonly" /></label>
					<label class="col-sm-2"><input id="daumPostNo" type="button" class="btn btn-default" value="우편번호찾기" /></label>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeName">도로명 주소 : </label>
				<div class="col-sm-6">
					<label><input id="EmployeePostAddr" class="form-control" type="text" readonly="readonly" /></label>
				</div>
			</div>
			
			<!-- 집전화번호 -->
			<div class="form-inline form-group">
			<label class="control-label col-sm-3" for="EmployeePhoneNo">집전화번호:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="EmployeePhoneNo1" size="1" maxlength="3" />&nbsp;-&nbsp;
					<input type="text" class="form-control" id="EmployeePhoneNo2" size="1" maxlength="4" />&nbsp;-&nbsp;
					<input type="text" class="form-control" id="EmployeePhoneNo3" size="1" maxlength="4" />
					<!-- 전체다 넘길 집전화번호 --> 
					<input type="hidden" id="EmployeePhoneNo" name="EmployeePhoneNo" />
				</div>
				<span id="EmployeePhoneNoMsg"></span>
			</div>

			<!-- 핸드폰번호 -->
			<div class="form-inline form-group">
			<input id="EmployeeCellPhoneNo" name="EmployeeCellPhoneNo" type="hidden" />
			<label class="control-label col-sm-3" for="phoneNo1">핸드폰번호:</label>
				<div class="col-sm-9">
						<input type="text" class="form-control" id="PhoneNo1" size="1" maxlength="3" />&nbsp;-&nbsp; 
						<input type="text" class="form-control" id="PhoneNo2" size="1" maxlength="4" />&nbsp;-&nbsp; 
						<input type="text" class="form-control" id="PhoneNo3" size="1" maxlength="4" />	
					<!-- 전체다 넘길 집전화번호 --> 
					<input type="hidden" id="EmployeeCellPhoneNo" name="EmployeeCellPhoneNo" />
					<span id="EmployeeCellPhoneNoMsg"></span>
				</div>
			</div>
			 
			<!-- 입사일 -->
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeJoinDate">입사일:</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="EmployeeJoinDate" name="EmployeeJoinDate" value="${employee.employeeJoinDate}" readonly="readonly" />
				</div>
				<span id="EmployeeJoinDateMsg"></span>
			</div>
				
			<!-- 메모 -->
			<div class="form-group">
			<label class="control-label col-sm-3" for="EmployeeMemo">메모:</label>
				<div class="col-sm-8">
					<textarea class="form-control" rows="3" cols="20" id="EmployeeMemo" name="EmployeeMemo"></textarea>
				</div>
			</div>
		
			<!-- 등록&취소 -->
			<div class="form-group centerT"> 
				<div class="center col-sm-10">
					<button type="button" class="btn btn-default" id="submitBtn">등록</button>
					<a class="btn btn-default" href="/phoenix/crm/employeeManagement/employeeList">취소</a>
				</div>
			</div>
		</form>

	</div>
	</div><!-- 전체 -->


</body>
</html>