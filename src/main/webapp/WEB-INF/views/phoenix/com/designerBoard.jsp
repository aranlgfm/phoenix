<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
<style>
	.title
	{
		text-align: center;
	}
	
	.hairImg01,.hairImg02,.hairImg03,.hairImg04,.hairImg05,.hairImg06,.hairImg07,.hairImg08
	{
		width: 200px;
		height: 200px;
	}
</style>
<script>

</script>
</head>
<body>

	<c:import url="../../top.jsp"></c:import>

	<h1 class="title">
		디자이너게시판
	</h1>
	
	<br><br><br>
	
	<!-- 아직 실제 데이터 값을 가져온 것이 아니다. 실제 이미지, 실제 게시 날짜, 실제 글 제목을 가져와서 뿌려줘야 한다. -->
	
	<div class="row">
		<div class="col-md-2">
			
		</div>
		<div class="col-md-2">
			<div class="articleDate01">
				여기에 날짜 및 시간
			</div>
			<div class="designerAtricleImg01">
				<a href=""><img class="hairImg01" src="/resources/test1.jpg"/></a>
			</div>
			<div class="designerAtricleTitle01">
				여기에 글 제목
			</div>		
		</div>
		<div class="col-md-2">
			<div class="articleDate02">
				여기에 날짜 및 시간
			</div>
			<div class="designerAtricleImg02">
				<a href=""><img class="hairImg02" src="/resources/test2.jpg"/></a>
			</div>
			<div class="designerAtricleTitle02">
				여기에 글 제목
			</div>
		</div>
		<div class="col-md-2">
			<div class="articleDate03">
				여기에 날짜 및 시간
			</div>
			<div class="designerAtricleImg03">
				<a href=""><img class="hairImg03" src="/resources/test3.jpg"/></a>
			</div>	
			<div class="designerAtricleTitle03">
				여기에 글 제목
			</div>
		</div>
		<div class="col-md-2">
			<div class="articleDate04">
				여기에 날짜 및 시간
			</div>
			<div class="designerAtricleImg04">
				<a href=""><img class="hairImg04" src="/resources/test4.jpg"/></a>
			</div>		
			<div class="designerAtricleTitle04">
				여기에 글 제목
			</div>
		</div>
		<div  class="col-md-2">
		</div>
	</div>
	
	<br><br><br>
	
	<div class="row">
		<div class="col-md-2">
			
		</div>
		<div class="col-md-2">
			<div class="articleDate05">
				여기에 날짜 및 시간
			</div>
			<div class="designerAtricleImg05">
				<a href=""><img class="hairImg05" src="/resources/test5.jpg"/></a>
			</div>
			<div class="designerAtricleTitle05">
				여기에 글 제목
			</div>		
		</div>
		<div class="col-md-2">
			<div class="articleDate06">
				여기에 날짜 및 시간
			</div>
			<div class="designerAtricleImg06">
				<a href=""><img class="hairImg06" src="/resources/test6.jpg"/></a>
			</div>
			<div class="designerAtricleTitle06">
				여기에 글 제목
			</div>
		</div>
		<div class="col-md-2">
			<div class="articleDate07">
				여기에 날짜 및 시간
			</div>
			<div class="designerAtricleImg07">
				<a href=""><img class="hairImg07" src="/resources/test7.jpg"/></a>
			</div>	
			<div class="designerAtricleTitle07">
				여기에 글 제목
			</div>
		</div>
		<div class="col-md-2">
			<div class="articleDate08">
				여기에 날짜 및 시간
			</div>
			<div class="designerAtricleImg08">
				<a href=""><img class="hairImg08" src="/resources/test8.jpg"/></a>
			</div>		
			<div class="designerAtricleTitle08">
				여기에 글 제목
			</div>
		</div>
		<div  class="col-md-2">
		</div>
	</div>
</body>
</html>