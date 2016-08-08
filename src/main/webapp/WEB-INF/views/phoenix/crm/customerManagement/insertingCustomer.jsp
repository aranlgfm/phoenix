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
<script>
	$(document).ready(function(){
		// 버튼 클릭 시 유효성검사
		$('#submitBtn').click(function(){
			if($('#customerName').val() == ''){
				$('#msg').html('고객명을 입력해주세요.');
			}else if($('#phoneNo1').val() == '' || $('#phoneNo2').val() == '' || $('#phoneNo3').val() == ''){
				$('#msg').html('전화번호를 입력해주세요.');
			}else if(!($('#flag').is(':checked'))){
				$('#msg').html('성별을 선택해주세요.');
			}else if($('#day1').val() == '' || $('#day2').val() == '' || $('#day3').val() == ''){
				$('#msg').html('최초방문일을 입력해주세요.');
			}else if($('#email').val() == ''){
				$('#msg').html('이메일을 입력해주세요.');
			}else if($('#phoneNo1').val() != '' && $('#phoneNo2').val() != '' && $('#phoneNo3').val() != ''){
				$('#customerFirstVisitDate').html($('#phoneNo1').val());
// 			}else{
// 				$('#insertForm').submit();
			}
		});
		
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
		
		$('#putToday').click(function(){
			var today = '${today}';
			var day1 = today.substring(0, 4);
			var day2 = today.substring(4, 6);
			var day3 = today.substring(6, 8);
			$('#day1').val(day1);
			$('#day2').val(day2);
			$('#day3').val(day3);
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

	<form id="insertForm" action="/phoenix/crm/customerManagement/process/insertCustomer" method="POST">
		<table>
			<tr>
				<th>Filed</th>
				<th>Input</th>
			</tr>
			<tr>
				<td>* 이름</td>
				<td><input name="customerName" id="customerName" type="text" size="12"/>
				</td>
			</tr>
			<tr>
				<td>* 핸드폰번호</td>
				<td><input name="customerCellphoneNumber" id="phoneNo1" type="text" size="4"/>-<input id="phoneNo2" type="text" size="4"/>-<input id="phoneNo3" type="text" size="4"/></td>
			</tr>
			<tr>
				<td>* 성별</td>
				<td><input id="flag" type="radio" name="customerSexFlag" value="0"/>남
					<input id="flag" type="radio" name="customerSexFlag" value="1"/>여
				</td>
			</tr>
			<tr>
				<td>최초방문일</td>
				<td>
					<input id="customerFirstVisitDate" name="customerFirstVisitDate" type="text"/>
					<input id="day1" type="text" size="4"/>년<input id="day2" type="text" size="4"/>월<input id="day3" type="text" size="4"/>일
					<input id="putToday" type="button" value="오늘"/>
				</td>
			</tr>
			<tr>
				<td>담당자</td>
				<td>
					<input name="employeeName" id="employeeName" type="text"/>
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="customerBirthDate" type="text" size="4"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
					<input type="radio" name="asdf" value="sun"/>양력
					<input type="radio" name="asdf" value="moon"/>음력
				</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="customerPostNumber" size="7"/></td>
			</tr>
			<tr>
				<td>상세주소</td>
				<td><input type="text" name="customerAddress"/></td>
			</tr>
			
			<tr>
				<td>* 이메일</td>
				<td><input id="email" type="text" name="customerEmailAddress" size="12"/>@<input type="text" size="12"/>
				<select>
					<option>::선 택::</option>
					<option>gmail.com</option>
					<option>naver.com</option>
					<option>daum.net</option>
					<option>yahoo.co.kr</option>
					<option>nate.com</option>
					<option>cafe24.com</option>
					<option>ksmart.org</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>기념일</td><!-- userAnniversaryDate -->
				<td><input name="customerAnniversaryDate" type="text" size="4"/>년<input type="text" size="4"/>월<input type="text" size="4"/>일
				</td>
			</tr>
			<tr>
				<td>메모</td>
				<td><textarea cols="70" rows="5" name="customerMemo"></textarea></td>
			</tr>
		</table>
	<input id="submitBtn" type="button" value="확인"/>
	<a href="/phoenix/crm/customerManagement/form/customerManagement"><input type="button" value="취소"/></a>
	<div id="msg"></div>
	</form>
</div>
</body>
</html>