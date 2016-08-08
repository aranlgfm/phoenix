<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>/phoenix</title>
<style>
	#all 
	{
		width : 70%;
		margin : auto;
	}
</style>

</head>
<body>
<div id="all">
	<nav class="navbar navbar-inverse">	
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/phoenix">HairShop Nav</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/phoenix">Home</a></li>
				<li class="active"><a href="/phoenix/crm/businessManagement/businessManagement">영업관리</a></li>
				<li class="active"><a href="/phoenix/crm/customerManagement/form/customerManagement">회원관리</a></li>
				<li class="active"><a href="/phoenix/crm/employeeManagement/employeeList">직원관리</a></li>
				<li class="active"><a href="/phoenix/crm/stockManagement/stockManagement">매입/지출</a></li>
				<li class="active salesManagement"><a href="/phoenix/crm/salesManagement/salesManagementHome">매출관리</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
		    	
		    	<li>
		    		<c:choose>
		    		<c:when test="${user ne null and user ne 'false'}">
	    			<a href="#"><span class="glyphicon glyphicon-log-in">${user.userNickName}님 환영합니다.</span></a>
				    </c:when>
		    		</c:choose>
		    	</li>
		    	<li>
		    		<a href="/phoenix/crm/process/logout"><span>로그아웃</span></a>
		    	</li>
		    </ul>
			
				<%-- <c:choose>
					<c:when test="${user ne null and user ne 'false'}">
						<span>${user.userNickName}님 환영합니다.</span>
						<a href="/phoenix/crm/process/logout"><input type="button" value="로그아웃"/></a>
					</c:when>
					
					위의 로그아웃을 할 경우 
					/phoenix 경로와 /phoenix/crm/process/logout경로를 요청할 경우 link는 다르지만 화면이 같아서
					회원가입 / 로그아웃 버튼 css을 해야할 의미가 없는 것으로 생각됨
					
					<c:otherwise>
						<a href="/phoenix/com/form/terms"><input type="button" value="회원가입"/></a>
						<a href="/phoenix/com/form/login"><input type="button" value="로그인"/></a>
					</c:otherwise>	
				</c:choose> --%>
		</div>
	</nav>
</div>
</body>
</html>