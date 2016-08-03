<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table, tr, th, td {
		border : 1px solid #000000;
	}
	td {
		border-collapse: collapse;
	}
</style>
</head>
<body>

<c:import url="stockManagement.jsp"></c:import>

<hr>

<a href="/phoenix/crm/form/stockManagement/etcCostSetting">[기타지출항목설정]</a>
<a href="/phoenix/crm/form/stockManagement/etcCostTypeSetting">기타지출세부항목설정</a>

<h1>기타지출설정</h1>
<form action="/phoenix/crm/process/stockManagement/insertEtcCostItem" method="POST">
	
	<input type="submit" value="기타지출항목등록"/>
	
</form>

		<table>
			<tr>
				<td>지출일</td>
				<!-- 달력 date type -->
				<td><input class="" type="date" name=""></td>
			</tr>
			<tr>
				<td>지출항목</td>
				<td>
					<SELECT NAME= SIZE=1>
				        <OPTION VALUE=1>1번 보기입니다.</OPTION>
				        <OPTION VALUE=2>2번 보기입니다.</OPTION>
				        <OPTION VALUE=3>3번 보기입니다.</OPTION>
				        <OPTION VALUE=4>4번 보기입니다.</OPTION>
				    </SELECT>
				</td>
			</tr>
			<tr>
				<td>세부항목</td>
				<td>
					<SELECT NAME= SIZE=1>
				        <OPTION VALUE=1>1번 보기입니다.</OPTION>
				        <OPTION VALUE=2>2번 보기입니다.</OPTION>
				        <OPTION VALUE=3>3번 보기입니다.</OPTION>
				        <OPTION VALUE=4>4번 보기입니다.</OPTION>
				    </SELECT>
				</td>
			</tr>
			<tr>
				<td>지출금액</td>
				<td><input class="" type="text" name=""></td>
			</tr>
			<tr>
				<td>담당자</td>
				<td><input class="" type="text" name=""></td>
			</tr>
				<tr>
					<td>메모</td>
					<td><textarea class="" cols="30" rows="10" name=""></textarea></td>
				</tr>
			</table>



</body>
</html>