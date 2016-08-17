<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/com/form/joiningAsDirector</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
	<!-- 다음 우편번호 api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
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
<script>
	$(document).ready(function(){
		// 버튼 클릭 시 유효성검사
		// 미용실명, 우편번호, 주소, 상세주소, 사업자번호, 미용실소개
		// shopName
		// shopPostNumber
		// addr1 addr2 = shopAddress
		// no1 no2 no3 = businessNumber
		// shopMemo
		
		// 우편번호찾기 후에 데이터 입력
		$('#daumPostNo').click(function(){
			new daum.Postcode({
		        oncomplete: function(data) {
		        	console.log(data);
		        	$('#addr1').val(data.roadAddress);
		        	$('#shopPostNumber').val(data.zonecode);
		        }
		    }).open();
		});
		
		// 전화번호 입력시 칸 이동시키기
		$('#no1').keyup(function(){
			$(this).val($(this).val().replace(/[^0-9]/g,""));
			if($('#no1').val().length==3){
				$('#no2').focus();
				$('#no2').keyup(function(){
					$(this).val($(this).val().replace(/[^0-9]/g,""));
					if($('#no2').val().length==2){
						$('#no3').focus();
						$('#no3').keyup(function(){
							$(this).val($(this).val().replace(/[^0-9]/g,""));
							if($('#no3').val().length==5){
								$('#shopMemo').focus();
							}
						});
					}
				});
			}
		});
		
		$('#btnSubmit').click(function(){
			if($('#shopName').val() == ''){
				$('#msg').html('미용실명을 입력해주세요.');
			}else if($('#shopPostNumber').val() == ''){
				$('#msg').html('주소검색을 해주세요.');
			}else if($('#addr2').val() == ''){
				$('#msg').html('상세주소를 입력해주세요.');
			}else if($('#no1').val() == '' || $('#no2').val() == '' || $('#no3').val() == ''){
				$('#msg').html('사업자번호를 입력해주세요.');
			}else{
				$('#msg').html('');
				$('#shopAddress').val($('#addr1').val()+'^'+$('#addr2').val());
				$('#businessNumber').val($('#no1').val()+$('#no2').val()+$('#no3').val());
				$('#addForm').submit();
			}
		});
		
	});
</script>
</head>
<body>
<c:import url="../../top.jsp"></c:import>
	<br/>
	<br/>
	<div id="all"><!-- 전체 -->
		<div class="textCenter title">
			추가정보입력
		</div>

		<br/>
		<br/>
		
		<div class="center">
			
			<form class="form-horizontal" id="addForm" action="/phoenix/com/process/joiningAsDirector" method="POST">
				<input type="hidden" name="userCode" value="${userCode}">	
				
				<div class="form-group">
					<label class="control-label col-sm-3" for="shopName"><span class="textWarn">* </span>미용실 명 : </label>
					<div class="col-sm-4">
						<input type="text" id="shopName" name="shopName" class="form-control" maxlength="12">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3" for="shopPostNumber"><span class="textWarn">* </span>우편번호 : </label>
					<div class="col-sm-9 row">
						<label class="col-xs-6"><input id="shopPostNumber" name="shopPostNumber" class="form-control" type="text" value="${user.shopPostNumber}" readonly="readonly"/></label>
						<label class="col-sm-2"><input id="daumPostNo" type="button" class="btn btn-default" value="우편번호찾기"/></label>
					</div>
				</div>

				<div class="form-group">
					<input id="shopAddress" name="shopAddress" type="hidden"/>
					<label class="control-label col-sm-3" for="addr1"><span class="textWarn">* </span>주소 : </label>
					<div class="col-sm-6">
						<label><input id="addr1" class="form-control" type="text" readonly="readonly"/></label>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3" for="addr2"><span class="textWarn">* </span>상세주소 : </label>
					<div class="col-sm-6">
						<label><input id="addr2" class="form-control" type="text"/></label>
					</div>
				</div>
			
				<div class="form-inline form-group">
					<input id="businessNumber" name="businessNumber" type="hidden"/>
					<label class="control-label col-sm-3" for="no1"><span class="textWarn">* </span>사업자번호 : </label>
					<div class="col-sm-9">
						<input id="no1" class="form-control" type="text" size="4" maxlength="3"/> -
						<input id="no2" class="form-control" type="text" size="4" maxlength="2"/> -
						<input id="no3" class="form-control" type="text" size="4" maxlength="5"/>
					</div>
				</div>
					
				<div class="form-group">
					<label class="control-label col-sm-3" for="shopMemo">미용실소개 : </label>
					<label class="col-sm-8">
						<textarea rows="5" id="shopMemo" name="shopMemo" class="form-control"></textarea>
					</label>
				</div>
				
				<div class="form-group centerT">
					<div class="center col-sm-10">
						<input id="btnSubmit" class="btn btn-default" type="button" value="등록"/>
						<a href="/phoenix"><input class="btn btn-default" type="button" value="취소"/></a>
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