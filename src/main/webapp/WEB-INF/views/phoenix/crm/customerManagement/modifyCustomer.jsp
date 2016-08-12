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
 	#msg {
 		color : #db4f53;
 	}
</style>
<script>
	$(document).ready(function(){
		
		// 화면 로딩 되자마자 폰번호 입력하기
		var phone = $('#phone').val();
		var phoneNo = phone.split('-');
		$('#phoneNo1').val(phoneNo[0]);
		$('#phoneNo2').val(phoneNo[1]);
		$('#phoneNo3').val(phoneNo[2]);
		
		// 화면 로딩 되자마자 메일주소 입력하기
		var mail = $('#mail').val();
		var email = mail.split('@');
		$('#email').val(email[0]);
		$('#mailDomain').val(email[1]);
		
		// 화면 로딩 되자마자 주소 입력하기
		var customerAddr = $('#addr').val();
		var addr = customerAddr.split('^');
		$('#daumPostAddr').val(addr[0]);
		$('#userPutAddr').val(addr[1]);
		
		// 화면 로딩 되자마자 담당자 입력하기
		$('#putEmp').val('${customer.employeeName}');
		
		// 버튼 클릭 시 유효성검사
		$('#submitBtn').click(function(){
			if($('#phoneNo1').val() == '' || $('#phoneNo2').val() == '' || $('#phoneNo3').val() == ''){
				$('#msg').html('전화번호를 입력해주세요.');
			}else if($('#selectVisitDate').val() == ''){
				$('#msg').html('최초방문일을 입력해주세요.');
			}else{
				// 화면에 입력된 것들 합치기 전화번호 생일 등
				$('#customerFirstVisitDate').val($('#selectVisitDate').val());
				$('#customerCellphoneNumber').val($('#phoneNo1').val()+'-'+$('#phoneNo2').val()+'-'+$('#phoneNo3').val());
				$('#customerBirthDate').val($('#birthDate').val());
				if($('#daumPostAddr').val() != ''){
					$('#customerAddress').val($('#daumPostAddr').val()+'^'+$('#userPutAddr').val());
				}
				$('#customerEmailAddress').val($('#email').val()+'@'+$('#mailDomain').val());
				$('#customerAnniversaryDate').val($('#anniDate').val());
				$('#updateForm').submit();
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
		
	});
</script>
</head>
<body>
<c:import url="customerManagement.jsp"></c:import>
<div id="all">

	<ul class="nav nav-tabs">
		<li><a href="/phoenix/crm/customerManagement/form/customerList">회원목록</a></li>
		<li><a href="/phoenix/crm/customerManagement/form/insertingCustomer">회원등록</a></li>
	</ul>

	<div class="center">
		<form id="updateForm" class="form-horizontal" role="form" action="/phoenix/crm/customerManagement/process/modifyCustomer" method="POST">
		<!-- 디비에서 받아올 정보 임시로 담아두는 곳. jquery에서 가공해서 보여줄 데이터들 포함 -->
			<input name="customerCode" type="hidden" value="${customer.customerCode}"/>
			<input name="userCode" type="hidden" value="${customer.userCode}"/>
			<input name="customerName" type="hidden" value="${customer.customerName}"/>
			<input id="phone" type="hidden" value="${customer.customerCellphoneNumber}"/>
			<input id="mail" type="hidden" value="${customer.customerEmailAddress}"/>
			<input id="addr" type="hidden" value="${customer.customerAddress}"/>
			<input id="employeeName" type="hidden" value="${customer.employeeName}"/>
			
			<br>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerName">커뮤니티회원여부 : </label>
				<div class="col-sm-4">
				<c:choose>
					<c:when test="${customer.userCode eq '미용실회원'}">
						<input class="form-control" type="text" value="미용실회원" readonly="readonly"/>
					</c:when>
					<c:otherwise>
						<input class="form-control" type="text" value="커뮤니티회원" readonly="readonly"/>
					</c:otherwise>
				</c:choose>
				</div>
				<div class="control-label col-sm-5" id="msg"></div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerName">이름 / 성별 : </label>
				<div class="col-sm-4">
				<c:if test="${customer.customerSexFlag == 0}">
					<input class="form-control" type="text" value="${customer.customerName} / 남" readonly="readonly"/>
				</c:if>
				<c:if test="${customer.customerSexFlag == 1}">
					<input class="form-control" type="text" value="${customer.customerName} / 여" readonly="readonly"/>
				</c:if>
				</div>
				<div class="control-label col-sm-5" id="msg"></div>
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
			<div class="form-inline form-group">
				<label class="control-label col-sm-3" for="customerEmailAddress">이메일 : </label>
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
				<label class="control-label col-sm-3" for="employeeCode">담당자 : </label>
				<div class="col-sm-4">
					<input id="putEmp" class="form-control" type="text" readonly="readonly"/>
				</div>
				<div class="col-sm-4">
					<select id="selectEmp" name="employeeCode" class="form-control">
						<option value="">담당자 변경</option>
						<c:forEach var="empList" items="${empList}">
							<option value="${empList.employeeCode}">${empList.employeeName}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerAnniversaryDate">기념일 : </label>
				<input id="customerAnniversaryDate" name="customerAnniversaryDate" type="hidden"/>
				<div class="col-sm-9 row">
					<label class="col-xs-6"><input id="anniDate" class="form-control" type="date" value="${customer.customerAnniversaryDate}"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerFirstVisitDate">생년월일 : </label>
				<div class="col-sm-9 row">
					<input id="customerBirthDate" name="customerBirthDate" type="hidden"/>
					<label class="col-xs-6"><input id="birthDate" class="form-control" type="date" value="${customer.customerBirthDate}"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerName">우편번호 : </label>
				<div class="col-sm-9 row">
					<label class="col-xs-4"><input id="customerPostNumber" name="customerPostNumber" class="form-control" type="text" size="4" readonly="readonly" value="${customer.customerPostNumber}"/></label>
					<label class="col-sm-2"><input id="daumPostNo" type="button" class="btn btn-default" value="우편번호찾기"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerName">주소 : </label>
				<input id="customerAddress" name="customerAddress" type="hidden"/>
				<div class="col-sm-6">
					<label><input id="daumPostAddr" class="form-control" type="text" readonly="readonly"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="customerAddress">상세주소 : </label>
				<div class="col-sm-6">
					<label><input id="userPutAddr" class="form-control" type="text"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="employeeName">메모 : </label>
				<label class="col-sm-8">
					<textarea rows="5" class="form-control" name="customerMemo">${customer.customerMemo}</textarea>
				</label>
			</div>
			<div class="form-group centerT">
				<div class="center col-sm-10">
					<input id="submitBtn" class="btn btn-default" type="button" value="회원정보수정"/>
					<a href="/phoenix/crm/customerManagement/form/customerList"><input class="btn btn-default" type="button" value="취소"/></a>
				</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>