<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>etcCostLIst</title>
</head>
<!-- 
	1.기타 지출 내역
	2.기타 지줄 내역 검색 =>검색은 나중에
	3.기타 지출 내역 등록
 -->
 <!-- 수정중이예요 -->
<body>
	<div>
		<!-- 지출 -->
		<table>
			<tr>
				<td>
					<input type="button" value="검색">
					<input type="button" value="지출등록">
				</td>
			</tr>
		</table>
	</div>

	<form action="/phoenixooo/crm/form/etcCostList" method="post">
		<h1>지출등록</h1>
		<!-- 지출등록 -->
		<table>
			<tr>
				<td>지출일</td>
				<!-- 달력 date type -->
				<td><input class="" type="date" name=""></td>
			</tr>
		</table>
			<table>
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
		</table>
			<table>
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
		</table>
			<table>
			<tr>
				<td>지출금액</td>
				<td><input class="" type="text" name=""></td>
			</tr>
		</table>
			<table>
			<tr>
				<td>담당자</td>
				<td><input class="" type="text" name=""></td>
			</tr>
			</table>
				<table>
				<tr>
					<td>메모</td>
					<td><textarea class="" cols="30" rows="10" name=""></textarea></td>
				</tr>
			</table>
			<input class="" type="submit" value="등록">
		</form>	
</body>
</html>