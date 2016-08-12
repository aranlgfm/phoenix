<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<!-- 다음 우편번호 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
 		
	$(document).ready(function() {
		$('#submitBtn').click(function() {
			if($('#EmployeeLevelName').val() == '') {
				$('#EmployeeLevelNameMsg').html('직급을 입력해 주세요.');
			}else if($('#EmployeeName').val() == '') {
				$('#EmployeeLevelNameMsg').html('');
				$('#EmployeeNameMsg').html('직원명을 입력해 주세요.');
			}else if($('#EmployeePw').val() == '') {
				$('#EmployeeNameMsg').html('');
				$('#EmployeePwMsg').html('비밀번호를 입력해 주세요.');
			}else if($('#phoneNo1').val() == '' || $('#phoneNo2').val() == '' || $('#phoneNo3').val() == ''){
				$('#EmployeePwMsg').html('');
				$('#EmployeePhoneNoMsg').html('전화번호를 입력해주세요.');
			}else if($('#EmployeeJoinDate').val() == '') {
				$('#EmployeePhoneNoMsg').html('');
				$('#EmployeeJoinDateMsg').html('입사일을 입력해 주세요.');
			}else{
				if($('#daumPostAddr').val() != ''){
					$('#EmployeeAddr').val($('#daumPostAddr').val()+'^'+$('#userPutAddr').val());
				}
				$('#submitBtn').submit();
			}
		});
	});

	// 전화번호 입력시 칸 이동시키기
	$('#phoneNo1').keyup(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if($('#phoneNo1').val().length==3){
			$('#phoneNo2').focus();
			$('#phoneNo2').keyup(function(){
				$(this).val($(this).val().replace(/[^0-9]/g,""));
				if($('#phoneNo2').val().length==4){
					$('#phoneNo3').focus();
					$('#phoneNo3').keyup(function(){
						$(this).val($(this).val().replace(/[^0-9]/g,""));
						if($('#phoneNo3').val().length==4){
							$('#employeeName').focus();
						}
					});
				}
			});
		}
	});
	
	// 우편번호찾기 후에 데이터 입력
	$('#daumPostNo').click(function(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	console.log(data);
	        	$('#daumPostAddr').val(data.roadAddress);
	        	$('#EmployeePostNo').val(data.zonecode);
	        }
	    }).open();
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
<title>직원 등록</title>
</head>
<body>
	<c:import url="employeeManagementMain.jsp"></c:import>

	<hr>
	
	<div id="all"><!-- 전체 -->
	<div class="textCenter title">
		<h1>직원 등록</h1>
	</div>
	
	<br/>
	<br/>
	<div class="center">
		
		<form class="form-horizontal" id="employeeForm" role="form" action="/phoenix/crm/employeeManagement/insertingEmployee" method="POST">
			<%-- <input type="hidden" name="userGroupName" value="${group}"/> --%>
							
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeLevelName">* 직급:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="EmployeeLevelName" name="EmployeeLevelName" placeholder="6자이상 12자이하" maxlength="12">
				</div>
				<span id="EmployeeLevelNameMsg"></span>
			</div>
			  
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeName">* 직원명:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="EmployeeName" name="EmployeeName" placeholder="2자이상 12자이하">
				</div>
				<span id="EmployeeNameMsg"></span>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeePw">* 비밀번호:</label>
				<div class="col-sm-4"> 
					<input type="password" class="form-control"id="EmployeePw" name="EmployeePw" placeholder="6자이상 12자이하">
				</div>
				<span id="EmployeePwMsg"></span>
			</div>
			 <!-- 
			<div class="form-group">
				<label class="control-label col-sm-3" for="userRePw">비밀번호확인:</label>
				<div class="col-sm-4"> 
					<input type="password" class="form-control"id="userRepw" placeholder="다시입력해">
				</div>
				<span id="userRepwMsg"></span>
			</div>
			  -->
				<!-- 생년월일 -->  
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeBirthDate">생년월일:</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="EmployeeBirthDate" name="EmployeeBirthDate">
				</div>
			</div>
			
			<!-- 주소 -->
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerName">우편번호 : </label>
				<div class="col-sm-9 row">
					<label class="col-xs-6"><input id="EmployeePostNo" name="EmployeePostNo" class="form-control" type="text" size="7" readonly="readonly"/></label>
					<label class="col-sm-2"><input id="daumPostNo" type="button" class="btn btn-default" value="우편번호찾기"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeName">주소 : </label>
				<input id="EmployeeAddr" name="EmployeeAddr" type="hidden"/>
				<div class="col-sm-6">
					<label><input id="daumPostAddr" class="form-control" type="text" readonly="readonly"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeAddr">상세주소 : </label>
				<div class="col-sm-6">
					<label><input id="userPutAddr" class="form-control" type="text"/></label>
				</div>
			</div>
			
			<!-- 
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeAddr">상세주소:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="searchAddress" readonly="readonly">
					<input type="text" class="form-control" id="EmployeeAddr" >
					전체다 넘길 주소값 
					<input type="hidden" id="userAddress" name="userAddress"/>
				</div>
			</div> -->
			
			<!-- 집전화번호 -->
			<div class="form-inline form-group">
			<label class="control-label col-sm-3" for="EmployeePhoneNo">집전화번호:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="EmployeePhoneNo1" size="1" maxlength="3">&nbsp;-&nbsp;
					<input type="text" class="form-control" id="EmployeePhoneNo2" size="1" maxlength="4">&nbsp;-&nbsp;
					<input type="text" class="form-control" id="EmployeePhoneNo3" size="1" maxlength="4">
					<!-- 전체다 넘길 집전화번호 --> 
					<input type="hidden" id="EmployeePhoneNo" name="EmployeePhoneNo"/>
				</div>
				<span id="EmployeePhoneNoMsg"></span>
			</div>

			<!-- 핸드폰번호 -->
			<div class="form-inline form-group">
			<input id="EmployeeCellPhoneNo" name="EmployeeCellPhoneNo" type="hidden"/>
			<label class="control-label col-sm-3" for="phoneNo1">핸드폰번호:</label>
				<div class="col-sm-9">
						<input type="text" class="form-control" id="PhoneNo1" size="1" maxlength="3">&nbsp;-&nbsp; 
						<input type="text" class="form-control" id="PhoneNo2" size="1" maxlength="4">&nbsp;-&nbsp; 
						<input type="text" class="form-control" id="PhoneNo3" size="1" maxlength="4">	
					<!-- 전체다 넘길 집전화번호 --> 
					<input type="hidden" id="EmployeeCellPhoneNo" name="EmployeeCellPhoneNo"/>
					<span id="EmployeeCellPhoneNoMsg"></span>
				</div>
			</div>
			 
			<div class="form-group">
				<label class="control-label col-sm-3" for="EmployeeJoinDate">* 입사일:</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="EmployeeJoinDate" name="EmployeeJoinDate" placeholder="입사일을 입력하세요">
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
		
			<!-- 등록취소 -->
			<div class="form-group centerT"> 
				<div class="center col-sm-10">
					<button type="submit" class="btn btn-default" id="submitBtn">등록</button>
					<a class="btn btn-default" href="/phoenix/crm/employeeManagement/employeeList">취소</a>
				</div>
			</div>
		</form>

	</div>
	</div><!-- 전체 -->

</body>
</html>