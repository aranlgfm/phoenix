<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>디자이너</title>
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
		// 미용실코드 입력 시 입력할 정보 : 미용실명, 우편번호, 주소, 사업자번호
		$('#shopBtn').click(function(){
			$.ajax({
				url : "/phoenix/com/process/joiningAsDesigner/checkShop",
				type: "post",
				data : {"shopCode" : $('#shopCode').val()},
				success : function(user){
					if(user.result == null){
						$('#msg').html('코드가 맞지 않습니다.');
					}else{
						$('#shopName').val(user.result.shopName);
						$('#shopPostNumber').val(user.result.shopPostNumber);
						var shopAddr = user.result.shopAddress;
						var address = shopAddr.split('^');
						$('#shopAddress').val(address[0]+' '+address[1]);
						var no = user.result.businessNumber+'';
						var no1 = no.substring(0,3);
						var no2 = no.substring(3,5);
						var no3 = no.substring(5,10);
						$('#no1').val(no1);
						$('#no2').val(no2);
						$('#no3').val(no3);
						$('#shopMemo').val(user.result.shopMemo);
					}
				}
			})
		});
		
		$('#btnSubmit').click(function(){
			if($('#shopCode').val() == ''){
				$('#msg').html('미용실코드를 입력해주세요.');
			}else if($('#shopName').val() == ''){
				$('#msg').html('미용실검색버튼을 클릭해주세요.');
			}else{
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
			
			<form class="form-horizontal" id="addForm" role="form" action="/phoenix/com/process/joiningAsDesigner" method="POST">
				<input type="hidden" name="userCode" value="${userCode}">
				
				<div class="form-group">
					<label class="control-label col-sm-3" for="shopCode"><span class="textWarn">* </span>미용실 코드 : </label>
					<div class="col-sm-9 row">
						<label class="col-xs-6"><input id="shopCode" name="shopCode" class="form-control" type="text" size="7"/></label>
						<label class="col-sm-2"><input id="shopBtn" type="button" class="btn btn-default" value="미용실검색"/></label>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-3" for="shopName">미용실 명 : </label>
					<div class="col-sm-4">
						<input type="text" id="shopName" class="form-control" maxlength="12" readonly="readonly">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3" for="shopPostNumber">우편번호 : </label>
					<div class="col-sm-9 row">
						<label class="col-xs-6"><input id="shopPostNumber" class="form-control" type="text" size="7" readonly="readonly"/></label>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3" for="shopAddress">주소 : </label>
					<div class="col-sm-6">
						<label><input id="shopAddress" class="form-control" type="text" readonly="readonly"/></label>
					</div>
				</div>
			
				<div class="form-inline form-group">
					<label class="control-label col-sm-3" for="no1"><span class="textWarn">* </span>사업자번호 : </label>
					<div class="col-sm-9">
						<input id="no1" class="form-control" type="text" size="3" readonly="readonly"/> -
						<input id="no2" class="form-control" type="text" size="2" readonly="readonly"/> -
						<input id="no3" class="form-control" type="text" size="5" readonly="readonly"/>
					</div>
				</div>
					
				<div class="form-group">
					<label class="control-label col-sm-3" for="shopMemo">미용실소개 : </label>
					<label class="col-sm-8">
						<textarea rows="5" id="shopMemo" class="form-control" readonly="readonly"></textarea>
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