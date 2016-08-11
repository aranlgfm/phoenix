<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
	<style>
		.divTh{
				padding:5px;
				font-weight:bolder;
				background-color : #7c7c7c;
				color : #ffffff;
		}	 
		
		th  {
			background-color : #7c7c7c;
			color : #ffffff;
		}	
		
		.tag:HOVER {
			color : #000000;
			text-decoration: none;
		}
		.tag:LINK {
			color : #000000;
			text-decoration: none;
		}
		.tag:VISITED {
			color : #000000;
			text-decoration: none;
		}
		.tag:FOCUS {
			color : #000000;
			text-decoration: none;
		}
		
		.textCenter{
			text-align: center;
		}
		
		.textCenter th,td{
			text-align: center;
		}
		
		.textRight{
			text-align: right;
		}
		
		.textLeft{
			text-align: left;
		}
	</style>
</head>

<body>
	<c:import url="../crmTemp.jsp"></c:import>
	<div id="all">
		<ul class="nav nav-tabs">
			<li id="paymentCustomerList"><a href="/phoenix/crm/form/procedurePaymentCustomerList">시술내역등록</a></li>
			<li id="paymentList"><a href="/phoenix/crm/form/ProcedurePaymentList">시술내역</a></li>
			<li id="" class=""><a href="">제품판매등록</a></li>
			<li id="" class=""><a href="">제품판매내역</a></li>
			<li id="businessManagementSetting"><a href="/phoenix/crm/form/businessManagementSetting">영업관리설정</a></li>
		</ul>
</body>
</html>