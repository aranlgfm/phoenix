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
<style>
	.title
	{
		text-align: center;
	}
	.basicBoardList
	{
		width:60%;
		margin:auto;
		border: 1px;
	}
	.designerDiv
	{
		width:75%;
		margin:auto;
	}
	.centerCell
	{
		text-align:center;
		vertical-align: middle;
	}
	.insertingArticle
	{
		width:60%;
		margin:auto;
		text-align:right;
	}
	.hairImg01,.hairImg02,.hairImg03,.hairImg04,.hairImg05,.hairImg06,.hairImg07,.hairImg08,.hairImg09,.hairImg10
	{
		width: 200px;
		height: 200px;
	}
 	.previousDiv
	{
		float:left;
	}
	.nextDiv
	{
		float: right;
	} 
</style>
<script>
	$(document).ready(function()
	{
			$(".previous").click(function()
			{
				$(".previousForm").attr("action","/phoenix/com/form/basicBoard");
				$(".previousForm").attr("method","get");
				$(".previousForm").submit();
			});	
			$(".next").click(function()
			{
				$(".nextForm").attr("action","/phoenix/com/form/basicBoard");
				$(".nextForm").attr("method","get");
				$(".nextForm").submit();
			})
	})
</script>
</head>

<!-- 실제 값들 가져오는 거 처리 해야함. 페이징해야되고, 글 몇개가져올지 해야되고. -->
<body>

	<c:import url="../../top.jsp"></c:import>
	
	<br><br><br>
	
	<!-- 디자이너 게시판부터 -->
	<c:choose>
		<c:when test="${articleList[0].boardGroupCode eq 'COM_BOARDGROUP_1'}" >
			<div class="insertingArticle">
				<c:if test="${user.userCode ne null}" >
					<a href="/phoenix/com/form/insertingBasicArticle?boardGroupCode=${articleList[0].boardGroupCode}">글쓰기</a>
				</c:if>
			</div>
	
			<br><br>
			
			<%-- 이거 파일 패스임<br>
			${articleList[0].imgFileList[0].filePath} --%>
			
			<div class="row">
				<div class="col-md-1">
					
				</div>
				<div class="col-md-2">
					<div class="articleDate01">
						${articleList[0].articleDate}
					</div>
					<div class="designerAtricleImg01">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[0].articleCode}"><img class="hairImg01" src=${articleList[0].imgFileList[0].filePath}/></a>
					</div>
					<div class="designerAtricleTitle01">
						${articleList[0].articleName}
					</div>		
				</div>
				<div class="col-md-2">
					<div class="articleDate02">
						${articleList[1].articleDate}
					</div>
					<div class="designerAtricleImg02">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[1].articleCode}"><img class="hairImg02" src=${articleList[1].imgFileList[0].filePath}/></a>
					</div>
					<div class="designerAtricleTitle02">
						${articleList[1].articleName}
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate03">
						${articleList[2].articleDate}
					</div>
					<div class="designerAtricleImg03">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[2].articleCode}"><img class="hairImg03" src=${articleList[2].imgFileList[0].filePath}/></a>
					</div>	
					<div class="designerAtricleTitle03">
						${articleList[2].articleName}
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate04">
						${articleList[3].articleDate}
					</div>
					<div class="designerAtricleImg04">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[3].articleCode}"><img class="hairImg04" src=${articleList[3].imgFileList[0].filePath}/></a>
					</div>		
					<div class="designerAtricleTitle04">
						${articleList[3].articleName}
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate05">
						${articleList[4].articleDate}
					</div>
					<div class="designerAtricleImg05">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[4].articleCode}"><img class="hairImg05" src=${articleList[4].imgFileList[0].filePath}/></a>
					</div>
					<div class="designerAtricleTitle05">
						${articleList[4].articleName}
					</div>		
				</div>
				<div  class="col-md-1">
				</div>
			</div>
			
			<br><br><br>
			
			<div class="row">
				<div class="col-md-1">
					
				</div>
				<div class="col-md-2">
					<div class="articleDate06">
						${articleList[5].articleDate}
					</div>
					<div class="designerAtricleImg06">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[5].articleCode}"><img class="hairImg06" src=${articleList[5].imgFileList[0].filePath}/></a>
					</div>
					<div class="designerAtricleTitle06">
						${articleList[5].articleName}
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate07">
						${articleList[6].articleDate}
					</div>
					<div class="designerAtricleImg07">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[6].articleCode}"><img class="hairImg07" src=${articleList[6].imgFileList[0].filePath}/></a>
					</div>	
					<div class="designerAtricleTitle07">
						${articleList[6].articleName}
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate08">
						${articleList[7].articleDate}
					</div>
					<div class="designerAtricleImg08">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[7].articleCode}"><img class="hairImg08" src=${articleList[7].imgFileList[0].filePath}/></a>
					</div>		
					<div class="designerAtricleTitle08">
						${articleList[7].articleName}
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate09">
						${articleList[8].articleDate}
					</div>
					<div class="designerAtricleImg09">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[8].articleCode}"><img class="hairImg09" src=${articleList[8].imgFileList[0].filePath}/></a>
					</div>		
					<div class="designerAtricleTitle09">
						${articleList[8].articleName}
					</div>
				</div>
				<div class="col-md-2">
					<div class="articleDate10">
						${articleList[9].articleDate}
					</div>
					<div class="designerAtricleImg10">
						<a href="/phoenix/com/form/basicArticle?articleCode=${articleList[9].articleCode}"><img class="hairImg10" src=${articleList[9].imgFileList[0].filePath}/></a>
					</div>		
					<div class="designerAtricleTitle10">
						${articleList[9].articleName}
					</div>
				</div>
				<div  class="col-md-1">
				</div>
			</div>
			<br><br>		
			<div class="designerDiv">
				<c:choose>
					<c:when test="${articleList[0].currentPageNumber eq 1}" >
						
					</c:when>							
					<c:otherwise>
						<div class="previousDiv">
							<form class="previousForm">
								<input type="hidden" name="boardGroupCode" value="${articleList[0].boardGroupCode}">
								<input type="hidden" name="limitIndex" value="${articleList[0].limitIndex-10}">
								<input type="hidden" name="currentPageNumber" value="${articleList[0].currentPageNumber-1}">
								<input class="previous" type="button" value="이전">
							</form>
						</div>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${articleList[0].currentPageNumber eq articleList[0].totalPageNumber}" >
						
					</c:when>
					<c:otherwise>
						<div class="nextDiv">
							<form class="nextForm">
								<input type="hidden" name="boardGroupCode" value="${articleList[0].boardGroupCode}">
								<input type="hidden" name="limitIndex" value="${articleList[0].limitIndex+10}">
								<input type="hidden" name="currentPageNumber" value="${articleList[0].currentPageNumber+1}">
								<input class="next" type="button" value="다음">
							</form>
						</div>
					</c:otherwise>
				</c:choose>		
			</div>
		</c:when>
		<c:otherwise>
			<div class="insertingArticle">
				<a href="/phoenix/com/form/insertingBasicArticle?boardGroupCode=${articleList[0].boardGroupCode}">글쓰기</a>
			</div>
			<div class="basicBoardList">
				<table class="table table-bordered">
					<tr>
						<td class="centerCell">글번호</td>
						<td class="centerCell">글제목</td>
						<td class="centerCell">작성시간</td>
						<td class="centerCell">작성자</td>
					</tr>
					<c:forEach var="list" items="${articleList}">
						<tr>
							<td class="centerCell">${list.articleNumber}</td>
							<td><a href="/phoenix/com/form/basicArticle?articleCode=${list.articleCode}">${list.articleName}</a></td>
							<td class="centerCell">${list.articleDate}</td>
							<td class="centerCell">${list.userNickName}</td>					
						</tr>
					</c:forEach>
				</table>
				
				<br>
				
				<div>
					<c:choose>
						<c:when test="${articleList[0].currentPageNumber eq 1}" >
							
						</c:when>							
						<c:otherwise>
							<div class="previousDiv">
								<form class="previousForm">
									<input type="hidden" name="boardGroupCode" value="${articleList[0].boardGroupCode}">
									<input type="hidden" name="limitIndex" value="${articleList[0].limitIndex-10}">
									<input type="hidden" name="currentPageNumber" value="${articleList[0].currentPageNumber-1}">
									<input class="previous" type="button" value="이전">
								</form>
							</div>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${articleList[0].currentPageNumber eq articleList[0].totalPageNumber}" >
							
						</c:when>
						<c:otherwise>
							<div class="nextDiv">
								<form class="nextForm">
									<input type="hidden" name="boardGroupCode" value="${articleList[0].boardGroupCode}">
									<input type="hidden" name="limitIndex" value="${articleList[0].limitIndex+10}">
									<input type="hidden" name="currentPageNumber" value="${articleList[0].currentPageNumber+1}">
									<input class="next" type="button" value="다음">
								</form>
							</div>
						</c:otherwise>
					</c:choose>		
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>