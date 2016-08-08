<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<!-- 다음 우편번호 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
<script>
	$(document).ready(function(){
		// 버튼 클릭 시 유효성검사
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
			}else{
				// 화면에 입력된 것들 합치기 전화번호 생일 등
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
		
		// 오늘 버튼 눌렀을 때 오늘날짜 입력되게 하기
		$('#putToday').click(function(){
			var today = '${today}';
			var today1 = today.substring(0,4);
			var today2 = today.substring(4,6);
			var today3 = today.substring(6,8);
			$('#selectVisitDate').val(today1+'-'+today2+'-'+today3);
		});
		
		// 달력에서 선택했을 때 날짜 입력
		$('#birthDate').change(function(){
			var birth = $('#birthDate').val();
			var birth1 = birth.substring(0,4); 
			var birth2 = birth.substring(5,7); 
			var birth3 = birth.substring(8,10);
			$('#birth1').val(birth1);
			$('#birth2').val(birth2);
			$('#birth3').val(birth3);
		});
		
		// 우편번호찾기 후에 데이터 입력
		$('#daumPostNo').click(function(){
			new daum.Postcode({
		        oncomplete: function(data) {
		        	console.log(data);
		        	$('#daumPostAddr').val(data.roadAddress);
		        	$('#customerPostNumber').val(data.zonecode);
		        }
		    }).open();
		});
		
		// 메일도메인선택시 입력
		$('#mailSelect').change(function(){
			$('#mailDomain').val($('#mailSelect').val());
		});
		
		// 달력에서 선택했을 때 날짜 입력
		$('#anniDate').change(function(){
			var anni = $('#anniDate').val();
			var anni1 = anni.substring(0,4); 
			var anni2 = anni.substring(5,7); 
			var anni3 = anni.substring(8,10);
			$('#anni1').val(anni1);
			$('#anni2').val(anni2);
			$('#anni3').val(anni3);
		});
		
	});
</script>
</head>
<body>
<c:import url="customerManagement.jsp"></c:import>
<div id="all">
	<ul class="nav nav-tabs">
		<li><a href="/phoenix/crm/customerManagement/form/customerList">회원목록</a></li>
		<li class="active"><a href="/phoenix/crm/customerManagement/form/insertingCustomer">회원등록</a></li>
		<li><a href="#">회원관리설정</a></li>
	</ul>

	<div class="center">
		<form id="insertForm" class="form-horizontal" role="form" action="/phoenix/crm/customerManagement/process/insertCustomer" method="POST">
			<br>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerName">* 이름 : </label>
				<div class="col-sm-4">
					<input name="customerName" id="customerName" class="form-control" type="text" placeholder="고객명"/>
				</div>
			</div>
			<div class="form-inline form-group">
				<input id="customerCellphoneNumber" name="customerCellphoneNumber" type="hidden"/>
				<label class="control-label col-sm-3" for="phoneNo1">* 핸드폰번호 : </label>
				<div class="col-sm-9">
					<input id="phoneNo1" class="form-control" type="text" size="4"/> -
					<input id="phoneNo2" class="form-control" type="text" size="4"/> -
					<input id="phoneNo3" class="form-control" type="text" size="4"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerSexFlag">* 성별 : </label>
				<div class="col-sm-4">
					<label class="radio-inline"><input class="flag" type="radio" name="customerSexFlag" value="0"/>남</label>
					<label class="radio-inline"><input class="flag" type="radio" name="customerSexFlag" value="1"/>여</label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerFirstVisitDate">최초방문일 : </label>
				<div class="col-sm-9 row">
					<input id="customerFirstVisitDate" name="customerFirstVisitDate" type="hidden"/>
					<label class="col-xs-6"><input id="selectVisitDate" class="form-control" type="date"/></label>
					<label class="col-sm-2"><input id="putToday" class="btn btn-default" type="button" value="오늘"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerName">담당자 : </label>
				<div class="col-sm-4">
					<input name="employeeName" id="employeeName" class="form-control" type="text"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerFirstVisitDate">생년월일 : </label>
				<div class="col-sm-9 row">
					<input id="customerBirthDate" name="customerBirthDate" type="hidden"/>
					<label class="col-xs-6"><input id="birthDate" class="form-control" type="date"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerName">우편번호 : </label>
				<div class="col-sm-9 row">
					<label class="col-xs-6"><input id="customerPostNumber" name="customerPostNumber" class="form-control" type="text" size="7" readonly="readonly"/></label>
					<label class="col-sm-2"><input id="daumPostNo" type="button" class="btn btn-default" value="우편번호찾기"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerName">주소 : </label>
				<input id="customerAddress" name="customerAddress" type="hidden"/>
				<div class="col-sm-6">
					<label><input id="daumPostAddr" class="form-control" type="text"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerAddress">상세주소 : </label>
				<input id="customerAddress" name="customerAddress" type="hidden"/>
				<div class="col-sm-6">
					<label><input id="userPutAddr" class="form-control" type="text"/></label>
				</div>
			</div>
			<div class="form-inline form-group">
				<label class="control-label col-sm-3" for="customerEmailAddress">* 이메일 : </label>
				<input id="customerEmailAddress" name="customerEmailAddress" type="hidden"/>
				<div class="col-sm-9">
						<input id="email" type="text" class="form-control" size="4"/> @
						<input id="mailDomain" class="form-control" type="text" size="15"/>
				
						<select id="mailSelect" class="form-control">
							<option value="">::직접입력::</option>
							<option value="gmail.com">gmail.com</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="yahoo.co.kr">yahoo.co.kr</option>
							<option value="nate.com">nate.com</option>
						</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerAnniversaryDate">기념일 : </label>
				<input id="customerAnniversaryDate" name="customerAnniversaryDate" type="hidden"/>
				<div class="col-sm-9 row">
					<label class="col-xs-6"><input id="anniDate" class="form-control" type="date"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="employeeName">메모 : </label>
				<label class="col-sm-8">
					<textarea rows="5" class="form-control" name="customerMemo"></textarea>
				</label>
			</div>
			<div>
				<input id="submitBtn" class="btn btn-default" type="button" value="확인"/>
				<a href="/phoenix/crm/customerManagement/form/customerManagement"><input class="btn btn-default" type="button" value="취소"/></a>
				<div id="msg"></div>
			</div>
		</form>
	</div>
</div>
</body>
</html>