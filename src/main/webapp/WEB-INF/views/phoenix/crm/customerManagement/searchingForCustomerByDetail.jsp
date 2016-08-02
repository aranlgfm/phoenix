<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table, tr, td {
		border : 1px solid #000000;
	}
	table {
		border-collapse: collapse;
	}
</style>
</head>
<body>

<h1>
	고객상세검색(은 일단..접어둡니다.)
</h1>

	<table>
		<tr>
			<td>최근방문</td>
			<td><input type="text"/></td>
			<td colspan="2">
				<select>
					<option value="2016">2016</option>
					<option value="2015">2015</option>
					<option value="2014">2014</option>
					<option value="2013">2013</option>
					<option value="2012">2012</option>
					<option value="2011">2011</option>
				</select>
				년
				<select>
					<option value="1">1</option>
					<option value="1">2</option>
					<option value="1">3</option>
					<option value="1">4</option>
					<option value="1">5</option>
					<option value="1">6</option>
					<option value="1">7</option>
					<option value="1">8</option>
					<option value="1">9</option>
					<option value="1">10</option>
					<option value="1">11</option>
					<option value="1">12</option>
				</select>
				월
				<select>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
				</select>
				일
			</td>
			<td>담당자</td>
			<td><input type="text"/></td>
			<td>연령</td>
			<td><input type="text"/></td>
			<td rowspan="3"><input type="button" value="검색"/></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type="text"/></td>
			<td>생일</td>
			<td><input type="text"/></td>
			<td>기념일</td>
			<td><input type="text"/></td>
			<td>회원명</td>
			<td><input type="text"/></td>
		</tr>
		<tr>
			<td>방문횟수</td>
			<td><input type="text"/></td>
			<td>매출금액</td>
			<td><input type="text"/></td>
			<td>주소</td>
			<td><input type="text"/></td>
			<td>메모</td>
			<td><input type="text"/></td>
		</tr>
	</table>

</body>
</html>